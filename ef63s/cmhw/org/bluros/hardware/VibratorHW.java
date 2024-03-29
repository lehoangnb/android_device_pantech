/*
 * Copyright (C) 2013 The MoKee OpenSource Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.bluros.hardware;

import org.bluros.hardware.util.FileUtils;

public class VibratorHW {

    private static String AMP_PATH = "/sys/class/timed_output/vibrator/vtg_level";

    public static boolean isSupported() {
        return true;
    }

    public static int getMaxIntensity()  {
        return 128;
    }
    public static int getMinIntensity()  {
        return 0;
    }
    public static int getWarningThreshold()  {
        return -1;
    }
    public static int getCurIntensity()  {
        return Integer.parseInt(FileUtils.readOneLine(AMP_PATH));
    }
    public static int getDefaultIntensity()  {
        return 30;
    }
    public static boolean setIntensity(int intensity)  {
        return FileUtils.writeLine(AMP_PATH, String.valueOf(intensity));
    }
}


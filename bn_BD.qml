/*
 * Copyright (C) 2016 Jolla ltd and/or its subsiry(-ies). All rights reserved.
 *
 * Contact: Pekka Vuorela <pekka.vuorela@jollamobile.com>
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list
 * of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list
 * of conditions and the following disclaimer in the documentation and/or other materials
 * provided with the distribution.
 * Neither the name of Jolla Ltd nor the names of its contributors may be
 * used to endorse or promote products derived from this software without specific
 * prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL
 * THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

import QtQuick 2.0
import com.jolla.keyboard 1.0
import ".."

KeyboardLayout {
    type: "bengali"
    capsLockSupported: false
    splitSupported: true

    KeyboardRow {
        SmallCharacterKey { caption: "দ"; captionShifted: "ধ"; symView: "১"; symView2: "~" }
        SmallCharacterKey { caption: "ূ"; captionShifted: "ঊ"; symView: "২"; symView2: "`"}
        SmallCharacterKey { caption: "ী"; captionShifted: "ঈ"; symView: "৩"; symView2: "|" }
        SmallCharacterKey { caption: "র"; captionShifted: "ড়"; symView: "৪"; symView2: "•" }
        SmallCharacterKey { caption: "ট"; captionShifted: "ঠ"; symView: "৫"; symView2: "√" }
        SmallCharacterKey { caption: "এ"; captionShifted: "ঐ"; symView: "৬"; symView2: "π" }
        SmallCharacterKey { caption: "ু"; captionShifted: "উ"; symView: "৭"; symView2: "÷" }
        SmallCharacterKey { caption: "ি"; captionShifted: "ই"; symView: "৮"; symView2: "×" }
        SmallCharacterKey { caption: "ও"; captionShifted: "ঔ"; symView: "৯"; symView2: "¶" }
        SmallCharacterKey { caption: "প"; captionShifted: "ফ"; symView: "০"; symView2: "∆" }
        SmallCharacterKey { caption: "ে"; captionShifted: "ৈ"; symView: "%"; symView2: "‰" }
    }
    KeyboardRow {
        SmallCharacterKey { caption: "া"; captionShifted: "অ"; symView: "@"; symView2: "£" }
        SmallCharacterKey { caption: "স"; captionShifted: "ষ"; symView: "#"; symView2: "€" }
        SmallCharacterKey { caption: "ড"; captionShifted: "ঢ"; symView: "৳"; symView2: "$" }
        SmallCharacterKey { caption: "ত"; captionShifted: "থ"; symView: "%"; symView2: "¢" }
        SmallCharacterKey { caption: "গ"; captionShifted: "ঘ"; symView: "&"; symView2: "^" }
        SmallCharacterKey { caption: "হ"; captionShifted: "ঃ"; symView: "-"; symView2: "°" }
        SmallCharacterKey { caption: "জ"; captionShifted: "ঝ"; symView: "+"; symView2: "=" }
        SmallCharacterKey { caption: "ক"; captionShifted: "খ"; symView: "("; symView2: "{" }
        SmallCharacterKey { caption: "ল"; captionShifted: "ং"; symView: ")"; symView2: "}" }
        SmallCharacterKey { caption: "ো"; captionShifted: "ৌ"; symView: ""; symView2: "" }
        SmallCharacterKey { caption: "ঞ"; captionShifted: "ৎ"; symView: ""; symView2: "" }
    }
    KeyboardRow {
        ShiftKey {}

        SmallCharacterKey { caption: "য়"; captionShifted: "য"; symView: "*"; symView2: "\\" }
        SmallCharacterKey { caption: "শ"; captionShifted: "ঢ়"; symView: "\""; symView2: "©" }
        SmallCharacterKey { caption: "চ"; captionShifted: "ছ"; symView: "\'"; symView2: "®" }
        SmallCharacterKey { caption: "আ"; captionShifted: "ঋ"; symView: ":"; symView2: "™" }
        SmallCharacterKey { caption: "ব"; captionShifted: "ভ"; symView: ";"; symView2: "℅" }
        SmallCharacterKey { caption: "ন"; captionShifted: "ণ"; symView: "!"; symView2: "[" }
        SmallCharacterKey { caption: "ম"; captionShifted: "ঙ"; symView: "?"; symView2: "]" }
        SmallCharacterKey { caption: "ৃ"; captionShifted: "ঁ"; symView: "X"; symView2: "X" }

        BackspaceKey {}
    }
    KeyboardRow {
        splitIndex: 4

        SymbolKey {
            implicitWidth: symbolKeyWidthNarrow
            symbolCaption: "অআই"
        }
        SmallCharacterKey {
            caption: "্"
            captionShifted: "‌"
            symView: ""
            symView2: ""
            implicitWidth: punctuationKeyWidth
            fixedWidth: !splitActive
        }
        SpacebarKey {}
        SpacebarKey {
            active: splitActive
            languageLabel: "প্রভাত"
        }
        SmallCharacterKey {
            caption: ","
            captionShifted: "!"
            symView: ","
            symView2: "!"
            separator: SeparatorState.HiddenSeparator
        }
        SmallCharacterKey {
            caption: "।"
            captionShifted: "?"
            symView: "।"
            symView2: "?"
            implicitWidth: punctuationKeyWidth
            fixedWidth: !splitActive
            separator: SeparatorState.HiddenSeparator
        }
        EnterKey {}
    }
}

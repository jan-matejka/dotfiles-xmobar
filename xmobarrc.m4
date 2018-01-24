Config  { font = "xft:Dejavu Sans Mono:pixelsize=12"
        , bgColor = "BG"
        , fgColor = "FG"
        , position = TopW L 95
        , lowerOnStart = True
        , commands = [
            Run Weather "LKPR" [
                "-t","<fc=LABEL><station></fc>: <tempC>C"
                , "-L", "18", "-H", "25"
                , STD_VAL_COL
                ] 9000

            , Run Network "eth0" [
                "-t", "NETWORK_TPL"
                , "-L", "0", "-H", "32"
                , STD_VAL_COL
                ] 10

            , Run Network "eth1" [
                "-t", "NETWORK_TPL"
                , "-L", "0", "-H", "32"
                , STD_VAL_COL
                ] 10

            , Run Cpu [
                "-t", "<fc=LABEL>cpu</fc>: <total>%"
                , "-L", "3", "-H", "50"
                , STD_VAL_COL
                ] 10

            , Run Memory ["-t","<fc=LABEL>mem</fc>: <usedratio>%"] 10

            , Run Swap [
                "-t", "<fc=LABEL>swap</fc>: <usedratio>%"
                ] 10

            , Run Date "%a %b %d %Y <fc=VAL_TIME>%H:%M:%S</fc>" "date"
                10

            , Run BatteryP ["BATT_NAME"] [
                "-t", "<left>% <timeleft>∆"
                , "-L", "10", "-H", "80"
                , STD_VAL_COL
                , "--"
                , "-O", "<fc=VAL_ON>On</fc>"
                , "-o", "<fc=VAL_OFF>Off</fc>"
                ] 300
        ]
        , sepChar = "%"
        , alignSep = "}{"
        , template = "%LKPR% | Batt: %battery% } %cpu% | %memory% | %swap% | %eth0% %eth1% { %date%"
        -- TODO: add unread mails, irc?
        }

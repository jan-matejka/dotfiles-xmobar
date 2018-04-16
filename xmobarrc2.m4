Config  { font = "xft:Dejavu Sans Mono:pixelsize=12"
        , bgColor = "BG"
        , fgColor = "FG"
        , position = Static {
             xpos = 0, ypos = 14, width=1365, height=15 }
        , lowerOnStart = False
        -- width=total -1 as total affects the second head
        , commands = [
            Run TopProc [
                "-t", "<fc=LABEL>cpu</fc>: <both1> <both2> <fc=#A0A0f0>mem</fc>: <mboth1> <mboth2>"
                -- FIXME: the second LABEL for mem does not expand
                , "-M", "20"
                ] 10

--            -- TODO: this doesn't because it can't access mapper/root blockdevice
--            , Run DiskU [
--                ("sdb5", "DISK_TPL")
--                , ("/home", "DISK_TPL")
--                ] [
--                "-L", "20", "-H", "50"
--                , STD_VAL_COL
--                ] 20


--            -- TODO: same as DiskU
--            , Run DiskIO [("sda", "<total>")] [] 10
            ]

        , sepChar = "%"
        , alignSep = "}{"
        , template = "%top% }{ %XMonadLog% "
        }

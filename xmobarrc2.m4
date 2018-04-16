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

            , Run DiskU
                [("/", "free: <free>")]
                ["-L", "20", "-H", "200", INV_VAL_COL]
                20

            --  DiskIO shows nonsense values
            -- with:
            --    % dd if=/dev/zero of=foobar bs=4M count=2500
            --    10485760000 bytes (10 GB, 9.8 GiB) copied, 11.6793 s, 898 MB/s
            -- diskio write never went above 30M *shrug*
            -- , Run DiskIO [("/", "io: r: <read> w: <write>")] [STD_VAL_COL] 10
          ]
        , sepChar = "%"
        , alignSep = "}{"
        , template = "%top% }{ <fc=LABEL>disk</fc>: %disku%"
        }

define(VAL_TIME,defn(`GCP_MGREEN'))dnl
define(VAL_L,defn(`GCP_OM2'))dnl
define(VAL_N,defn(`GCP_MGREEN'))dnl
define(VAL_H,defn(`GCP_MRED'))dnl
define(STD_VAL_COL,`"-l","'defn(`VAL_L')`","-n", "'defn(`VAL_N')`", "-h", "'defn(`VAL_H')`"')dnl
define(INV_VAL_COL,`"-l","'defn(`VAL_H')`","-n", "'defn(`VAL_N')`", "-h", "'defn(`VAL_L')`"')dnl
define(FG,defn(`GCP_OGR5'))dnl
define(BG,black)dnl
define(VAL_ON,defn(`VAL_N'))dnl
define(VAL_OFF,defn(`VAL_H'))dnl
define(LABEL,defn(`GCP_MPURPLE3'))dnl
define(NETWORK_TPL,`<fc='defn(`LABEL')`><dev></fc>: tx:<tx> rx:<rx>')dnl
define(DISK_TPL,`<free> <freebar>')dnl

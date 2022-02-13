static const char norm_fg[] = "#d7dcd5";
static const char norm_bg[] = "#0f1913";
static const char norm_border[] = "#969a95";

static const char sel_fg[] = "#d7dcd5";
static const char sel_bg[] = "#A59948";
static const char sel_border[] = "#d7dcd5";

static const char urg_fg[] = "#d7dcd5";
static const char urg_bg[] = "#4B8871";
static const char urg_border[] = "#4B8871";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};


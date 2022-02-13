const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0f1913", /* black   */
  [1] = "#4B8871", /* red     */
  [2] = "#A59948", /* green   */
  [3] = "#2F7787", /* yellow  */
  [4] = "#269897", /* blue    */
  [5] = "#5E9B9C", /* magenta */
  [6] = "#67BDD0", /* cyan    */
  [7] = "#d7dcd5", /* white   */

  /* 8 bright colors */
  [8]  = "#969a95",  /* black   */
  [9]  = "#4B8871",  /* red     */
  [10] = "#A59948", /* green   */
  [11] = "#2F7787", /* yellow  */
  [12] = "#269897", /* blue    */
  [13] = "#5E9B9C", /* magenta */
  [14] = "#67BDD0", /* cyan    */
  [15] = "#d7dcd5", /* white   */

  /* special colors */
  [256] = "#0f1913", /* background */
  [257] = "#d7dcd5", /* foreground */
  [258] = "#d7dcd5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

# shellescape returns the string escaped so that it can be used in a shell command
function shellescape(s) {
    gsub(/'/, "'\\''", s);

    return "'" s "'";
}

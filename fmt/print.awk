@include "strings/capitalize.awk"
@include "math/is_num.awk"

# die puts msg to stderr
function die(msg) {
    printf("%s%s: %s%s\n", colour("Red"), ARGV[0], msg, colour("None")) >"/dev/stderr"
    exit 1
}

function name_to_number(name, predefined) {
    if (is_num(name))
        return name;

    if (name in predefined)
        return predefined[name];

    return name;
}

function colour(v1, v2, v3) {
    v1 = capitalize(v1)
    v2 = capitalize(v2)
    v3 = capitalize(v3)

    fgcolours["None"] = 0;
    fgcolours["Black"] = 30;
    fgcolours["Red"] = 31;
    fgcolours["Green"] = 32;
    fgcolours["Yellow"] = 33;
    fgcolours["Blue"] = 34;
    fgcolours["Magenta"] = 35;
    fgcolours["Cyan"] = 36;
    fgcolours["White"] = 37;

    bgcolours["None"] = 0;
    bgcolours["Black"] = 40;
    bgcolours["Red"] = 41;
    bgcolours["Green"] = 42;
    bgcolours["Yellow"] = 43;
    bgcolours["Blue"] = 44;
    bgcolours["Magenta"] = 45;
    bgcolours["Cyan"] = 46;
    bgcolours["White"] = 47;

    attributes["None"] = 0;
    attributes["Bold"] = 1;
    attributes["Underscore"] = 4;
    attributes["Blink"] = 5;
    attributes["ReverseVideo"] = 7;
    attributes["Concealed"] = 8;

    if (v3 == "" && v2 == "" && v1 == "") {
        return
    }

    if (v3 == "" && v2 == "")
        return sprintf("%c[%dm", 27, name_to_number(v1, fgcolours));
    else if (v3 == "")
        return sprintf("%c[%d;%dm", 27, name_to_number(v1, bgcolours), name_to_number(v2, fgcolours));
    else
        return sprintf("%c[%d;%d;%dm", 27, name_to_number(v1, attributes), name_to_number(v2, bgcolours), name_to_number(v3, fgcolours));
}

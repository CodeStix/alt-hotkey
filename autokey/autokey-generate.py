import os
import sys
import json
from shutil import copyfile

OUTPUT_DIR = " ".join(sys.argv[1:])
TEMPLATE_FILE = os.path.join(os.getcwd(), "template.json")


def createHotKey(keysString, resultingKeysString):
    spl = keysString.split("+")
    modifiers = []
    key = None
    for i in range(len(spl)):
        sp = spl[i]
        if sp in ["<alt>",  "<ctrl>", "<hyper>", "<meta>", "<shift>", "<super>", "<alt_gr>"]:
            modifiers.append(sp)
        else:
            key = sp

    if not key:
        raise Exception("No key was specified")

    file_name = "".join(c for c in keysString if c not in "+<>/")
    config_file_name = os.path.join(OUTPUT_DIR, "" + file_name + ".json")
    print("config_file_name", config_file_name)
    copyfile(TEMPLATE_FILE, config_file_name)
    config_file = open(config_file_name, "r+")
    config = json.load(config_file)

    config["description"] = file_name
    config["hotkey"]["modifiers"] = modifiers
    config["hotkey"]["hotKey"] = key

    config_file.seek(0)
    json.dump(config, config_file)
    config_file.truncate()
    config_file.close()

    shortcut_file_name = os.path.join(OUTPUT_DIR, file_name + ".txt")
    print("shortcut_file_name", shortcut_file_name)
    shortcut_file = open(shortcut_file_name, "w")
    shortcut_file.write(resultingKeysString)
    shortcut_file.close()

createHotKey("<alt>+x", "<ctrl>+x")
createHotKey("<alt>+c", "<ctrl>+c")
createHotKey("<alt>+v", "<ctrl>+v")
createHotKey("<alt>+a", "<ctrl>+a")
createHotKey("<alt>+e", "<escape>")

createHotKey("<alt>+t", "<f12>")
createHotKey("<alt>+<shift>+t", "<shift>+<f12>")

createHotKey("<alt>+s", "<delete>")
createHotKey("<alt>+<shift>+s", "<backspace>")

createHotKey("<alt>+z", "<ctrl>+z")
createHotKey("<alt>+<shift>+z", "<ctrl>+y")

createHotKey("<alt>+d", "<ctrl>+d")
createHotKey("<alt>+<shift>+d", "<shift>+<escape>")

createHotKey("<alt>+i", "<up>")
createHotKey("<alt>+j", "<left>")
createHotKey("<alt>+k", "<down>")
createHotKey("<alt>+l", "<right>")
createHotKey("<alt>+o", "<end>")
createHotKey("<alt>+u", "<home>")
createHotKey("<alt>+;", "<ctrl>+<right>")
createHotKey("<alt>+h", "<ctrl>+<left>")

createHotKey("<alt>+<shift>+i", "<shift>+<up>")
createHotKey("<alt>+<shift>+j", "<shift>+<left>")
createHotKey("<alt>+<shift>+k", "<shift>+<down>")
createHotKey("<alt>+<shift>+l", "<shift>+<right>")
createHotKey("<alt>+<shift>+o", "<shift>+<end>")
createHotKey("<alt>+<shift>+u", "<shift>+<home>")
createHotKey("<alt>+<shift>+;", "<ctrl>+<shift>+<right>")
createHotKey("<alt>+<shift>+h", "<ctrl>+<shift>+<left>")

createHotKey("<alt>+9", "<up><up><up><up><up><up><up><up>")
createHotKey("<alt>+,", "<down><down><down><down><down><down><down><down>")
createHotKey("<alt>+<shift>+9",
             "<shift>+<up><shift>+<up><shift>+<up><shift>+<up><shift>+<up><shift>+<up><shift>+<up><shift>+<up>")
createHotKey("<alt>+<shift>+,",
             "<shift>+<down><shift>+<down><shift>+<down><shift>+<down><shift>+<down><shift>+<down><shift>+<down><shift>+<down>")

createHotKey("<alt_gr>+9", "<page_up>")
createHotKey("<alt_gr>+,", "<page_down>")
createHotKey("<alt_gr>+<shift>+9", "<shift>+<page_up>")
createHotKey("<alt_gr>+<shift>+,", "<shift>+<page_down>")

createHotKey("<alt_gr>+i", "<alt>+<up>")
createHotKey("<alt_gr>+k", "<alt>+<down>")

createHotKey("<alt>+'",
             "<home><home><shift>+<end><backspace>a<backspace>")
createHotKey("<alt>+<shift>+'",
             "<home><home><shift>+<end><ctrl>+c<end><enter><ctrl>+v")

createHotKey("<alt>+<enter>", "<end><enter>")
createHotKey("<alt>+<shift>+<enter>", "<home><enter><up>")

createHotKey("<alt>+<backspace>", "<ctrl>+<backspace>")
createHotKey("<alt>+.", "<ctrl>+.")
createHotKey("<alt>+/", "<ctrl>+/")
import json
import os
from shutil import copyfile
import sys

OUTPUT_DIR = " ".join(sys.argv[1:])
TEMPLATE_FILE = os.path.join(os.getcwd(), "template.json")


def createHotKey(keysString, resultingKeysString):
    spl = keysString.split("+")
    modifiers = []
    key = None
    for i in range(len(spl)):
        sp = spl[i]
        if sp in ["<alt>",  "<ctrl>", "<hyper>", "<meta>", "<shift>", "<super>"]:
            modifiers.append(sp)
        else:
            key = sp

    if not key:
        raise Exception("No key was specified")

    file_name = "".join(c for c in keysString if c not in "+<>")
    config_file_name = os.path.join(OUTPUT_DIR, "." + file_name + ".json")
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


createHotKey("<alt>+i", "<up>")
createHotKey("<alt>+j", "<left>")
createHotKey("<alt>+k", "<down>")
createHotKey("<alt>+l", "<right>")
createHotKey("<alt>+o", "<end>")
createHotKey("<alt>+u", "<home>")
createHotKey("<alt>+<shift>+i", "<shift>+<up>")
createHotKey("<alt>+<shift>+j", "<shift>+<left>")
createHotKey("<alt>+<shift>+k", "<shift>+<down>")
createHotKey("<alt>+<shift>+l", "<shift>+<right>")
createHotKey("<alt>+<shift>+o", "<shift>+<end>")
createHotKey("<alt>+<shift>+u", "<shift>+<home>")
createHotKey("<alt>+<ctrl>+i", "<alt>+<up>")
createHotKey("<alt>+<ctrl>+j", "<ctrl>+<left>")
createHotKey("<alt>+<ctrl>+k", "<alt>+<down>")
createHotKey("<alt>+<ctrl>+l", "<ctrl>+<right>")
createHotKey("<alt>+<ctrl>+o", "<shift>+<end>")
createHotKey("<alt>+<ctrl>+u", "<shift>+<home>")
createHotKey("<alt>+<shift>+<ctrl>+i", "<ctrl>+<shift>+<up>")
createHotKey("<alt>+<shift>+<ctrl>+j", "<ctrl>+<shift>+<left>")
createHotKey("<alt>+<shift>+<ctrl>+k", "<ctrl>+<shift>+<down>")
createHotKey("<alt>+<shift>+<ctrl>+l", "<ctrl>+<shift>+<right>")
createHotKey("<alt>+<shift>+<ctrl>+o", "<shift>+<end>")
createHotKey("<alt>+<shift>+<ctrl>+u", "<shift>+<home>")

createHotKey("<alt>+9", "<up><up><up><up><up><up><up><up>")
createHotKey("<alt>+,", "<down><down><down><down><down><down><down><down>")
createHotKey("<alt>+<ctrl>+9", "<page_up>")
createHotKey("<alt>+<ctrl>+,", "<page_down>")
createHotKey("<alt>+<shift>+9",
             "<shift>+<up><shift>+<up><shift>+<up><shift>+<up><shift>+<up><shift>+<up><shift>+<up><shift>+<up>")
createHotKey("<alt>+<shift>+,",
             "<shift>+<down><shift>+<down><shift>+<down><shift>+<down><shift>+<down><shift>+<down><shift>+<down><shift>+<down>")
createHotKey("<alt>+<shift>+<ctrl>+9", "<shift>+<page_up>")
createHotKey("<alt>+<shift>+<ctrl>+,", "<shift>+<page_down>")

createHotKey("<alt>+h", "<home><home><shift>+<end>")
createHotKey("<alt>+<ctrl>+<shift>+h",
             "<home><home><shift>+<end>a<backspace>")
createHotKey("<alt>+<shift>+h",
             "<home><home><shift>+<end>a<backspace><backspace>")
createHotKey("<alt>+<ctrl>+h",
             "<home><home><shift>+<end><ctrl>+c<end><enter><ctrl>+v")

createHotKey("<alt>+<enter>", "<end><enter>")
createHotKey("<alt>+<ctrl>+<enter>", "<home><enter><up>")
createHotKey("<alt>+<shift>+<enter>", "<home><enter><up>")
createHotKey("<alt>+<shift>+<ctrl>+<enter>", "<home><enter><up>")

createHotKey("<alt>+s", "<delete>")

createHotKey("<alt>+<backspace>", "<ctrl>+<backspace>")
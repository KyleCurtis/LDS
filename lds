#!/bin/bash
#                               _     ____  ____
#                              | |   |  _ \/ ___|
#                              | |   | | | \___ \
#                              | |___| |_| |___) |
#                              |_____|____/|____/
# ==============================================================================
#                     (L)anguage (D)ocumentation (S)cript
#
# Language-X
# https://github.com/Langauge-X/LDS/issues  <-- Link is currently WIP (not active)
# ==============================================================================

# USER CONFIG
# ==============================================================================
# NUMBER OF SPACES PER TAB FOR CODE OUTPUT (DEFAULT: "4")
TAB_SIZE="4"

# SYNTAX HIGHLIGHTING THEME (DEFAULT: "1337")
BAT_THEME="1337"

# OTHER THEMES:
# MORE INFO: https://github.com/sharkdp/bat
# -----------------------------------------
# 1337
# Coldark-Cold
# Coldark-Dark
# DarkNeon
# Dracula
# GitHub
# Monokai Extended
# Monokai Extended Bright
# Monokai Extended Light
# Monokai Extended Origin
# Nord
# OneHalfDark
# OneHalfLight
# Solarized (dark)
# Solarized (light)
# Sublime Snazzy
# TwoDark
# Visual Studio Dark+
# ansi
# base16
# base16-256
# gruvbox-dark
# gruvbox-light
# zenburn

# DEFAULT ARGUMENTS FOR BAT OUTPUT
BAT_ARGS="--tabs ${TAB_SIZE} --style=numbers --paging=always --color=always  --theme=${BAT_THEME}"

# ==============================================================================
# SCRIPT CONFIGURATION
# ==============================================================================
# GET THE BASH PROCESS ID
ProcessID=$(echo $$)

# GET SCRIPT NAME INFORMATION
ScriptName=$(basename $0) # WITH ".SH"
ScriptNameRaw=$(basename $0 | sed 's/.sh//g') # WITHOUT ".SH" (FOR TEMP FILES)

# GET THE DIRECTORY THAT THE SCRIPT LIES IN
ScriptDir="$( cd "$( dirname "$0" )" && pwd )"

# GET THE DISTRO NAME (FOR LINUX; MAC SUPPORT MIGHT COME LATER)
DistroName=$(lsb_release -i | awk '{ for(i=3; i<=NF; ++i) printf $i""FS; print "" }'| sed 's/ *$//')

# ==============================================================================
# XTERM 256 COLOR VARIABLES
# ==============================================================================
SystemBlack="\e[38;5;0m" #000
SystemMaroon="\e[38;5;1m" #001
SystemGreen="\e[38;5;2m" #002
SystemOlive="\e[38;5;3m" #003
SystemNavy="\e[38;5;4m" #004
SystemPurple="\e[38;5;5m" #005
SystemTeal="\e[38;5;6m" #006
SystemSilver="\e[38;5;7m" #007
SystemGrey="\e[38;5;8m" #008
SystemRed="\e[38;5;9m" #009
SystemLime="\e[38;5;10m" #010
SystemYellow="\e[38;5;11m" #011
SystemBlue="\e[38;5;12m" #012
SystemFuchsia="\e[38;5;13m" #013
SystemAqua="\e[38;5;14m" #014
SystemWhite="\e[38;5;15m" #015

# OTHER COLORS (16-255)
Black="\e[38;5;16m" #016
NavyBlue="\e[38;5;17m" #017
DarkBlue="\e[38;5;18m" #018
Blue3="\e[38;5;19m" #019
Blue2="\e[38;5;20m" #020
Blue1="\e[38;5;21m" #021
DarkGreen="\e[38;5;22m" #022
DeepSkyBlue7="\e[38;5;23m" #023
DeepSkyBlue6="\e[38;5;24m" #024
DeepSkyBlue5="\e[38;5;25m" #025
DodgerBlue3="\e[38;5;26m" #026
DodgerBlue2="\e[38;5;27m" #027
Green4="\e[38;5;28m" #028
SpringGreen6="\e[38;5;29m" #029
Turquoise2="\e[38;5;30m" #030
DeepSkyBlue4="\e[38;5;31m" #031
DeepSkyBlue3="\e[38;5;32m" #032
DodgerBlue1="\e[38;5;33m" #033
Green3="\e[38;5;34m" #034
SpringGreen5="\e[38;5;35m" #035
DarkCyan="\e[38;5;36m" #036
LightSeaGreen="\e[38;5;37m" #037
DeepSkyBlue2="\e[38;5;38m" #038
DeepSkyBlue1="\e[38;5;39m" #039
Green2="\e[38;5;40m" #040
SpringGreen4="\e[38;5;41m" #041
SpringGreen3="\e[38;5;42m" #042
Cyan3="\e[38;5;43m" #043
DarkTurquoise="\e[38;5;44m" #044
Turquoise1="\e[38;5;45m" #045
Green1="\e[38;5;46m" #046
SpringGreen2="\e[38;5;47m" #047
SpringGreen1="\e[38;5;48m" #048
MediumSpringGreen="\e[38;5;49m" #049
Cyan2="\e[38;5;50m" #050
Cyan1="\e[38;5;51m" #051
DarkRed2="\e[38;5;52m" #052
DeepPink8="\e[38;5;53m" #053
Purple5="\e[38;5;54m" #054
Purple4="\e[38;5;55m" #055
Purple3="\e[38;5;56m" #056
BlueViolet="\e[38;5;57m" #057
Orange4="\e[38;5;58m" #058
Grey30="\e[38;5;59m" #059
MediumPurple7="\e[38;5;60m" #060
SlateBlue3="\e[38;5;61m" #061
SlateBlue2="\e[38;5;62m" #062
RoyalBlue="\e[38;5;63m" #063
Chartreuse6="\e[38;5;64m" #064
DarkSeaGreen9="\e[38;5;65m" #065
PaleTurquoise2="\e[38;5;66m" #066
SteelBlue4="\e[38;5;67m" #067
SteelBlue3="\e[38;5;68m" #068
CornFlowerBlue="\e[38;5;69m" #069
Chartreuse5="\e[38;5;70m" #070
DarkSeaGreen8="\e[38;5;71m" #071
CadetBlue2="\e[38;5;72m" #072
CadetBlue1="\e[38;5;73m" #073
SkyBlue3="\e[38;5;74m" #074
SteelBlue2="\e[38;5;75m" #075
Chartreuse4="\e[38;5;76m" #076
PaleGreen4="\e[38;5;77m" #077
SeaGreen4="\e[38;5;78m" #078
Aquamarine3="\e[38;5;79m" #079
MediumTurquoise="\e[38;5;80m" #080
SteelBlue1="\e[38;5;81m" #081
Chartreuse3="\e[38;5;82m" #082
SeaGreen3="\e[38;5;83m" #083
SeaGreen2="\e[38;5;84m" #084
SeaGreen1="\e[38;5;85m" #085
Aquamarine2="\e[38;5;86m" #086
DarkSlateGray3="\e[38;5;87m" #087
DarkRed1="\e[38;5;88m" #088
DeepPink7="\e[38;5;89m" #089
DarkMagenta2="\e[38;5;90m" #090
DarkMagenta1="\e[38;5;91m" #091
DarkViolet2="\e[38;5;92m" #092
Purple2="\e[38;5;93m" #093
Orange3="\e[38;5;94m" #094
LightPink3="\e[38;5;95m" #095
Plum4="\e[38;5;96m" #096
MediumPurple6="\e[38;5;97m" #097
MediumPurple5="\e[38;5;98m" #098
SlateBlue1="\e[38;5;99m" #099
Yellow6="\e[38;5;100m" #100
Wheat2="\e[38;5;101m" #101
Grey29="\e[38;5;102m" #102
LightSlateGrey="\e[38;5;103m" #103
MediumPurple4="\e[38;5;104m" #104
LightSlateBlue="\e[38;5;105m" #105
Yellow5="\e[38;5;106m" #106
DarkOliveGreen6="\e[38;5;107m" #107
DarkSeaGreen7="\e[38;5;108m" #108
LightSkyBlue3="\e[38;5;109m" #109
LightSkyBlue2="\e[38;5;110m" #110
SkyBlue2="\e[38;5;111m" #111
Chartreuse2="\e[38;5;112m" #112
DarkOliveGreen5="\e[38;5;113m" #113
PaleGreen3="\e[38;5;114m" #114
DarkSeaGreen6="\e[38;5;115m" #115
DarkSlateGray2="\e[38;5;116m" #116
SkyBlue1="\e[38;5;117m" #117
Chartreuse1="\e[38;5;118m" #118
LightGreen2="\e[38;5;119m" #119
LightGreen1="\e[38;5;120m" #120
PaleGreen2="\e[38;5;121m" #121
Aquamarine1="\e[38;5;122m" #122
DarkSlateGray1="\e[38;5;123m" #123
Red3="\e[38;5;124m" #124
DeepPink6="\e[38;5;125m" #125
MediumVioletRed="\e[38;5;126m" #126
Magenta6="\e[38;5;127m" #127
DarkViolet1="\e[38;5;128m" #128
Purple1="\e[38;5;129m" #129
DarkOrange3="\e[38;5;130m" #130
IndianRed4="\e[38;5;131m" #131
HotPink5="\e[38;5;132m" #132
MediumOrchid4="\e[38;5;133m" #133
MediumOrchid3="\e[38;5;134m" #134
MediumPurple3="\e[38;5;135m" #135
DarkGoldenrod="\e[38;5;136m" #136
LightSalmon3="\e[38;5;137m" #137
RosyBrown="\e[38;5;138m" #138
Grey28="\e[38;5;139m" #139
MediumPurple2="\e[38;5;140m" #140
MediumPurple1="\e[38;5;141m" #141
Gold3="\e[38;5;142m" #142
DarkKhaki="\e[38;5;143m" #143
NavajoWhite2="\e[38;5;144m" #144
Grey27="\e[38;5;145m" #145
LightSteelBlue3="\e[38;5;146m" #146
LightSteelBlue2="\e[38;5;147m" #147
Yellow4="\e[38;5;148m" #148
DarkOliveGreen4="\e[38;5;149m" #149
DarkSeaGreen5="\e[38;5;150m" #150
DarkSeaGreen4="\e[38;5;151m" #151
LightCyan2="\e[38;5;152m" #152
LightSkyBlue1="\e[38;5;153m" #153
Greenyellow="\e[38;5;154m" #154
DarkOliveGreen3="\e[38;5;155m" #155
PaleGreen1="\e[38;5;156m" #156
DarkSeaGreen3="\e[38;5;157m" #157
DarkSeaGreen2="\e[38;5;158m" #158
PaleTurquoise1="\e[38;5;159m" #159
Red2="\e[38;5;160m" #160
DeepPink5="\e[38;5;161m" #161
DeepPink4="\e[38;5;162m" #162
Magenta5="\e[38;5;163m" #163
Magenta4="\e[38;5;164m" #164
Magenta3="\e[38;5;165m" #165
DarkOrange2="\e[38;5;166m" #166
IndianRed3="\e[38;5;167m" #167
HotPink4="\e[38;5;168m" #168
HotPink3="\e[38;5;169m" #169
Orchid3="\e[38;5;170m" #170
MediumOrchid2="\e[38;5;171m" #171
Orange2="\e[38;5;172m" #172
LightSalmon2="\e[38;5;173m" #173
LightPink2="\e[38;5;174m" #174
Pink2="\e[38;5;175m" #175
Plum3="\e[38;5;176m" #176
Violet="\e[38;5;177m" #177
Gold2="\e[38;5;178m" #178
LightGoldenrod5="\e[38;5;179m" #179
Tan="\e[38;5;180m" #180
MistyRose2="\e[38;5;181m" #181
Thistle2="\e[38;5;182m" #182
Plum2="\e[38;5;183m" #183
Yellow3="\e[38;5;184m" #184
Khaki2="\e[38;5;185m" #185
LightGoldenrod4="\e[38;5;186m" #186
LightYellow="\e[38;5;187m" #187
Grey26="\e[38;5;188m" #188
LightSteelBlue1="\e[38;5;189m" #189
Yellow2="\e[38;5;190m" #190
DarkOliveGreen2="\e[38;5;191m" #191
DarkOliveGreen1="\e[38;5;192m" #192
DarkSeaGreen1="\e[38;5;193m" #193
HoneyDew="\e[38;5;194m" #194
LightCyan1="\e[38;5;195m" #195
Red1="\e[38;5;196m" #196
DeepPink3="\e[38;5;197m" #197
DeepPink2="\e[38;5;198m" #198
DeepPink1="\e[38;5;199m" #199
Magenta2="\e[38;5;200m" #200
Magenta1="\e[38;5;201m" #201
OrangeRed="\e[38;5;202m" #202
IndianRed2="\e[38;5;203m" #203
IndianRed1="\e[38;5;204m" #204
HotPink2="\e[38;5;205m" #205
HotPink1="\e[38;5;206m" #206
MediumOrchid1="\e[38;5;207m" #207
DarkOrange1="\e[38;5;208m" #208
Salmon="\e[38;5;209m" #209
LightCoral="\e[38;5;210m" #210
PaleVioletRed="\e[38;5;211m" #211
Orchid2="\e[38;5;212m" #212
Orchid1="\e[38;5;213m" #213
Orange1="\e[38;5;214m" #214
SandyBrown="\e[38;5;215m" #215
LightSalmon1="\e[38;5;216m" #216
LightPink1="\e[38;5;217m" #217
Pink1="\e[38;5;218m" #218
Plum1="\e[38;5;219m" #219
Gold1="\e[38;5;220m" #220
LightGoldenrod3="\e[38;5;221m" #221
LightGoldenrod2="\e[38;5;222m" #222
NavajoWhite1="\e[38;5;223m" #223
MistyRose1="\e[38;5;224m" #224
Thistle1="\e[38;5;225m" #225
Yellow1="\e[38;5;226m" #226
LightGoldenrod1="\e[38;5;227m" #227
Khaki1="\e[38;5;228m" #228
Wheat1="\e[38;5;229m" #229
CornSilk="\e[38;5;230m" #230
Grey25="\e[38;5;231m" #231
Grey24="\e[38;5;232m" #232
Grey23="\e[38;5;233m" #233
Grey22="\e[38;5;234m" #234
Grey21="\e[38;5;235m" #235
Grey20="\e[38;5;236m" #236
Grey19="\e[38;5;237m" #237
Grey18="\e[38;5;238m" #238
Grey17="\e[38;5;239m" #239
Grey16="\e[38;5;240m" #240
Grey15="\e[38;5;241m" #241
Grey14="\e[38;5;242m" #242
Grey13="\e[38;5;243m" #243
Grey12="\e[38;5;244m" #244
Grey11="\e[38;5;245m" #245
Grey10="\e[38;5;246m" #246
Grey9="\e[38;5;247m" #247
Grey8="\e[38;5;248m" #248
Grey7="\e[38;5;249m" #249
Grey6="\e[38;5;250m" #250
Grey5="\e[38;5;251m" #251
Grey4="\e[38;5;252m" #252
Grey3="\e[38;5;253m" #253
Grey2="\e[38;5;254m" #254
White="\e[38;5;255m" #255

# ==============================================================================
# C MENU & OPTIONS  
# ==============================================================================
c_menu() {
    echo ""
    echo -e "${DarkSeaGreen1}C LANGUAGE"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}00 ${CadetBlue1}Intro"
    echo -e "${Tan}01 ${CadetBlue1}Hello, World!"
    echo ""
    echo -e "${Tan}r ${DarkSeaGreen1}README" 
    echo -e "${Tan}q ${IndianRed1}EXIT"
    echo -e "${Tan}=========================================================="
    echo -e "${CadetBlue1}"
    read -p "c -> " lang_input
}

c_options() {
    case $1 in
        intro | introduction) 
            clear
            echo -e "Introduction"
            ;;

        hw | helloworld)
            clear
            batcat src/c/hello-world.c ${BAT_ARGS} --language="c"
            
            ;;

        x | q | return)
            clear
            
            ;;
    esac
}

# ==============================================================================
# C++ MENU & OPTIONS  
# ==============================================================================
cpp_menu() {
    echo ""
    echo -e "${DarkSeaGreen1}C++ LANGUAGE"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}00 ${CadetBlue1}Intro"
    echo -e "${Tan}01 ${CadetBlue1}Hello, World!"
    echo ""
    echo -e "${Tan}r ${DarkSeaGreen1}README" 
    echo -e "${Tan}q ${IndianRed1}EXIT"
    echo -e "${Tan}=========================================================="
    echo -e "${CadetBlue1}"
    read -p "cpp -> " lang_input
}

cpp_options() {
    case $1 in
        intro | introduction) 
            clear
            echo -e "Introduction"
            ;;

        hw | helloworld)
            clear
            batcat src/cpp/hello-world.cpp ${BAT_ARGS} --language="cpp"
            
            ;;

        x | q | return)
            clear
            
            ;;
    esac
}

# ==============================================================================
# C# MENU & OPTIONS  
# ==============================================================================
cs_menu() {
    echo ""
    echo -e "${DarkSeaGreen1}C# LANGUAGE"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}00 ${CadetBlue1}Intro"
    echo -e "${Tan}01 ${CadetBlue1}Hello, World!"
    echo ""
    echo -e "${Tan}r ${DarkSeaGreen1}README" 
    echo -e "${Tan}q ${IndianRed1}EXIT"
    echo -e "${Tan}=========================================================="
    echo -e "${CadetBlue1}"
    read -p "cs -> " lang_input
}

cs_options() {
    case $1 in
        intro | introduction) 
            clear
            echo -e "Introduction"
            ;;

        hw | helloworld)
            clear
            batcat src/cs/hello-world.cs ${BAT_ARGS} --language="cs"
            
            ;;

        x | q | return)
            clear
            
            ;;
    esac
}

# ==============================================================================
# GO MENU & OPTIONS
# ==============================================================================

go_menu() {
    echo ""
    echo -e "${DarkSeaGreen1}GO LANGUAGE"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}00 ${CadetBlue1}Intro"
    echo -e "${Tan}01 ${CadetBlue1}Hello, World!"
    echo ""
    echo -e "${Tan}r ${DarkSeaGreen1}README" 
    echo -e "${Tan}q ${IndianRed1}EXIT"
    echo -e "${Tan}=========================================================="
    echo -e "${CadetBlue1}"
    read -p "go -> " lang_input
}

go_options() {
    case $1 in
        intro | introduction) 
            clear
            echo -e "Introduction"
            ;;

        hw | helloworld)
            clear
            batcat src/go/hello-world.go ${BAT_ARGS} --language="go"
            
            ;;

        x | q | return)
            clear
            
            ;;
    esac
}

# ==============================================================================
# JAVA MENU & OPTIONS
# ==============================================================================

java_menu() {
    echo ""
    echo -e "${DarkSeaGreen1}JAVA LANGUAGE"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}00 ${CadetBlue1}Intro"
    echo -e "${Tan}01 ${CadetBlue1}Hello, World!"
    echo ""
    echo -e "${Tan}r ${DarkSeaGreen1}README" 
    echo -e "${Tan}q ${IndianRed1}EXIT"
    echo -e "${Tan}=========================================================="
    echo -e "${CadetBlue1}"
    read -p "java -> " lang_input
}

java_options() {
    case $1 in
        intro | introduction) 
            clear
            echo -e "Introduction"
            ;;

        hw | helloworld)
            clear
            batcat src/java/hello-world.java ${BAT_ARGS} --language="java"
            
            ;;

        x | q | return)
            clear
            
            ;;
    esac
}

# ==============================================================================
# JAVASCRIPT MENU & OPTIONS
# ==============================================================================
js_menu() {
    clear
    echo -e "$SkyBlue1"
    echo -e "                          _ ____   "
    echo -e "                         | / ___|  "
    echo -e "                      _  | \___ \  "
    echo -e "                     | |_| |___) | "
    echo -e "                      \___/|____/  "
    echo -e ""
    echo -e "              https://www.javascript.com/"
    echo ""
    echo -e "${Tan}[command] ${SkyBlue1}topic"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}[intro] ${SkyBlue1}Intro"
    echo -e "${Tan}[hw] ${SkyBlue1}Hello, World!"
    echo -e "${Tan}[var] ${SkyBlue1}Variables"
    echo -e "${Tan}[dt] ${SkyBlue1}Data Types"
    echo -e "${Tan}[str] ${SkyBlue1}Strings"
    echo -e "${Tan}[ops] ${SkyBlue1}Operators"
    echo -e "${Tan}[math] ${SkyBlue1}Mathematics"
    echo -e "${Tan}[arr] ${SkyBlue1}Arrays"
    echo -e "${Tan}[obj] ${SkyBlue1}Objects"
    echo -e "${Tan}[fn] ${SkyBlue1}Functions & Factories"
    echo -e "${Tan}[meth] ${SkyBlue1}Methods"
    echo -e "${Tan}[for] ${SkyBlue1}For (in/of) Loops"
    echo -e "${Tan}[while] ${SkyBlue1}While Loops"
    echo -e "${Tan}[case] ${SkyBlue1}Switch/Case"
    echo -e "                                     ${Tan}[r] ${SkyBlue1}README ${Tan}[q] ${IndianRed1}RETURN" 
    echo -e "${Tan}=========================================================="
    echo -e "${SkyBlue1}"
    read -p "js -> " lang_input
}

js_options() {
    case $1 in
        intro | -intro) 
            clear
            echo -e "Introduction"
            sleep 2
            ;;

        hw | -hw | helloworld)
            clear
            batcat src/javascript/hello-world.js ${BAT_ARGS} --language="javascript"
            ;;

        vars | var | -vars | -var)
            clear
            batcat src/javascript/variables.js ${BAT_ARGS} --language="javascript"
            ;;

        types | type | dt | datatypes)
            clear
            batcat src/javascript/data-types.js ${BAT_ARGS} --language="javascript"
            ;;

        objects | obj | objs)
            clear
            batcat src/javascript/objects.js ${BAT_ARGS} --language="javascript"
            ;;

        arrays | array)
            clear
            batcat src/javascript/arrays.js ${BAT_ARGS} --language="javascript"
            ;;

        functions | function | funcs | func| fn)
            clear
            batcat src/javascript/functions.js ${BAT_ARGS} --language="javascript"
            ;;

        operators | ops | op | -ops | -op)
            clear
            batcat src/javascript/operators.js ${BAT_ARGS} --language="javascript"
            ;;
        
        if | if-else | if-then)
            clear
            batcat src/javascript/if-statements.js ${BAT_ARGS} --language="javascript"
            ;;
        
        switch | case)
            clear
            batcat src/javascript/switch-case.js ${BAT_ARGS} --language="javascript"
            ;;
        
        for | forloops)
            clear
            batcat src/javascript/for-loops.js ${BAT_ARGS} --language="javascript"
            ;;
        
        while | whileloops)
            clear
            batcat src/javascript/while-loops.js ${BAT_ARGS} --language="javascript"
            ;;

        x | q | return)
            clear
            ;;
        
        *)
            clear
            echo -e "INVALID COMMAND!"
            sleep 1
            ;;
    esac
}

# ==============================================================================
# LUA MENU & OPTIONS
# ==============================================================================
lua_menu() {
    echo ""
    echo -e "${DarkSeaGreen1}LUA LANGUAGE"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}00 ${CadetBlue1}Intro"
    echo -e "${Tan}01 ${CadetBlue1}Hello, World!"
    echo ""
    echo -e "${Tan}r ${DarkSeaGreen1}README" 
    echo -e "${Tan}q ${IndianRed1}EXIT"
    echo -e "${Tan}=========================================================="
    echo -e "${CadetBlue1}"
    read -p "lua -> " lang_input
}

lua_options() {
    case $1 in
        intro | introduction) 
            clear
            echo -e "Introduction"
            ;;
        hw | helloworld)
            clear
            batcat src/lua/hello-world.lua ${BAT_ARGS} --language="lua"
            main_menu
            ;;
        x | q | return)
            clear
            main_menu
            ;;
    esac
}

# ==============================================================================
# PYTHON MENU & OPTIONS
# ==============================================================================
py_menu() {
    echo ""
    echo -e "${DarkSeaGreen1}PYTHON LANGUAGE"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}00 ${CadetBlue1}Intro"
    echo -e "${Tan}01 ${CadetBlue1}Hello, World!"
    echo ""
    echo -e "${Tan}r  ${DarkSeaGreen1}README" 
    echo -e "${Tan}q  ${IndianRed1}EXIT"
    echo -e "${Tan}=========================================================="
    echo -e "${CadetBlue1}"
    read -p "py -> " lang_input
}

py_options() {
    case $1 in
        intro | introduction) 
            clear
            echo -e "Introduction"
            ;;
        hw | helloworld)
            clear
            batcat src/py/hello-world.py ${BAT_ARGS} --language="py"
            main_menu
            ;;
        x | q | return)
            clear
            main_menu
            ;;
    esac
}

# ==============================================================================
# RUST MENU & OPTIONS
# ==============================================================================
rust_menu() {
    echo ""
    echo -e "${DarkSeaGreen1}RUST LANGUAGE"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}00 ${CadetBlue1}Intro"
    echo -e "${Tan}01 ${CadetBlue1}Hello, World!"
    echo ""
    echo -e "${Tan}r  ${DarkSeaGreen1}README" 
    echo -e "${Tan}q  ${IndianRed1}EXIT"
    echo -e "${Tan}=========================================================="
    echo -e "${CadetBlue1}"
    read -p "rust -> " lang_input
}

rust_options() {
    case $1 in
        intro | introduction) 
            clear
            echo -e "Introduction"
            ;;
        hw | helloworld)
            clear
            batcat src/rust/hello-world.rs ${BAT_ARGS} --language="rs"
            main_menu
            ;;
        x | q | return)
            clear
            main_menu
            ;;
    esac
}

# ==============================================================================
# TYPESCRIPT MENU & OPTIONS
# ==============================================================================
ts_menu() {
    echo ""
    echo -e "${DarkSeaGreen1}TYPESCRIPT LANGUAGE"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}00 ${CadetBlue1}Intro"
    echo -e "${Tan}01 ${CadetBlue1}Hello, World!"
    echo ""
    echo -e "${Tan}r  ${DarkSeaGreen1}README" 
    echo -e "${Tan}q  ${IndianRed1}EXIT"
    echo -e "${Tan}=========================================================="
    echo -e "${CadetBlue1}"
    read -p "ts -> " lang_input
}

ts_options() {
    case $1 in
        intro | introduction) 
            clear
            echo -e "Introduction"
            ;;
        hw | helloworld)
            clear
            batcat src/typescript/hello-world.ts ${BAT_ARGS} --language="ts"
            main_menu
            ;;
        x | q | return)
            clear
            main_menu
            ;;
    esac
}

# ==============================================================================
# ZIG MENU & OPTIONS
# ==============================================================================
zig_menu() {
    echo ""
    echo -e "${DarkSeaGreen1}ZIG LANGUAGE"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}00 ${CadetBlue1}Intro"
    echo -e "${Tan}01 ${CadetBlue1}Hello, World!"
    echo ""
    echo -e "${Tan}r  ${DarkSeaGreen1}README" 
    echo -e "${Tan}q  ${IndianRed1}EXIT"
    echo -e "${Tan}=========================================================="
    echo -e "${CadetBlue1}"
    read -p "zig -> " lang_input
}

zig_options() {
    case $1 in
        intro | introduction) 
            clear
            echo -e "Introduction"
            ;;
        hw | helloworld)
            clear
            batcat src/zig/hello-world.zig ${BAT_ARGS} --language="zig"
            main_menu
            ;;
        x | q | return)
            clear
            main_menu
            ;;
    esac
}

# ==============================================================================
# MAIN MENU
# ==============================================================================
main_menu() {
    clear
    echo -e "${SkyBlue1}"
    echo -e "                   _     ____  ____   "
    echo -e "                  | |   |  _ \/ ___|  "
    echo -e "                  | |   | | | \___ \  "
    echo -e "                  | |___| |_| |___) | "
    echo -e "                  |_____|____/|____/  "
    echo ""
    echo -e "          (${Tan}L${SkyBlue1})anguage (${Tan}D${SkyBlue1})ocumentation (${Tan}S${SkyBlue1})cript"
    echo ""
    echo -e "${Tan}[command] ${SkyBlue1}language"
    echo -e "${Tan}=========================================================="
    echo -e "${Tan}[c] ${SkyBlue1}C              "
    echo -e "${Tan}[cpp] ${SkyBlue1}C++          "
    echo -e "${Tan}[cs] ${SkyBlue1}C#            "
    echo -e "${Tan}[go] ${SkyBlue1}Go            "
    echo -e "${Tan}[java] ${SkyBlue1}Java        "
    echo -e "${Tan}[js] ${SkyBlue1}JavaScript    "
    echo -e "${Tan}[lua] ${SkyBlue1}Lua          "
    echo -e "${Tan}[py] ${SkyBlue1}Python        "
    echo -e "${Tan}[rs] ${SkyBlue1}Rust          "
    echo -e "${Tan}[ts] ${SkyBlue1}TypeScript    "
    echo -e "${Tan}[zig] ${SkyBlue1}Zig          "
    echo -e "                                       ${Tan}[r] ${SkyBlue1}README ${Tan}[q] ${IndianRed1}EXIT" 
    echo -e "${Tan}=========================================================="
    echo -e "${SkyBlue1}"
    read -p "lds -> " menu_input
}

# ==============================================================================
# MAIN MENU OPTIONS
# ==============================================================================
main() {
    case $1 in

        m | -m | menu) # MAIN MENU (TUI) SELECTION
            clear
            main_menu

            case $menu_input in # MAIN MENU INPUT (LANGUAGE)
                c)
                    clear
                    c_menu
                    c_options $lang_input
                    ;;
                
                cpp | c++)
                    clear
                    cpp_menu
                    cpp_options $lang_input
                    ;;

                cs | csharp)
                    clear
                    cs_menu
                    cs_options $lang_input
                    ;;

                go | golang)
                    clear
                    go_menu
                    go_options $lang_input
                    ;;

                java)
                    clear
                    java_menu
                    java_options $lang_input
                    ;;

                js)
                    clear
                    js_menu
                    js_options $lang_input
                    ;;

                lua)
                    clear
                    lua_menu
                    lua_options $lang_input
                    ;;
                
                py | python)
                    clear
                    py_menu
                    py_options $lang_input
                    ;;

                rs | rust)
                    clear
                    rs_menu
                    rs_options $lang_input
                    ;;
                
                ts | typescript)
                    clear
                    ts_menu
                    ts_options $lang_input
                    ;;
                zig)
                    clear
                    zig_menu
                    zig_options $lang_input
                    ;;
            esac
            ;;
# ==============================================================================
        c | c-lang)
            if [ -z "$2" ]; then
                clear
                c_menu
                c_options $lang_input
            else    
                clear
                c_options $2

            fi
            ;;
# ==============================================================================
        cpp | c++)
            if [ -z "$2" ]; then
                clear
                cpp_menu
                cpp_options $lang_input
            else
                clear
                cpp_options $2
            fi
            ;;
# ==============================================================================
        cs | c-sharp | csharp)
            if [ -z "$2" ]; then
                clear
                cs_menu
                cs_options $lang_input
            else
                clear
                cs_options $2
            fi
            ;;
# ==============================================================================
        go | golang)
            if [ -z "$2" ]; then
                clear
                go_menu
                go_options $lang_input
            else
                clear
                go_options $2
            fi
            ;;
# ==============================================================================
        java)
            if [-z "$2" ]; then
                clear
                java_menu
                java_options $lang_input
            else
                clear
                java_options $2
            fi
            ;;
# ==============================================================================
        js | javascript)
            if [ -z "$2" ]; then
                clear
                js_menu
                js_options $lang_input
            else
                clear
                js_options $2
            fi
            ;;
# ==============================================================================
        lua)
            if [ -z "$2" ]; then
                clear
                lua_menu
                lua_options $lang_input
            else
                clear
                lua_options $2
            fi
            ;;
# ==============================================================================        
        py | python)
            if [ -z "$2" ]; then
                clear
                py_menu
                py_options $lang_input
            else
                clear
                py_options $2
            fi
            ;;
# ==============================================================================        
        lua)
            if [ -z "$2" ]; then
                clear
                lua_menu
                lua_options $lang_input
            else
                clear
                lua_options $2
            fi
            ;;
# ==============================================================================
        py | python)
            if [ -z "$2" ]; then
                clear
                py_menu
                py_options $lang_input
            else
                clear
                py_options $2
            fi
            ;;
# ==============================================================================
        rs | rust)
            if [ -z "$2" ]; then
                clear
                rust_menu
                rust_options $lang_input
            else
                clear
                rust_options $2
            fi
            ;;
# ==============================================================================        
        ts | typescript)
            if [ -z "$2" ]; then
                clear
                ts_menu
                ts_options $lang_input
            else
                clear
                ts_options $2
            fi
            ;;
# ==============================================================================
        zig)
            if [ -z "$2" ]; then
                clear
                zig_menu
                zig_options $lang_input
            else
                clear
                zig_options $2
            fi
            ;;
    esac
}
# ==============================================================================

main $1 $2
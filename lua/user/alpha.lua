local alpha = require("alpha") 
 local dashboard = require("alpha.themes.dashboard") 
  
local time = os.date("%H:%M")
local v = vim.version()
local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch
dashboard.section.header.val = {
'███╗░░██╗██╗░░░██╗██╗███╗░░░███╗', 
'████╗░██║██║░░░██║██║████╗░████║',
'██╔██╗██║╚██╗░██╔╝██║██╔████╔██║',
'██║╚████║░╚████╔╝░██║██║╚██╔╝██║', 
'██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║', 
'╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝', 
'', 
'	    █▀█ █▄░█  █▀▄▀█ █▄█	    ', 
'	    █▄█ █░▀█  █░▀░█ ░█░	    ', 
'',
'░██╗░░░░░░░██╗░█████╗░██╗░░░██╗', 
'░██║░░██╗░░██║██╔══██╗╚██╗░██╔╝', 
'░╚██╗████╗██╔╝███████║░╚████╔╝░', 
'░░████╔═████║░██╔══██║░░╚██╔╝░░', 
'░░╚██╔╝░╚██╔╝░██║░░██║░░░██║░░░', 
'░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝░░░╚═╝░░░',
}
-- dashboard.section.header.val = { 
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠓⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠎⠁⠀⢺⣤⡀⠀⠀⠀⠀⠀⠀⠀⢄⣀⣀⣀⠀⠐⣂⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠉⠀⠀⠀⠀⠈⣿⣿⣿⣷⣦⣤⣴⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠀⠀⣠⠚⠁⠀⠀⠀⠀⠀⠀⣀⣘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣌⠳⣄⠀⠀⠀⠀⠀⣠',
-- '⠀⠀⠀⠀⠀⢠⠞⠁⠀⠀⢀⣠⣴⣶⣾⣿⣿⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⡝⢿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⡀⠀⠀⣠⠐⠀⠀⠀⠘⢦⢈⠳⡀⠀⢠⠞⠁',
-- '⠀⠀⠀⢀⡴⠋⢀⣠⣶⣾⣿⣿⣿⣿⣿⣿⣿⠏⢹⣿⠁⠀⠀⠀⠙⢿⣿⣿⣿⡄⠻⣿⣷⡙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⠢⠐⠎⢄⢢⠘⡤⡈⢢⡳⠳⡱⣤⠏⠀⠀',
-- '⠀⠀⢠⠟⠁⠀⠁⠀⠀⢀⣤⣶⣿⣿⣿⣿⠃⠀⢸⡧⠀⠀⠀⠀⠀⠀⠻⣿⣿⣷⠀⠈⢿⣷⡄⠙⢿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⢯⣣⠘⢎⢆⠱⡁⣿⠏⠀⠀⠀',
-- '⠀⢠⠏⠀⣀⣀⣠⣤⣾⠿⣿⣿⣿⣿⣿⠇⠀⠀⠘⣿⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣇⠀⠀⢙⣿⡄⠀⠙⢿⣿⣿⣿⡆⠹⣿⣿⣿⣿⣿⣿⣿⣧⡁⠀⢳⡳⡜⢮⡳⣘⡟⠀⠀⠀⠀',
-- '⢀⡏⠀⠀⠀⠀⠈⠀⢠⣾⣿⣿⣿⣿⡿⠀⠀⠀⠀⢿⡆⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⡤⠞⠉⠈⠻⡄⠀⠈⠻⣿⣿⡇⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠱⡕⡄⢳⣹⠃⠀⠀⠀⠀',
-- '⡞⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠘⣇⠀⠀⠀⠀⠀⠀⠀⢀⡼⢻⡇⠀⣠⣤⠤⠼⠤⣄⠀⠘⢿⡇⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⡀⢵⠹⡄⣿⠀⠀⠀⠀⠀',
-- '⡆⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠘⡦⠀⠀⠀⠀⢀⡴⠋⠀⢀⡵⠋⠁⠀⠀⠀⠀⠀⠙⠳⠴⠃⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⡀⠸⣄⢹⡏⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠇⠀⠀⡞⠀⠸⣿⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⢻⣿⣿⣿⣿⣿⣿⣷⡰⡀⢼⡇⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⣿⡿⠏⣸⣿⣿⣿⣿⣿⡄⠀⠀⣀⣠⠤⠤⢤⣀⡀⠀⠀⠀⠀⠀⠸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡖⡀⢀⡴⠀⠀⠘⠀⢹⣿⣿⣿⣿⣿⡿⣧⠇⢸⡇⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⢠⣿⠁⠀⣿⣿⣿⣿⣿⣿⣷⠒⠉⠁⣠⡤⠤⠤⣬⡙⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⢏⣠⠕⠛⠀⠀⠀⠀⠀⠀⣿⣿⡿⠋⣉⡛⢮⡏⢸⠁⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠸⠁⠀⢠⣿⣿⣿⣿⣿⡏⠻⡄⢠⠎⠁⢠⣶⡤⠀⠉⢸⠇⠀⠀⠀⠀⠀⠐⠢⠤⣤⡤⠔⠺⠟⣚⣩⣥⠥⣶⠦⣤⠀⠀⠀⠀⣾⡟⣠⠋⠀⢹⡌⡇⢸⠀⠀⠀⠀⠀⠀',
-- '⢇⠀⠀⠀⠀⠀⠀⣼⣿⣿⠟⣿⣿⣷⡀⠀⠸⡀⠀⠈⠉⠀⠀⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠤⠖⠊⠉⠀⠀⠀⢀⣧⢀⡏⠀⠀⠀⠀⣿⢱⠷⠶⠀⢸⠃⣾⢺⠀⠀⠀⠀⠀⠀',
-- '⠸⡄⠀⠀⠀⠀⣰⣿⠟⠁⠀⢹⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⣰⠻⣦⡔⠒⠀⣀⡤⠔⠚⠁⠀⢀⣀⣤⣴⣾⣿⣿⣿⣿⣿⠧⡄⠀⠀⢰⠃⣾⠋⠉⢹⠀⢠⢿⣾⡄⠀⠀⠀⠀⠀',
-- '⠀⢷⡀⠀⠀⠾⠋⠁⠀⢀⠀⢸⣿⣿⣿⣿⣧⡀⠀⠤⠤⠖⠋⠁⠀⠀⣠⠴⠊⠁⠀⣀⣤⣴⣾⣿⣿⣿⡿⠿⠛⠛⠛⠛⡟⠀⡄⠀⢀⡏⠀⡼⢀⡰⠃⣰⣿⣿⣹⡇⠀⠀⠀⠀⠀',
-- '⠀⠈⢷⡰⠀⠀⠀⠀⠀⢠⠢⡱⣿⣟⢿⣿⣿⣷⡄⠀⠀⠀⠀⢀⡴⠚⠁⠀⣠⣴⣾⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⠀⠀⡴⠁⠀⠀⠀⡾⠓⠛⠛⢉⣴⣻⢧⣽⢽⢻⣇⠀⠀⠀⠀⠀',
-- '⠀⠀⠈⢳⡀⠀⢀⠰⡔⠈⠳⣙⣿⢎⠀⠙⣿⣿⣿⣆⠀⠀⢰⠋⠀⠀⢠⣾⣿⣿⣿⣿⣿⠟⠁⠀⠀⢀⣠⠤⠖⢚⡟⠁⠀⠀⣠⣾⠙⠲⡖⠊⣯⢢⢳⣿⣏⡶⠋⣿⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠹⣆⠀⠉⢙⣄⢦⡙⢦⡳⣄⠀⢊⠿⣿⣿⣧⠀⠈⠳⣄⣀⡜⢻⠿⡿⣿⡿⠁⣀⡤⠖⠊⠉⠀⣠⠴⠋⠀⠀⢀⣴⢿⣯⠁⠀⣿⡆⡞⡾⣞⡿⢋⢀⣰⠟⠀⠀⠀⠀⠀',
-- '⠀⡄⠀⢀⣀⡽⠷⢒⢿⡻⣓⠵⢤⡙⠎⠧⣄⢝⣻⡸⢻⣷⡀⠀⠈⠳⣶⣦⣴⣴⣿⠷⠋⠁⠀⠀⣀⡤⣞⠁⠀⠀⢀⣠⢾⣿⣾⡇⠀⠀⠘⢧⠶⠋⢉⣀⣈⣹⣷⡄⠀⠀⠀⠀⠀',
-- '⠀⠉⠉⠉⠀⠀⣰⠻⢤⣐⠈⠢⡑⢥⡉⡁⢬⣣⡍⠳⣌⠻⣽⣦⣄⡀⠈⠙⠛⠯⠤⠤⠴⠒⣒⠯⠟⠊⠁⠀⢀⣴⣿⣿⣿⣾⣿⠇⠀⠀⠀⠈⢑⣶⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⣴⠃⠀⠀⠉⠲⣤⡉⠲⢝⠪⣷⣌⡳⣕⢪⡉⠚⠯⠭⠽⡶⠦⣤⣤⣀⡀⠀⠀⠀⠀⠀⢀⣤⢾⣿⢷⢟⣿⣽⣣⡏⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⢰⠃⠀⠀⠀⠀⠀⠀⠙⠲⢤⣙⡺⡑⠍⠻⢝⠦⣱⠄⡀⠀⠨⠅⢺⣑⠮⡉⠉⠙⠲⡶⠻⣟⢿⣽⣻⣯⡿⡿⢻⠟⠀⠀⢀⡴⠊⣽⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⢸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠙⠒⠶⠾⠤⢭⣒⣈⣉⡡⠶⠴⠽⠷⠖⠋⠉⠙⢆⠘⠞⣿⢫⣎⡾⡿⠀⠀⢀⡰⠋⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⠹⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡄⠘⠉⠋⠙⠈⠀⠀⣠⠏⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀',
-- '⠀⠀⠀⠀⠀⢀⣨⣷⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣤⣤⣇⣀⣀⠀⠀⠀⠀⠀⠁⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀',
-- '⠀⠀⠀⠀⠀⠹⡄⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⠟⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢦⣀',
-- '⢀⠄⠂⠉⠉⠁⠚⠑⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣴⣾⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠈',
-- '⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀',
-- '⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⣀⣀⣀⣀⣀⣀⣀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣀⠀⢀⣀⣀⣀⣀⣀⣀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢋⠀⣀⣀⣀⣀⡀',
-- } 
--
-- Set header
--dashboard.section.header.val = {
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠤⠖⠒⠒⠒⠒⠒⠦⠤⢤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡤⠒⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠓⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠞⠁⠀⠀⠔⡴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠏⠀⠀⠀⠀⣠⠄⡶⢀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠘⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠁⠀⠀⠀⣼⠁⢙⣀⣤⣧⣤⣤⣶⣶⣤⣤⣁⡁⠁⠠⢤⠀⠀⠀⠆⠀⠀⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⠀⢀⣠⡤⠾⠛⠛⠛⠛⠛⠛⠋⠛⠛⠻⠿⣿⣿⣿⣿⣶⣦⣌⠛⠂⠀⠀⠀⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡴⠓⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠛⢿⣷⣦⡘⠂⠀⠀⠀⠈⣧⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⣠⡴⢊⣡⠄⠀⠀⠀⠀⠀⢀⣠⣴⣶⣶⣿⠋⢻⣿⣿⣶⣶⣤⣄⡀⠀⠀⠀⠀⠈⠙⢿⣦⡄⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⢀⣠⠚⢁⡴⠋⠀⠀⠀⠀⢀⣠⣾⣿⣿⠟⣿⣿⡏⠀⠀⠻⣿⣿⣿⣿⣿⣿⣷⣤⡀⠀⠀⠀⠀⠈⠛⢦⡀⠀⡾⠀⠀⠀⠀⠀⠀',
--'⠀⢀⡴⠋⠀⠀⠈⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⡏⠀⣿⣿⠁⠀⠀⠀⢹⣿⣿⣿⢻⣿⣿⣿⣿⣦⡀⢀⠀⠀⠀⠀⠙⢦⠇⠀⠀⠀⠀⠀⠀',
--'⢀⡞⠁⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⡟⠀⠀⣿⡿⠀⠀⠀⠀⠀⣿⣿⡟⠀⠻⣿⣿⣿⣿⣿⣦⠱⣌⠑⠀⠀⠈⠱⣄⠀⠀⠀⠀⠀',
--'⡾⠀⠀⠀⠀⠀⡶⠀⠀⢀⣿⣿⣿⣿⣿⡿⠀⠀⠀⢸⡇⠀⠀⠀⣷⡀⢸⣿⠁⠀⠀⢹⣿⣿⣿⣿⣿⣷⠀⠱⣄⢳⠀⠀⠈⢳⡀⠀⠀⠀',
--'⣇⠀⢀⠀⠀⠀⠃⠀⠀⢸⣿⣿⣿⡏⣿⡇⠀⠀⠀⠈⣧⠀⠀⠀⠉⠀⢀⡏⠀⠀⣀⡠⣿⡏⣿⣿⣿⣿⣷⡄⠨⡤⡄⠀⠀⠀⠹⣄⠀⠀',⠀
--'⠹⡄⠘⠀⢧⠹⣆⠸⡄⣾⣿⣿⣿⡇⢿⣇⡐⣶⣶⣴⠤⠀⠀⠀⠀⢀⠾⠶⢶⡿⠿⠶⣽⡇⣿⣿⣿⣿⣿⣷⠀⣈⠀⠀⠀⠀⠀⠘⡆⠀',
--'⠀⠱⣄⠀⢈⢣⡉⢀⣼⠟⣹⣿⣿⡇⠈⣧⠟⠁⡀⠈⠙⣆⠀⠀⠀⠀⠀⢰⠋⢀⣤⡀⠈⢷⣿⢿⣿⣿⣿⣿⡆⠸⡔⠶⠀⠀⠀⠀⢳⠀',
--'⠀⠀⠘⢦⣀⠓⢻⢉⢁⢠⡿⢹⣿⣇⠀⠈⠀⠸⣿⠇⠀⡈⣻⠀⠀⠀⠀⠀⠀⠘⠿⠋⠀⣠⠏⢸⣿⣿⣯⣿⡇⢰⢠⢀⠀⠀⠀⠀⢸⡇',
--'⠀⠀⠀⠀⠉⠳⣜⠉⠻⠋⠀⠘⣿⡹⣆⠀⠦⣀⣀⣀⡴⠋⣼⠀⠀⠀⠀⠈⠳⢤⣀⣠⠾⠃⠀⠼⣿⣎⣀⡿⡿⠃⠾⢿⠇⠀⠀⠀⣼⠁',
--'⠀⠀⠀⠀⠀⠀⠈⠉⠙⢧⣄⠀⠹⣷⣿⡀⠀⠀⠀⠀⠀⠀⠙⠶⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⡸⠈⣇⢾⡼⠱⡠⢀⠀⠀⠀⠀⣸⠃⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠲⢝⣦⡇⠀⠀⠐⢦⣀⣀⣀⣠⣤⠤⠤⣤⡖⠉⠀⠀⣦⠀⣰⣳⣛⡱⠋⠀⠘⠱⢫⣖⡠⠴⠚⠁⠀ ',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡄⠀⠀⠞⠉⠀⣰⠃⣤⠀⠀⠀⠉⠳⣄⠀⢀⣼⣉⠩⠥⠤⠔⠒⠒⠚⠉⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠳⣤⡀⠀⠀⠃⠀⠈⠓⠀⠀⠀⢀⣠⠴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠲⡤⠤⠤⠤⠤⠖⠚⢻⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--' ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⣿⠀⠀⠀⠀⠀⠀⠈⡷⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣷⡠⠏⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢴⣿⣿⣿⣿⣿⣿⡟⠓⢦⣀⣠⠴⠚⣻⣿⣿⣿⣿⣿⣿⡟⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠋⠈⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⡇⠀⠛⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢰⣄⠸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠃⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠁⠀⢻⡀⠀⠀⠀⠀⠀⠀⠀⠀',
--'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡃⠀⠀⠀⠸⡇⠀⠀⠀⠀⠀⠀⠀⠀',
--}

-- Set menu 
 dashboard.section.buttons.val = { 
     dashboard.button( "e", "   New file" , ":ene <BAR> startinsert <CR>"), 
     dashboard.button( "f", "   Find file", ":cd $HOME | Telescope find_files<CR>"), 
     dashboard.button( "x", "   File Explorer", ":cd $HOME | NvimTreeOpen<CR>"), 
     dashboard.button( "r", "   Recent"   , ":Telescope oldfiles<CR>"), 
     dashboard.button( "q", "   Quit", ":qa<CR>"), 
 } 


 
 -- Set footer 
 --   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main) 
 --   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines 
 --   ```init.lua 
 --   return require('packer').startup(function() 
 --       use 'wbthomason/packer.nvim' 
 --       use { 
 --           'goolord/alpha-nvim', branch = 'feature/startify-fortune', 
 --           requires = {'BlakeJC94/alpha-nvim-fortune'}, 
 --           config = function() require("config.alpha") end 
 --       } 
 --   end) 
 --   ``` 
 -- local fortune = require("alpha.fortune")  
 -- dashboard.section.footer.val = fortune() 
function centerText(text, width)
  local totalPadding = width - #text
  local leftPadding = math.floor(totalPadding / 2)
  local rightPadding = totalPadding - leftPadding
  return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
end

dashboard.section.footer.val = {
    centerText("Kaizoku Ou Ni Ore Wa Naru", 50),
    " ",
    centerText(time, 50),
    centerText(version, 50)
}


 -- Send config to alpha 
 alpha.setup(dashboard.opts) 
  
 -- Disable folding on alpha buffer 
 vim.cmd([[ 
     autocmd FileType alpha setlocal nofoldenable 
 ]])


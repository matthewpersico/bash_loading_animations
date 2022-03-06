#!/usr/bin/env bash

### Loading animations list
# The first value of an array is the interval (in seconds) between each frame

# shellcheck disable=SC2034 #https://github.com/koalaman/shellcheck/wiki/SC2034

## ASCII animations ##
# Will work in any terminal, including the TTY.
declare BLA_classic=( 0.25 '-' "\\" '|' '/' )
declare BLA_box=( 0.2 ┤ ┴ ├ ┬ )
declare BLA_bubble=( 0.6 · o O O o · )
declare BLA_breathe=( 0.9 '  ()  ' ' (  ) ' '(    )' ' (  ) ' )
declare BLA_growing_dots=( 0.5 '.  ' '.. ' '...' '.. ' '.  ' '   ' )
declare BLA_passing_dots=( 0.25 '.  ' '.. ' '...' ' ..' '  .' '   ' )
declare BLA_metro=( 0.2 '[    ]' '[=   ]' '[==  ]' '[=== ]' '[ ===]' '[  ==]' '[   =]' )

## UTF-8 animations ##
# Require Unicode support (will work in most modern terminals, but not in TTY).
# Some animations may not render properly with certain fonts.
declare BLA_classic_utf8=( 0.25 '—' "\\" '|' '/' )
declare BLA_bounce=( 0.3 . · ˙ · )
declare BLA_vertical_block=( 0.25 ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ █ ▇ ▆ ▅ ▄ ▃ ▁ )
declare BLA_horizontal_block=( 0.25 ▏ ▎ ▍ ▌ ▋ ▊ ▉ ▉ ▊ ▋ ▌ ▍ ▎ ▏ )
declare BLA_quarter=( 0.25 ▖ ▘ ▝ ▗ )
declare BLA_triangle=( 0.45 ◢ ◣ ◤ ◥)
declare BLA_semi_circle=( 0.1 ◐ ◓ ◑ ◒ )
declare BLA_rotating_eyes=( 0.4 ◡◡ ⊙⊙ ⊙⊙ ◠◠ )
declare BLA_firework=( 0.4 '⢀' '⠠' '⠐' '⠈' '*' '*' ' ' )
declare BLA_braille=( 0.2 ⠁ ⠂ ⠄ ⡀ ⢀ ⠠ ⠐ ⠈ )
declare BLA_braille_whitespace=( 0.2 ⣾ ⣽ ⣻ ⢿ ⡿ ⣟ ⣯ ⣷ )
declare BLA_trigram=( 0.25 ☰ ☱ ☳ ☶ ☴ )
declare BLA_arrow=( 0.15 ▹▹▹▹▹ ▸▹▹▹▹ ▹▸▹▹▹ ▹▹▸▹▹ ▹▹▹▸▹ ▹▹▹▹▸ ▹▹▹▹▹ ▹▹▹▹▹ ▹▹▹▹▹ ▹▹▹▹▹ ▹▹▹▹▹ ▹▹▹▹▹ ▹▹▹▹▹ )
declare BLA_bouncing_ball=( 0.4 '(●     )' '( ●    )' '(  ●   )' '(   ●  )' '(    ● )' '(     ●)' '(    ● )' '(   ●  )' '(  ●   )' '( ●    )' )
declare BLA_big_dot=( 0.7 ∙∙∙ ●∙∙ ∙●∙ ∙∙● )
declare BLA_modern_metro=( 0.15 ▰▱▱▱▱▱▱ ▰▰▱▱▱▱▱ ▰▰▰▱▱▱▱ ▱▰▰▰▱▱▱ ▱▱▰▰▰▱▱ ▱▱▱▰▰▰▱ ▱▱▱▱▰▰▰ ▱▱▱▱▱▰▰ ▱▱▱▱▱▱▰ ▱▱▱▱▱▱▱ ▱▱▱▱▱▱▱ ▱▱▱▱▱▱▱ ▱▱▱▱▱▱▱ )
declare BLA_pong=( 0.35 '▐⠂       ▌' '▐⠈       ▌' '▐ ⠂      ▌' '▐ ⠠      ▌' '▐  ⡀     ▌' '▐  ⠠     ▌' '▐   ⠂    ▌' '▐   ⠈    ▌' '▐    ⠂   ▌' '▐    ⠠   ▌' '▐     ⡀  ▌' '▐     ⠠  ▌' '▐      ⠂ ▌' '▐      ⠈ ▌' '▐       ⠂▌' '▐       ⠠▌' '▐       ⡀▌' '▐      ⠠ ▌' '▐      ⠂ ▌' '▐     ⠈  ▌' '▐     ⠂  ▌' '▐    ⠠   ▌' '▐    ⡀   ▌' '▐   ⠠    ▌' '▐   ⠂    ▌' '▐  ⠈     ▌' '▐  ⠂     ▌' '▐ ⠠      ▌' '▐ ⡀      ▌' '▐⠠       ▌' )
declare BLA_earth=( 0.45 🌍 🌎 🌏 )
declare BLA_clock=( 0.2 🕛 🕐 🕑 🕒 🕓 🕔 🕕 🕖 🕗 🕘 🕙 🕚 )
declare BLA_moon=( 0.8 🌑 🌒 🌓 🌔 🌕 🌖 🌗 🌘 )
declare BLA_orange_pulse=( 0.35 🔸 🔶 🟠 🟠 🔶 )
declare BLA_blue_pulse=( 0.35 🔹 🔷 🔵 🔵 🔷 )
declare BLA_football=( 0.25 ' 👧⚽️       👦' '👧  ⚽️      👦' '👧   ⚽️     👦' '👧    ⚽️    👦' '👧     ⚽️   👦' '👧      ⚽️  👦' '👧       ⚽️👦 ' '👧      ⚽️  👦' '👧     ⚽️   👦' '👧    ⚽️    👦' '👧   ⚽️     👦' '👧  ⚽️      👦' )
declare BLA_blink=( 0.25 😐 😐 😐 😐 😐 😐 😐 😐 😐 😑 )
declare BLA_camera=( 0.1 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📷 📸 📷 📸 )
declare BLA_sparkling_camera=( 0.1 '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📷 ' '📸✨' '📷 ' '📸✨' )
declare BLA_sick=( 0.9 🤢 🤢 🤮 )
declare BLA_monkey=( 0.4 🙉 🙈 🙊 🙈 )
declare BLA_bomb=( 0.25 '💣   ' ' 💣  ' '  💣 ' '   💣' '   💣' '   💣' '   💣' '   💣' '   💥' '    ' '    ' )

declare -a BLA_active_loading_animation
declare BLA_loading_animation_frame_interval
declare BLA_loading_animation_pid

# Run stop_loading_animation if the script is interrupted
trap BLA::stop_loading_animation SIGINT

BLA::play_loading_animation_loop() {
  declare frame
  while true ; do
    for frame in "${BLA_active_loading_animation[@]}" ; do
      printf "\r%s" "${frame}"
      sleep "${BLA_loading_animation_frame_interval}"
    done
  done
}

BLA::start_loading_animation() {
  BLA_active_loading_animation=( "${@}" )
  # Extract the delay between each frame from the active_loading_animation array
  BLA_loading_animation_frame_interval="${BLA_active_loading_animation[0]}"
  unset "BLA_active_loading_animation[0]"
  tput civis # Hide the terminal cursor
  BLA::play_loading_animation_loop &
  BLA_loading_animation_pid="${!}"
}

BLA::stop_loading_animation() {
  kill "${BLA_loading_animation_pid}" &> /dev/null
  printf "\n"
  tput cnorm # Restore the terminal cursor
}


###################################### 4 ######################################
################################# USAGE GUIDE #################################
###############################################################################
################## Read below for the explanations on how to ##################
################### show loading animations in your script. ###################
###############################################################################

:<<'EXAMPLES'

# load in the functions and animations
source /path/to/bash_loading_animations.sh

# Show a loading animation for the command "foo"
BLA::start_loading_animation "${BLA_name_of_the_animation[@]}"
foo
BLA::stop_loading_animation

# If the command prints some output in the terminal, you may want to add
# one of the following:
foo 1> /dev/null # hide standard output
# or
foo 2> /dev/null # hide error messages
# or
foo &> /dev/null # hide all output

EXAMPLES

# PDDL-studies

## Table of Contents
<details open>
<summary>Click to expand or hide</summary>

1. [Usage](#introduction-anchor)
1. [Artifacts](#indexes-anchor)

</details>

<a id="introduction-anchor"></a>
## Introduction
This is a [Planning Domain Definition Language](https://en.wikipedia.org/wiki/Planning_Domain_Definition_Language#:~:text=The%20Planning%20Domain%20Definition%20Language,Intelligence%20(AI)%20planning%20languages.&text=The%20standardization%20provided%20by%20PDDL,compared%20to%20domain-specific%20systems.) studies repository.

The code here can be executed locally if you have a PDDL compiler installed on your computer. However, I used a [online editor](http://editor.planning.domains/#) to code and run.

<a id="indexes-anchor"></a>
## Indexes

This repository is divided into 7 directories, each one of them containing a bunch of solutions given some context. Those contexts are described in the following table:

| Directory            | Description                |
| -------------------- | -------------------------- |
| [01-plane-problem](https://github.com/LuizGuerra/PDDL-studies/tree/main/01-plane-problem)     | Transport of products by plane, with the only constraints being load, unload and fly. |
| [02-vacuum-cleaner](https://github.com/LuizGuerra/PDDL-studies/tree/main/02-vacuum-cleaner)    | Cleaning environments using a vacuum, with the only constraints being clean and move. |
| [03-connected-rooms](https://github.com/LuizGuerra/PDDL-studies/tree/main/03-connected-rooms)   | Find and pick up an object in a given room, among several rooms, with the only constraints being move and grab. |
| [04-multiple-rooms](https://github.com/LuizGuerra/PDDL-studies/tree/main/04-multiple-rooms)    | Move between rooms and cleaning them if they are dirty, with the only constraints being move and clean. |
| [05-vacuum-and-floors](https://github.com/LuizGuerra/PDDL-studies/tree/main/05-vacuum-and-floors) | This is a slightly more complex problem than the previous ones, where the goal is to clean all rooms that are located on different floors. Consequently, the actions described are a bit more specific: clean, enter, exit and use_stairs. |
| [99-trab](https://github.com/LuizGuerra/PDDL-studies/tree/main/99-trab)              | This is a college assignment, where the objective is to go through several rooms, close the window, close the door and turn off the light, with the constraints being: enter_room, exit_room_and_close_door, open_door, close_door, turn_light_on, turn_light_off, open_window and close_window. |
| [questionario](https://github.com/LuizGuerra/PDDL-studies/tree/main/questionario)         | This is a small PDDL training exercice, where a bot must hold an object and move it to a sorted stack, with the constraints being: stack (empilha), unstack (desempilha), pega_da_mesa (grab from table) and pega_da_pilha (grab from stack). |




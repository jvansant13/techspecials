# 2D Knights Platformer
A basic guide to create a 2d platformer game in Godot.
## Original Creators Video Tutorial
[Brackeys First Game Tutorial (Platformer)](https://youtu.be/LOhfqjmasi0?feature=shared)
## Try the game
[2D Knights Platformer (Brackeys)](https://jvansant13.github.io/Technology-Specials/2d%20Knights%20Platformer/Game/)
## File download link
- [Blank Asset Template](https://github.com/jvansant13/Technology-Specials/raw/refs/heads/main/Templates/Asset%20templates/2d_platformer_template.zip)
- [Full game files](https://github.com/jvansant13/Technology-Specials/raw/refs/heads/main/Templates/Game%20templates/2d%20Knights%20Platformer.zip)
## Overview
1. [Player 1.0](https://github.com/jvansant13/Technology-Specials/blob/main/2d%20Knights%20Platformer/README.md#player-10)
2. [Worldbuilding 1.0](https://github.com/jvansant13/Technology-Specials/blob/main/2d%20Knights%20Platformer/README.md#worldbuilding-10)
3. [Platforms](https://github.com/jvansant13/Technology-Specials/blob/main/2d%20Knights%20Platformer/README.md#platforms)
4. [Pickups](https://github.com/jvansant13/Technology-Specials/blob/main/2d%20Knights%20Platformer/README.md#pickups)
5. [Dying](https://github.com/jvansant13/Technology-Specials/blob/main/2d%20Knights%20Platformer/README.md#dying)
6. [Worldbuilding 2.0]()
7. [Enemy]()
8. [Dying 2.0]()
9. [Player 2.0]()
10. [Text, Score, Audio]()
11. [Export]()


## Tutorial
### Player 1.0
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=451s)\
To create a Player first you'll need to create a [Game Node](https://github.com/jvansant13/Technology-Specials/blob/main/2d%20Knights%20Platformer/README.md#creating-game-node) then you can follow the steps outlined in [Create a Character](https://github.com/jvansant13/Technology-Specials/blob/main/2d%20Knights%20Platformer/README.md#create-a-charaterplayer-npc-or-enemy)
### Worldbuilding 1.0
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=1017s)\
### Platforms
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=1408s)\
### Pickups
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=1700s)\
### Dying
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=2060s)\
### Worldbuilding 2.0
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=2414s)\
### Enemy
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=2518s)\
### Dying 2.0
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=3066s)\
### Player 2.0
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=3176s)\
### Text, Score, Audio
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=3643s)\
### Export
[Video](https://www.youtube.com/watch?v=LOhfqjmasi0&t=4456s)\

### Creating Game Node
To create the Game Scene:

- First you'll need to create a new Node2D and name it "Game"
- ![Game_Node_1](https://github.com/user-attachments/assets/0d6e342d-851d-4eb4-b0ab-26a57943a594)
- ![Game_node_2](https://github.com/user-attachments/assets/f50c5f41-b98d-4224-8065-86b521b5e42d)
- ![Game_node_3](https://github.com/user-attachments/assets/9d6535a1-f811-41f2-9616-0f2acab8d89f)
- save the scene or use "CTRL + S" and navigate to the "scenes folder"(if you don't have one, make it) and save it as "game.tscn"
- ![Game_node_4](https://github.com/user-attachments/assets/c06e2e8b-6e7e-4242-a24d-b6fea78efdc0)
- ![Game_node_5](https://github.com/user-attachments/assets/0171c67e-7032-483c-8980-885c366eccde)

### Create a Charater(Player, NPC, or Enemy)
You can either create a new scene by clicking the new tab button at the top of the view port or add the node to the game.tscn and save it later as a scene
- At the top of the view port click new tab "+"
- ![character_scene_1](https://github.com/user-attachments/assets/21f33658-f24b-49b4-a636-b91b6d08a48f)
- In the scene tree select the "+" sign to add a node to the character
- ![character_scene_2](https://github.com/user-attachments/assets/1d9640ae-5017-479a-a8d8-e13e6079633d)
- In the search bar start typing "charater" and select "CharacterBody2D", double click or select and click "Create"
- ![character_scene_3](https://github.com/user-attachments/assets/19e65a49-aa42-45a8-9f40-e78d7792d1b0)
- Rename the node to whatever the instance is. Mine is "player"
- ![character_scene_4](https://github.com/user-attachments/assets/92983c27-bc08-40ff-a9cc-33662ff2f337)
- In the scene tree select the "+" sign to add a child node to the player. You'll need to add a "CollisionShape2D" and an "AnimatedSprite2D"
- ![character_scene_5](https://github.com/user-attachments/assets/e2b46b08-d626-4804-84e1-a51a47f20f4c)
- ![character_scene_6](https://github.com/user-attachments/assets/29846a61-a755-42ef-892a-2aee4d370bd5)
- Then save your scene or use "CTRL + S" to save scene as instancename.tscn ("player.tscn") in the scenes folder.
- ![character_scene_7](https://github.com/user-attachments/assets/3ee4dbca-5aa9-4a9d-b185-89c58107aa66)






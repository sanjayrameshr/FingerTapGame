# Tap-to-Grow Game (Flutter)

A simple and fun 2-player game built using **Flutter**, where two players compete by tapping their side of the screen to grow their color block. The player who fills the screen first wins!

---

## Game Concept

- The screen is divided into two vertical halves:
  - 🔵 **Player A (Top - Blue)**
  - 🔴 **Player B (Bottom - Red)**
- Each tap increases the player's height and reduces the opponent's.
- Each successful tap adds **5 points**.
- The player who fills the screen first is the **winner**.

---

## Screens

1. **Main Page**
   - Two big circular "START!!" buttons (top and bottom).
2. **Game Page**
   - Two tappable halves representing each player.
   - Score displayed.
3. **Result Page**
   - Winner announcement.
   - Restart option.

---

## Features

- Responsive layout using `MediaQuery`
- Score tracking for each player
- Simple and intuitive UI
- Victory result screen
- Tap-based interaction using `MaterialButton`

---

## Folder Structure

```bash
lib/
├── main.dart     # Main file with MainPage, GamePage, and ResultPage classes


How to Run
Clone the repository:
  git clone https://github.com/yourusername/tap-to-grow-game.git
  cd tap-to-grow-game

Run the project:
  flutter pub get
  flutter run

Developer
Sanjay R
🔗 GitHub
🔗 LinkedIn

License
  This project is open source and available under the MIT License.

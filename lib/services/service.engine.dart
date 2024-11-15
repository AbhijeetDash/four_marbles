import 'package:four_marbles/models/model.board.dart';
import 'package:four_marbles/models/model.marble.dart';

abstract class EngineService {
  List<List<MarbleModel>> rotateOuterRing(List<List<MarbleModel>> matrix);
  List<List<MarbleModel>> rotateInnerRing(List<List<MarbleModel>> matrix);
  WinState checkWinCondition(List<List<MarbleModel>> matrix);
  WinState getWinState(MarbleSlotState state);
}

class EngineServiceImpl extends EngineService {
  @override
  WinState getWinState(MarbleSlotState state) {
    switch (state) {
      case MarbleSlotState.white:
        return WinState.white;
      case MarbleSlotState.black:
        return WinState.black;
      case MarbleSlotState.empty:
        return WinState.none;
    }
  }

  @override
  WinState checkWinCondition(List<List<MarbleModel>> matrix) {
    WinState currentState = WinState.none;

    // Check columns for win condition
    for (int i = 0; i < 4; i++) {
      if (matrix[0][i].slotState == matrix[1][i].slotState &&
          matrix[1][i].slotState == matrix[2][i].slotState &&
          matrix[2][i].slotState == matrix[3][i].slotState &&
          matrix[0][i].slotState != MarbleSlotState.empty) {
        currentState = getWinState(matrix[0][i].slotState);
      }
    }

    // Check rows for win condition
    for (int i = 0; i < 4; i++) {
      if (matrix[i][0].slotState == matrix[i][1].slotState &&
          matrix[i][1].slotState == matrix[i][2].slotState &&
          matrix[i][2].slotState == matrix[i][3].slotState &&
          matrix[i][0].slotState != MarbleSlotState.empty) {
        currentState = getWinState(matrix[i][0].slotState);
      }
    }

    // Check main diagonal for win condition
    if (matrix[0][0].slotState == matrix[1][1].slotState &&
        matrix[1][1].slotState == matrix[2][2].slotState &&
        matrix[2][2].slotState == matrix[3][3].slotState &&
        matrix[0][0].slotState != MarbleSlotState.empty) {
      currentState = getWinState(matrix[0][0].slotState);
    }

    // Check anti-diagonal for win condition
    if (matrix[0][3].slotState == matrix[1][2].slotState &&
        matrix[1][2].slotState == matrix[2][1].slotState &&
        matrix[2][1].slotState == matrix[3][0].slotState &&
        matrix[0][3].slotState != MarbleSlotState.empty) {
      currentState = getWinState(matrix[0][3].slotState);
    }

    // Check if the board is full
    if (currentState == WinState.none) {
      for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
          if (matrix[i][j].slotState == MarbleSlotState.empty) {
            return WinState.none;
          }
        }
      }
      return WinState.draw;
    }

    return WinState.none; // No win condition met
  }

  @override
  List<List<MarbleModel>> rotateOuterRing(List<List<MarbleModel>> matrix) {
    int n = matrix.length;
    if (n <= 1) return matrix; // No rotation needed for a 1x1 matrix

    // Store the first element (top-left corner) to facilitate the rotation
    MarbleModel temp = matrix[0][0];

    // Move the elements in the top row to the left
    for (int i = 0; i < n - 1; i++) {
      matrix[0][i] = matrix[0][i + 1];
    }

    // Move the elements in the rightmost column down
    for (int i = 0; i < n - 1; i++) {
      matrix[i][n - 1] = matrix[i + 1][n - 1];
    }

    // Move the elements in the bottom row to the right
    for (int i = n - 1; i > 0; i--) {
      matrix[n - 1][i] = matrix[n - 1][i - 1];
    }

    // Move the elements in the leftmost column up
    for (int i = n - 1; i > 1; i--) {
      matrix[i][0] = matrix[i - 1][0];
    }

    // Place the original top-left corner in the new position
    matrix[1][0] = temp;

    return matrix;
  }

  @override
  List<List<MarbleModel>> rotateInnerRing(List<List<MarbleModel>> matrix) {
    int n = matrix.length;
    if (n <= 2) {
      return matrix; // No rotation needed for matrices smaller than 3x3
    }
    // Store the first element of the inner ring (top-left element of the inner ring)
    MarbleModel temp = matrix[1][1];

    // Move the elements in the second row to the left
    for (int i = 1; i < n - 2; i++) {
      matrix[i][1] = matrix[i + 1][1];
    }

    // Move the elements in the second-to-last column down
    for (int i = 1; i < n - 2; i++) {
      matrix[n - 2][i] = matrix[n - 2][i + 1];
    }

    // Move the elements in the second-to-last row to the right
    for (int i = n - 2; i > 1; i--) {
      matrix[i][n - 2] = matrix[i - 1][n - 2];
    }

    // Move the elements in the second column up
    for (int i = n - 2; i > 2; i--) {
      matrix[1][i] = matrix[1][i - 1];
    }

    // Place the original inner ring element in the new position
    matrix[1][2] = temp;

    return matrix;
  }
}

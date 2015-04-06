//
//  LineShape.swift
//  Swiftris
//
//  Created by Tim on 3/29/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

class LineShape:Shape {
  // #2
  override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
    return [
      Orientation.Zero:       [(0, 0), (0, 1), (0, 2), (0, 3)],
      Orientation.OneEighty:  [(-1, 0), (0, 0), (1, 0), (2, 0)],
      Orientation.Ninety:     [(0, 0), (0, 1), (0, 2), (0, 3)],
      Orientation.TwoSeventy: [(-1, 0), (0, 0), (1, 0), (2, 0)]
    ]
  }
  
  // #3
  override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
    return [
      Orientation.Zero:           [blocks[FourthBlockIdx]],
      Orientation.OneEighty:      blocks,
      Orientation.Ninety:         [blocks[FourthBlockIdx]],
      Orientation.TwoSeventy:     blocks
    ]
  }
}

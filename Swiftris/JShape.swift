//
//  JShape.swift
//  Swiftris
//
//  Created by Tim on 3/29/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

class JShape:Shape {
  
  // #2
  override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
    return [
      Orientation.Zero:       [(1, 0), (1, 1), (1, 2), (0, 2)],
      Orientation.OneEighty:  [(2, 1), (1, 1), (0, 1), (0, 0)],
      Orientation.Ninety:     [(0, 2), (0, 1), (0, 0), (1, 0)],
      Orientation.TwoSeventy: [(0, 0), (1, 0), (2, 0), (2, 1)]
    ]
  }
  
  // #3
  override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
    return [
      Orientation.Zero:           [blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
      Orientation.OneEighty:      [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[ThirdBlockIdx]],
      Orientation.Ninety:         [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
      Orientation.TwoSeventy:     [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]]
    ]
  }
}

//
//  TShape.swift
//  Swiftris
//
//  Created by Tim on 3/29/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

class TShape:Shape {
  
  // #2
  override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
    return [
      Orientation.Zero: [(1, 0), (0, 1), (1, 1), (2, 1)],
      Orientation.OneEighty: [(2, 1), (1, 0), (1, 1), (1, 2)],
      Orientation.Ninety: [(1, 2), (0, 1), (1, 1), (2, 1)],
      Orientation.TwoSeventy: [(0, 1), (1, 0), (1, 1), (1, 2)]
    ]
  }
  
  // #3
  override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
    return [
      Orientation.Zero:           [blocks[SecondBlockIdx], blocks[FourthBlockIdx], blocks[FourthBlockIdx]],
      Orientation.OneEighty:      [blocks[FirstBlockIdx], blocks[FourthBlockIdx]],
      Orientation.Ninety:         [blocks[FirstBlockIdx], blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
      Orientation.TwoSeventy:     [blocks[FirstBlockIdx], blocks[FourthBlockIdx]]
    ]
  }
}

//
//  SShape.swift
//  Swiftris
//
//  Created by Tim on 3/29/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

class SShape:Shape {
  // #2
  override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
    return [
      Orientation.Zero:       [(0, 0), (0, 1), (1, 1), (1, 2)],
      Orientation.OneEighty:  [(2, 0), (1, 0), (1, 1), (0, 1)],
      Orientation.Ninety:     [(0, 0), (0, 1), (1, 1), (1, 2)],
      Orientation.TwoSeventy: [(2, 0), (1, 0), (1, 1), (0, 1)]
    ]
  }
  
  // #3
  override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
    return [
      Orientation.Zero:           [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
      Orientation.OneEighty:      [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
      Orientation.Ninety:         [blocks[SecondBlockIdx], blocks[FourthBlockIdx]],
      Orientation.TwoSeventy:     [blocks[FirstBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]]
    ]
  }
}

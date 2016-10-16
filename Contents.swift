//: Playground - noun: a place where people can play

class ConnectMore {
    
    var board = Array(repeating: Array(repeating: " ", count: 7), count: 7)
    
    init() {
        
    }
    
    func rotateBoard() {
        var c = Array(repeating: Array(repeating: " ", count: 7), count: 7)
        
        for i in 0...6 {
            for j in 0...6 {
                c[j][abs(i-6)] = board[i][j]
            }
        }
        
        for i in 0...6 {
            for j in 0...6 {
                board[i][j] = c[i][j]
            }
        }
        
    }
    
    func putPiece(column: Int, color: String) -> Int {
        var counter = -1
        if column > 6 || column < 0 {
            return -1
        }
        
        for i in stride(from: 6, to: 0, by: -1){
            if self.board[i][column] == " " {
                self.board[i][column] = color
                counter = i
                break
            }
            
        }
        return counter
    }
    
    func checkAlignment(row: Int, column: Int) -> String {
        if checkVertical(row: row, column: column) || checkHorizontal(row: row, column: column) || checkDiagonal(row: row, column: column) || checkAntiDiagonal(row: row, column: column) {
            return self.board[row][column]
        } else {
            return " "
        }
    }
    
    func checkVertical(row: Int, column: Int) -> Bool {
        let c = self.board[row][column]
        var count = 0
        for i in stride(from: 6, to: 0, by: -1) {
            if self.board[i][column] == c {
                count += 1
                if count >= 4 {
                    return true
                }
            } else if self.board[i][column] != c {
                count = 0
            }
        }
        return false
    }
    
    func checkHorizontal(row: Int, column: Int) -> Bool {
        let c = self.board[row][column]
        var count = 0
        for i in stride(from: 6, to: 0, by: -1) {
            if self.board[row][i] == c {
                count += 1
                if count >= 4 {
                    return true
                }
            } else if self.board[row][i] != c {
                count = 0
            }
        }
        return false
    }
    
    func checkDiagonal(row: Int, column: Int) -> Bool {
        let c = self.board[row][column]
        var count = 0
        var i = row
        var j = column
        
        while i >= 0 && j < self.board[i].count && self.board[i][j] == c {
            i -= 1
            j += 1
        }
        
        i += 1
        j -= 1
        
        while i < self.board.count && j >= 0 {
            if self.board[i][j] == c {
                count += 1
                if count >= 4 {
                    return true
                }
            } else if self.board[i][j] != c {
                count = 0
            }
            
            i += 1
            j -= 1
        }
        
        return false
    }
    
    func checkAntiDiagonal(row:Int, column: Int) -> Bool {
        let c = self.board[row][column]
        var count = 0
        var i = row
        var j = column
        
        while i >= 0 && j >= 0 && self.board[i][j] == c {
            i -= 1
            j -= 1
        }
        
        i += 1
        j += 1
        
        while i < self.board.count && j < self.board.count {
            if self.board[i][j] == c {
                count += 1
                if count >= 4 {
                    return true
                }
            } else if self.board[i][j] != c {
                count = 0
            }
            
            i += 1
            j += 1
        }
        return false
    }
    
    func printScreen() {
        //var board = Array(repeating: Array(repeating: " ", count: 7), count: 7)
        var letterArray: [String] = ["A","A","B","B","C","C","D","D","E","E","F","F","G"]
        print()
        for i in -1...12 {
            if i == -1 {
                for j in 0...6 {
                    print("\t\(j)\t", terminator:"")
                }
                print()
                print("---------------------------------------------------------", terminator:"")
            }
            else if i%2 == 0 {
                for j in -1...6 {
                    if j == -1 {
                        print("\(letterArray[i])|\t", terminator:"" )
                    } else {
                        print("\(board[i/2][j])\t|\t", terminator:"")
                    }
                }
            } else {
                print("---------------------------------------------------------", terminator:"")
            }
            print()
            
        }
        print("---------------------------------------------------------")
    }
    func play(column:Int, color:String) ->Bool
    {
        let row = putPiece(column: column, color: color)
        if checkAlignment(row: row, column: column) == color{
            return true
        }
        rotateBoard()
        return false
    }
 
}

var a = ConnectMore()
a.play(column: 0, color: "A")
a.play(column: 6, color: "A")
a.play(column: 0, color: "A")
a.play(column: 0, color: "A")
a.play(column: 0, color: "A")
a.play(column: 0, color: "A")
a.play(column: 0, color: "A")
a.play(column: 0, color: "A")
a.play(column: 0, color: "A")
a.play(column: 0, color: "A")
a.play(column: 0, color: "A")
a.play(column: 0, color: "A")
a.play(column: 4, color: "A")
a.play(column: 3, color: "A")
a.printScreen()

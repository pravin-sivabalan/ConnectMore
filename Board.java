
public class Board {

	public char[][] board;
	private boolean column = true;
	
	public Board(){
		board = new char[7][7];
		
		for(int i=0; i<board.length; i++){
			for(int j=0; j<board[i].length; j++){
				board[i][j] = ' ';
			}
		}
		
		
	}
	
	public void rotateBoard(){
		char[][] c = new char[7][7];
		
		for(int i=0; i<board.length; i++){
			for(int j=0; j<board[i].length; j++){
				if(column){
					c[i][(int)Math.abs(j-6)] = board[i][j];
				}
				else{
					c[(int)Math.abs(i-6)][j] = board[i][j];
				}
					
			}
		}
		
		for(int i=0; i<board.length; i++){
			for(int j=0; j<board[i].length; j++){
				board[i][j] = c[i][j];
			}
		}
		
		column = !column;
	}
	
	public int putPiece(int column, char color){
		if(column > 6 || column < 0)
			return -1;
		
		for(int i=6; i>=0; i--){
			if(this.board[i][column] == ' '){
				this.board[i][column] = color;
				return i;
			}
		}
		return -1;
	}
	
	public char checkAlignment(int row, int column){
		if(checkVertical(row,column) || checkHorizontal(row,column) || 
				checkDiagonal(row,column) || checkAntiDiagonal(row,column))
			return this.board[row][column];
		else
			return ' ';
	}
	
	
	private boolean checkVertical(int row, int column){
		char c = this.board[row][column];
		int count = 0;
		for(int i = 6; i >= 0; i--){//loop thru column for character, reset when not char
			if(this.board[i][column] == c){
				count++;
				if(count >= 4)
					return true;
			}
			else if(this.board[i][column] != c){
				count = 0;
			}		
		}
		
		return false;
	}
	
	private boolean checkHorizontal(int row, int column){
		char c = this.board[row][column];
		int count = 0;
		for(int i = 6; i >= 0; i--){//loop through row
			if(this.board[row][i] == c){
				count++;
				if(count >= 4)
					return true;
			}
			else if(this.board[row][i] != c){
				count = 0;
			}		
		}
		
		return false;
	}
	
	private boolean checkDiagonal(int row, int column){
		char c = this.board[row][column];
		int count = 0;
		int i = row;
		int j = column;
		
		while(i >= 0 && j < this.board[i].length 
				&& this.board[i][j] == c){
			//go up diagonal until you don't see the matching piece
			i--;
			j++;
		}
		
		//then go back down diagonal and count like normal	
		i++;
		j--;
		while(i < this.board.length && j >= 0){
			
			
			if(this.board[i][j] == c){
				count++;
				if(count >= 4)
					return true;
			}
			else if(this.board[i][j] != c){
				count = 0;
			}
			i++;
			j--;
			
		}
		return false;
	}
	
	private boolean checkAntiDiagonal(int row, int column){
		char c = this.board[row][column];
		int count = 0;
		int i = row;
		int j = column;
		
		while(i >= 0 && j >= 0 
				&& this.board[i][j] == c){
			//go up AntiDiagonal until you don't see the matching piece
			i--;
			j--;
		}
		
		//then go back down AntiDiagonal and count like normal	
		i++;
		j++;
		while(i < this.board.length && j < this.board[i].length){
			
			if(this.board[i][j] == c){
				count++;
				if(count >= 4)
					return true;
			}
			else if(this.board[i][j] != c){
				count = 0;
			}
			i++;
			j++;
			
		}
		return false;
	}
	
	public void printScreen(){
		String board = "  0 1 2 3 4 5 6 \n";
		for(int i=0; i < this.board.length; i++){
			board += String.format("%d" , i);
			for(int j = 0; j < this.board[i].length; j++){
				board += "|" + this.board[i][j];
			}
			board += "|\n";
		}
		System.out.println("Red = O\nYellow = X");
		System.out.println(board);
	}
	
	public static void main(String[] args){
		System.out.println("Ran");
		Board b = new Board();
		
		b.board[2][2] = 'X';
		b.board[3][4] = 'O';
		b.board[1][2] = 'Q';
		
		b.rotateBoard();
		
		System.out.println("" + b.board[2][4] + "\n" +  b.board[3][2] + "\n" + b.board[1][4] );
		
	}
	
}

# クラス定義
class Team
	
	# インスタンスが持つ変数 (値)
	attr_accessor :name, :win, :lose, :draw
	
	# インスタンスを初期化するための、特別なメソッド
	def initialize(name, win, lose, draw)
		self.name = name
		self.win = win
		self.lose = lose
		self.draw = draw
	end
	
	# 勝率を計算する処理
	def calc_win_rete
		calc_win_rate = self.win.to_f / (self.win.to_f + self.lose.to_f)
	end
	
	# 成績を表示する処理
	def show_team_result
		puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{calc_win_rete}です。"
	end
end

# 6チーム分のインスタンス
Team1 = Team.new("Giants", 76, 45, 8)
Team2 = Team.new("Tigers", 60, 53, 7)
Team3 = Team.new("Dragons", 60, 55, 5)
Team4 = Team.new("BayStars", 56, 58, 6)
Team5 = Team.new("Carp", 52, 56, 12)
Team6 = Team.new("Swallows", 41, 69, 10)

Team1.show_team_result
Team2.show_team_result
Team3.show_team_result
Team4.show_team_result
Team5.show_team_result
Team6.show_team_result
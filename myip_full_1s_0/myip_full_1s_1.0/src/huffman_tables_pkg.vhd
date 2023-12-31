library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;
use work.entropy_pkg.all;

package huffman_tables_pkg is
	type huffman_val_table is array(HUFFMAN_TABLE_SIZE-1 downto 0) of unsigned(HUFF_NBIT_MAX-1 downto 0);
	type huffman_nbits_table is array(HUFFMAN_TABLE_SIZE-1 downto 0) of unsigned(HUFF_NBIT_MAX_WIDTH-1 downto 0);
	
--	type huff_encode_bits_t is record
--		encoded_bits				: unsigned(HUFF_NBIT_MAX-1 downto 0);
--		encoded_bits_num			: unsigned(HUFF_NBIT_MAX_WIDTH-1 downto 0);
--	end record huff_encode_bits_t;
	
	function huffman_encode(
		num : unsigned
	)return huff_encode_bits_t;
	
	constant huffman_val_table_aucm		: huffman_val_table :=(
			x"031",  -- 255
			x"097",  -- 254
			x"059",  -- 253
			x"0a1",  -- 252
			x"0a0",  -- 251
			x"09f",  -- 250
			x"09e",  -- 249
			x"096",  -- 248
			x"09d",  -- 247
			x"09c",  -- 246
			x"09b",  -- 245
			x"095",  -- 244
			x"09a",  -- 243
			x"099",  -- 242
			x"098",  -- 241
			x"097",  -- 240
			x"096",  -- 239
			x"095",  -- 238
			x"094",  -- 237
			x"093",  -- 236
			x"094",  -- 235
			x"092",  -- 234
			x"091",  -- 233
			x"090",  -- 232
			x"08f",  -- 231
			x"093",  -- 230
			x"08e",  -- 229
			x"08d",  -- 228
			x"08c",  -- 227
			x"092",  -- 226
			x"08b",  -- 225
			x"08a",  -- 224
			x"089",  -- 223
			x"091",  -- 222
			x"088",  -- 221
			x"087",  -- 220
			x"086",  -- 219
			x"085",  -- 218
			x"084",  -- 217
			x"083",  -- 216
			x"082",  -- 215
			x"090",  -- 214
			x"081",  -- 213
			x"080",  -- 212
			x"08f",  -- 211
			x"07f",  -- 210
			x"07e",  -- 209
			x"07d",  -- 208
			x"07c",  -- 207
			x"07b",  -- 206
			x"07a",  -- 205
			x"079",  -- 204
			x"078",  -- 203
			x"077",  -- 202
			x"076",  -- 201
			x"08e",  -- 200
			x"075",  -- 199
			x"074",  -- 198
			x"073",  -- 197
			x"072",  -- 196
			x"071",  -- 195
			x"070",  -- 194
			x"06f",  -- 193
			x"058",  -- 192
			x"06e",  -- 191
			x"06d",  -- 190
			x"08d",  -- 189
			x"08c",  -- 188
			x"06c",  -- 187
			x"06b",  -- 186
			x"06a",  -- 185
			x"057",  -- 184
			x"069",  -- 183
			x"068",  -- 182
			x"067",  -- 181
			x"08b",  -- 180
			x"066",  -- 179
			x"065",  -- 178
			x"064",  -- 177
			x"08a",  -- 176
			x"063",  -- 175
			x"062",  -- 174
			x"061",  -- 173
			x"060",  -- 172
			x"05f",  -- 171
			x"05e",  -- 170
			x"05d",  -- 169
			x"089",  -- 168
			x"05c",  -- 167
			x"05b",  -- 166
			x"05a",  -- 165
			x"059",  -- 164
			x"058",  -- 163
			x"057",  -- 162
			x"056",  -- 161
			x"056",  -- 160
			x"055",  -- 159
			x"054",  -- 158
			x"053",  -- 157
			x"052",  -- 156
			x"051",  -- 155
			x"050",  -- 154
			x"088",  -- 153
			x"087",  -- 152
			x"04f",  -- 151
			x"04e",  -- 150
			x"04d",  -- 149
			x"04c",  -- 148
			x"04b",  -- 147
			x"04a",  -- 146
			x"049",  -- 145
			x"086",  -- 144
			x"085",  -- 143
			x"048",  -- 142
			x"047",  -- 141
			x"084",  -- 140
			x"083",  -- 139
			x"046",  -- 138
			x"045",  -- 137
			x"082",  -- 136
			x"044",  -- 135
			x"081",  -- 134
			x"055",  -- 133
			x"054",  -- 132
			x"053",  -- 131
			x"030",  -- 130
			x"00d",  -- 129
			x"019",  -- 128
			x"052",  -- 127
			x"080",  -- 126
			x"07f",  -- 125
			x"07e",  -- 124
			x"07d",  -- 123
			x"07c",  -- 122
			x"07b",  -- 121
			x"07a",  -- 120
			x"043",  -- 119
			x"079",  -- 118
			x"042",  -- 117
			x"041",  -- 116
			x"040",  -- 115
			x"078",  -- 114
			x"077",  -- 113
			x"076",  -- 112
			x"075",  -- 111
			x"074",  -- 110
			x"03f",  -- 109
			x"073",  -- 108
			x"03e",  -- 107
			x"072",  -- 106
			x"071",  -- 105
			x"03d",  -- 104
			x"03c",  -- 103
			x"070",  -- 102
			x"03b",  -- 101
			x"06f",  -- 100
			x"06e",  -- 99
			x"06d",  -- 98
			x"03a",  -- 97
			x"06c",  -- 96
			x"039",  -- 95
			x"038",  -- 94
			x"06b",  -- 93
			x"037",  -- 92
			x"036",  -- 91
			x"035",  -- 90
			x"034",  -- 89
			x"033",  -- 88
			x"032",  -- 87
			x"06a",  -- 86
			x"069",  -- 85
			x"068",  -- 84
			x"067",  -- 83
			x"066",  -- 82
			x"031",  -- 81
			x"065",  -- 80
			x"030",  -- 79
			x"02f",  -- 78
			x"064",  -- 77
			x"063",  -- 76
			x"062",  -- 75
			x"02e",  -- 74
			x"061",  -- 73
			x"02d",  -- 72
			x"02c",  -- 71
			x"051",  -- 70
			x"060",  -- 69
			x"02b",  -- 68
			x"05f",  -- 67
			x"02a",  -- 66
			x"029",  -- 65
			x"02f",  -- 64
			x"028",  -- 63
			x"027",  -- 62
			x"026",  -- 61
			x"025",  -- 60
			x"024",  -- 59
			x"001",  -- 58
			x"000",  -- 57
			x"05e",  -- 56
			x"023",  -- 55
			x"022",  -- 54
			x"021",  -- 53
			x"020",  -- 52
			x"050",  -- 51
			x"01f",  -- 50
			x"01e",  -- 49
			x"01d",  -- 48
			x"01c",  -- 47
			x"05d",  -- 46
			x"05c",  -- 45
			x"05b",  -- 44
			x"01b",  -- 43
			x"01a",  -- 42
			x"019",  -- 41
			x"05a",  -- 40
			x"018",  -- 39
			x"017",  -- 38
			x"016",  -- 37
			x"015",  -- 36
			x"014",  -- 35
			x"013",  -- 34
			x"012",  -- 33
			x"059",  -- 32
			x"011",  -- 31
			x"010",  -- 30
			x"00f",  -- 29
			x"00e",  -- 28
			x"00d",  -- 27
			x"00c",  -- 26
			x"00b",  -- 25
			x"00a",  -- 24
			x"009",  -- 23
			x"008",  -- 22
			x"04f",  -- 21
			x"007",  -- 20
			x"006",  -- 19
			x"005",  -- 18
			x"04e",  -- 17
			x"058",  -- 16
			x"004",  -- 15
			x"003",  -- 14
			x"002",  -- 13
			x"057",  -- 12
			x"001",  -- 11
			x"056",  -- 10
			x"055",  -- 9
			x"04d",  -- 8
			x"054",  -- 7
			x"053",  -- 6
			x"052",  -- 5
			x"051",  -- 4
			x"04c",  -- 3
			x"02e",  -- 2
			x"02d",  -- 1
			x"007"  -- 0
			);
			
			
	constant huffman_nbits_table_aucm	: huffman_nbits_table := (
					x"6",  -- 255
					x"8",  -- 254
					x"7",  -- 253
					x"9",  -- 252
					x"9",  -- 251
					x"9",  -- 250
					x"9",  -- 249
					x"8",  -- 248
					x"9",  -- 247
					x"9",  -- 246
					x"9",  -- 245
					x"8",  -- 244
					x"9",  -- 243
					x"9",  -- 242
					x"9",  -- 241
					x"9",  -- 240
					x"9",  -- 239
					x"9",  -- 238
					x"9",  -- 237
					x"9",  -- 236
					x"8",  -- 235
					x"9",  -- 234
					x"9",  -- 233
					x"9",  -- 232
					x"9",  -- 231
					x"8",  -- 230
					x"9",  -- 229
					x"9",  -- 228
					x"9",  -- 227
					x"8",  -- 226
					x"9",  -- 225
					x"9",  -- 224
					x"9",  -- 223
					x"8",  -- 222
					x"9",  -- 221
					x"9",  -- 220
					x"9",  -- 219
					x"9",  -- 218
					x"9",  -- 217
					x"9",  -- 216
					x"9",  -- 215
					x"8",  -- 214
					x"9",  -- 213
					x"9",  -- 212
					x"8",  -- 211
					x"9",  -- 210
					x"9",  -- 209
					x"9",  -- 208
					x"9",  -- 207
					x"9",  -- 206
					x"9",  -- 205
					x"9",  -- 204
					x"9",  -- 203
					x"9",  -- 202
					x"9",  -- 201
					x"8",  -- 200
					x"9",  -- 199
					x"9",  -- 198
					x"9",  -- 197
					x"9",  -- 196
					x"9",  -- 195
					x"9",  -- 194
					x"9",  -- 193
					x"7",  -- 192
					x"9",  -- 191
					x"9",  -- 190
					x"8",  -- 189
					x"8",  -- 188
					x"9",  -- 187
					x"9",  -- 186
					x"9",  -- 185
					x"7",  -- 184
					x"9",  -- 183
					x"9",  -- 182
					x"9",  -- 181
					x"8",  -- 180
					x"9",  -- 179
					x"9",  -- 178
					x"9",  -- 177
					x"8",  -- 176
					x"9",  -- 175
					x"9",  -- 174
					x"9",  -- 173
					x"9",  -- 172
					x"9",  -- 171
					x"9",  -- 170
					x"9",  -- 169
					x"8",  -- 168
					x"9",  -- 167
					x"9",  -- 166
					x"9",  -- 165
					x"9",  -- 164
					x"9",  -- 163
					x"9",  -- 162
					x"9",  -- 161
					x"7",  -- 160
					x"9",  -- 159
					x"9",  -- 158
					x"9",  -- 157
					x"9",  -- 156
					x"9",  -- 155
					x"9",  -- 154
					x"8",  -- 153
					x"8",  -- 152
					x"9",  -- 151
					x"9",  -- 150
					x"9",  -- 149
					x"9",  -- 148
					x"9",  -- 147
					x"9",  -- 146
					x"9",  -- 145
					x"8",  -- 144
					x"8",  -- 143
					x"9",  -- 142
					x"9",  -- 141
					x"8",  -- 140
					x"8",  -- 139
					x"9",  -- 138
					x"9",  -- 137
					x"8",  -- 136
					x"9",  -- 135
					x"8",  -- 134
					x"7",  -- 133
					x"7",  -- 132
					x"7",  -- 131
					x"6",  -- 130
					x"4",  -- 129
					x"5",  -- 128
					x"7",  -- 127
					x"8",  -- 126
					x"8",  -- 125
					x"8",  -- 124
					x"8",  -- 123
					x"8",  -- 122
					x"8",  -- 121
					x"8",  -- 120
					x"9",  -- 119
					x"8",  -- 118
					x"9",  -- 117
					x"9",  -- 116
					x"9",  -- 115
					x"8",  -- 114
					x"8",  -- 113
					x"8",  -- 112
					x"8",  -- 111
					x"8",  -- 110
					x"9",  -- 109
					x"8",  -- 108
					x"9",  -- 107
					x"8",  -- 106
					x"8",  -- 105
					x"9",  -- 104
					x"9",  -- 103
					x"8",  -- 102
					x"9",  -- 101
					x"8",  -- 100
					x"8",  -- 99
					x"8",  -- 98
					x"9",  -- 97
					x"8",  -- 96
					x"9",  -- 95
					x"9",  -- 94
					x"8",  -- 93
					x"9",  -- 92
					x"9",  -- 91
					x"9",  -- 90
					x"9",  -- 89
					x"9",  -- 88
					x"9",  -- 87
					x"8",  -- 86
					x"8",  -- 85
					x"8",  -- 84
					x"8",  -- 83
					x"8",  -- 82
					x"9",  -- 81
					x"8",  -- 80
					x"9",  -- 79
					x"9",  -- 78
					x"8",  -- 77
					x"8",  -- 76
					x"8",  -- 75
					x"9",  -- 74
					x"8",  -- 73
					x"9",  -- 72
					x"9",  -- 71
					x"7",  -- 70
					x"8",  -- 69
					x"9",  -- 68
					x"8",  -- 67
					x"9",  -- 66
					x"9",  -- 65
					x"6",  -- 64
					x"9",  -- 63
					x"9",  -- 62
					x"9",  -- 61
					x"9",  -- 60
					x"9",  -- 59
					x"a",  -- 58
					x"a",  -- 57
					x"8",  -- 56
					x"9",  -- 55
					x"9",  -- 54
					x"9",  -- 53
					x"9",  -- 52
					x"7",  -- 51
					x"9",  -- 50
					x"9",  -- 49
					x"9",  -- 48
					x"9",  -- 47
					x"8",  -- 46
					x"8",  -- 45
					x"8",  -- 44
					x"9",  -- 43
					x"9",  -- 42
					x"9",  -- 41
					x"8",  -- 40
					x"9",  -- 39
					x"9",  -- 38
					x"9",  -- 37
					x"9",  -- 36
					x"9",  -- 35
					x"9",  -- 34
					x"9",  -- 33
					x"8",  -- 32
					x"9",  -- 31
					x"9",  -- 30
					x"9",  -- 29
					x"9",  -- 28
					x"9",  -- 27
					x"9",  -- 26
					x"9",  -- 25
					x"9",  -- 24
					x"9",  -- 23
					x"9",  -- 22
					x"7",  -- 21
					x"9",  -- 20
					x"9",  -- 19
					x"9",  -- 18
					x"7",  -- 17
					x"8",  -- 16
					x"9",  -- 15
					x"9",  -- 14
					x"9",  -- 13
					x"8",  -- 12
					x"9",  -- 11
					x"8",  -- 10
					x"8",  -- 9
					x"7",  -- 8
					x"8",  -- 7
					x"8",  -- 6
					x"8",  -- 5
					x"8",  -- 4
					x"7",  -- 3
					x"6",  -- 2
					x"6",  -- 1
					x"3"  -- 0
			);

end package;

package body huffman_tables_pkg is

	function huffman_encode(
		num : unsigned
	)return huff_encode_bits_t is
		variable result : huff_encode_bits_t;
	begin
		result.encoded_bits			:= huffman_val_table_aucm(to_integer(num));
		result.encoded_bits_num		:= huffman_nbits_table_aucm(to_integer(num));
		return result;
	end function;
end package body huffman_tables_pkg;
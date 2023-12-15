{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,544) ([28736,300,5784,32,0,0,0,0,0,53240,64549,723,0,0,0,0,0,0,45505,24580,90,0,0,0,1024,0,8192,38456,19456,11,256,0,2048,9614,54016,1026,4807,27008,1,256,0,49408,1201,23136,57472,600,11568,28736,300,5784,16352,61591,3919,0,0,2048,0,0,0,0,0,0,25474,49161,180,47615,32646,90,0,0,0,32768,0,57344,46911,20464,11,0,4,63488,9695,54268,2,0,0,33280,2403,46272,49408,1201,23136,57472,600,11568,28736,300,5784,14368,150,2892,7184,75,1446,36360,37,723,50948,32786,361,25474,49161,180,45505,24580,32858,22752,12290,16429,11376,38913,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25474,49161,180,32768,48,4,0,0,16384,11376,38913,8214,38456,19456,61451,23455,43000,5,0,0,1024,4807,27008,1,0,0,0,0,256,65408,49756,11647,32704,58158,5791,0,8,0,0,776,64,0,0,0,0,0,0,0,0,128,48639,32644,32858,22752,12290,45,8192,12,1,2048,0,4096,19228,42496,2053,9614,54016,1026,4807,27008,1,256,0,49408,1201,23136,65408,49756,11711,0,0,0,0,0,0,0,776,64,0,0,1024,0,0,0,0,0,0,0,1,32768,22752,12290,49197,28287,40929,22,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","ModelList","Type","num","'+'","\"-\"","\"*\"","\"/\"","\"&&\"","true","false","if","then","else","\"||\"","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","'>'","'<'","\">=\"","\"<=\"","\"==\"","\"!=\"","\"!\"","for","to","do","while","List","first","second","','","'['","']'","%eof"]
        bit_start = st * 47
        bit_end = (st + 1) * 47
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..46]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (7) = happyShift action_2
action_0 (13) = happyShift action_4
action_0 (14) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (19) = happyShift action_7
action_0 (20) = happyShift action_8
action_0 (22) = happyShift action_9
action_0 (25) = happyShift action_10
action_0 (36) = happyShift action_11
action_0 (37) = happyShift action_12
action_0 (40) = happyShift action_13
action_0 (42) = happyShift action_14
action_0 (43) = happyShift action_15
action_0 (45) = happyShift action_16
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (7) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (7) = happyShift action_2
action_3 (8) = happyShift action_29
action_3 (9) = happyShift action_30
action_3 (10) = happyShift action_31
action_3 (11) = happyShift action_32
action_3 (12) = happyShift action_33
action_3 (13) = happyShift action_4
action_3 (14) = happyShift action_5
action_3 (15) = happyShift action_6
action_3 (18) = happyShift action_34
action_3 (19) = happyShift action_7
action_3 (20) = happyShift action_8
action_3 (22) = happyShift action_9
action_3 (25) = happyShift action_10
action_3 (30) = happyShift action_35
action_3 (31) = happyShift action_36
action_3 (32) = happyShift action_37
action_3 (33) = happyShift action_38
action_3 (34) = happyShift action_39
action_3 (35) = happyShift action_40
action_3 (36) = happyShift action_11
action_3 (37) = happyShift action_12
action_3 (40) = happyShift action_13
action_3 (42) = happyShift action_14
action_3 (43) = happyShift action_15
action_3 (45) = happyShift action_16
action_3 (47) = happyAccept
action_3 (4) = happyGoto action_28
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (7) = happyShift action_2
action_6 (13) = happyShift action_4
action_6 (14) = happyShift action_5
action_6 (15) = happyShift action_6
action_6 (19) = happyShift action_7
action_6 (20) = happyShift action_8
action_6 (22) = happyShift action_9
action_6 (25) = happyShift action_10
action_6 (36) = happyShift action_11
action_6 (37) = happyShift action_12
action_6 (40) = happyShift action_13
action_6 (42) = happyShift action_14
action_6 (43) = happyShift action_15
action_6 (45) = happyShift action_16
action_6 (4) = happyGoto action_27
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_11

action_8 (19) = happyShift action_26
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (7) = happyShift action_2
action_9 (13) = happyShift action_4
action_9 (14) = happyShift action_5
action_9 (15) = happyShift action_6
action_9 (19) = happyShift action_7
action_9 (20) = happyShift action_8
action_9 (22) = happyShift action_9
action_9 (25) = happyShift action_10
action_9 (36) = happyShift action_11
action_9 (37) = happyShift action_12
action_9 (40) = happyShift action_13
action_9 (42) = happyShift action_14
action_9 (43) = happyShift action_15
action_9 (45) = happyShift action_16
action_9 (4) = happyGoto action_25
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (19) = happyShift action_24
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_2
action_11 (13) = happyShift action_4
action_11 (14) = happyShift action_5
action_11 (15) = happyShift action_6
action_11 (19) = happyShift action_7
action_11 (20) = happyShift action_8
action_11 (22) = happyShift action_9
action_11 (25) = happyShift action_10
action_11 (36) = happyShift action_11
action_11 (37) = happyShift action_12
action_11 (40) = happyShift action_13
action_11 (42) = happyShift action_14
action_11 (43) = happyShift action_15
action_11 (45) = happyShift action_16
action_11 (4) = happyGoto action_23
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (7) = happyShift action_2
action_12 (13) = happyShift action_4
action_12 (14) = happyShift action_5
action_12 (15) = happyShift action_6
action_12 (19) = happyShift action_7
action_12 (20) = happyShift action_8
action_12 (22) = happyShift action_9
action_12 (25) = happyShift action_10
action_12 (36) = happyShift action_11
action_12 (37) = happyShift action_12
action_12 (40) = happyShift action_13
action_12 (42) = happyShift action_14
action_12 (43) = happyShift action_15
action_12 (45) = happyShift action_16
action_12 (4) = happyGoto action_22
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (22) = happyShift action_21
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (7) = happyShift action_2
action_14 (13) = happyShift action_4
action_14 (14) = happyShift action_5
action_14 (15) = happyShift action_6
action_14 (19) = happyShift action_7
action_14 (20) = happyShift action_8
action_14 (22) = happyShift action_9
action_14 (25) = happyShift action_10
action_14 (36) = happyShift action_11
action_14 (37) = happyShift action_12
action_14 (40) = happyShift action_13
action_14 (42) = happyShift action_14
action_14 (43) = happyShift action_15
action_14 (45) = happyShift action_16
action_14 (4) = happyGoto action_20
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (7) = happyShift action_2
action_15 (13) = happyShift action_4
action_15 (14) = happyShift action_5
action_15 (15) = happyShift action_6
action_15 (19) = happyShift action_7
action_15 (20) = happyShift action_8
action_15 (22) = happyShift action_9
action_15 (25) = happyShift action_10
action_15 (36) = happyShift action_11
action_15 (37) = happyShift action_12
action_15 (40) = happyShift action_13
action_15 (42) = happyShift action_14
action_15 (43) = happyShift action_15
action_15 (45) = happyShift action_16
action_15 (4) = happyGoto action_19
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (7) = happyShift action_2
action_16 (13) = happyShift action_4
action_16 (14) = happyShift action_5
action_16 (15) = happyShift action_6
action_16 (19) = happyShift action_7
action_16 (20) = happyShift action_8
action_16 (22) = happyShift action_9
action_16 (25) = happyShift action_10
action_16 (36) = happyShift action_11
action_16 (37) = happyShift action_12
action_16 (40) = happyShift action_13
action_16 (42) = happyShift action_14
action_16 (43) = happyShift action_15
action_16 (45) = happyShift action_16
action_16 (4) = happyGoto action_17
action_16 (5) = happyGoto action_18
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_2
action_17 (8) = happyShift action_29
action_17 (9) = happyShift action_30
action_17 (10) = happyShift action_31
action_17 (11) = happyShift action_32
action_17 (12) = happyShift action_33
action_17 (13) = happyShift action_4
action_17 (14) = happyShift action_5
action_17 (15) = happyShift action_6
action_17 (18) = happyShift action_34
action_17 (19) = happyShift action_7
action_17 (20) = happyShift action_8
action_17 (22) = happyShift action_9
action_17 (25) = happyShift action_10
action_17 (30) = happyShift action_35
action_17 (31) = happyShift action_36
action_17 (32) = happyShift action_37
action_17 (33) = happyShift action_38
action_17 (34) = happyShift action_39
action_17 (35) = happyShift action_40
action_17 (36) = happyShift action_11
action_17 (37) = happyShift action_12
action_17 (40) = happyShift action_13
action_17 (42) = happyShift action_14
action_17 (43) = happyShift action_15
action_17 (44) = happyShift action_60
action_17 (45) = happyShift action_16
action_17 (4) = happyGoto action_28
action_17 _ = happyReduce_28

action_18 (46) = happyShift action_59
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_2
action_19 (8) = happyShift action_29
action_19 (9) = happyShift action_30
action_19 (10) = happyShift action_31
action_19 (11) = happyShift action_32
action_19 (12) = happyShift action_33
action_19 (13) = happyShift action_4
action_19 (14) = happyShift action_5
action_19 (15) = happyShift action_6
action_19 (18) = happyShift action_34
action_19 (19) = happyShift action_7
action_19 (20) = happyShift action_8
action_19 (22) = happyShift action_9
action_19 (25) = happyShift action_10
action_19 (30) = happyShift action_35
action_19 (31) = happyShift action_36
action_19 (32) = happyShift action_37
action_19 (33) = happyShift action_38
action_19 (34) = happyShift action_39
action_19 (35) = happyShift action_40
action_19 (36) = happyShift action_11
action_19 (37) = happyShift action_12
action_19 (40) = happyShift action_13
action_19 (42) = happyShift action_14
action_19 (43) = happyShift action_15
action_19 (45) = happyShift action_16
action_19 (4) = happyGoto action_28
action_19 _ = happyReduce_27

action_20 (7) = happyShift action_2
action_20 (8) = happyShift action_29
action_20 (9) = happyShift action_30
action_20 (10) = happyShift action_31
action_20 (11) = happyShift action_32
action_20 (12) = happyShift action_33
action_20 (13) = happyShift action_4
action_20 (14) = happyShift action_5
action_20 (15) = happyShift action_6
action_20 (18) = happyShift action_34
action_20 (19) = happyShift action_7
action_20 (20) = happyShift action_8
action_20 (22) = happyShift action_9
action_20 (25) = happyShift action_10
action_20 (30) = happyShift action_35
action_20 (31) = happyShift action_36
action_20 (32) = happyShift action_37
action_20 (33) = happyShift action_38
action_20 (34) = happyShift action_39
action_20 (35) = happyShift action_40
action_20 (36) = happyShift action_11
action_20 (37) = happyShift action_12
action_20 (40) = happyShift action_13
action_20 (42) = happyShift action_14
action_20 (43) = happyShift action_15
action_20 (45) = happyShift action_16
action_20 (4) = happyGoto action_28
action_20 _ = happyReduce_26

action_21 (7) = happyShift action_2
action_21 (13) = happyShift action_4
action_21 (14) = happyShift action_5
action_21 (15) = happyShift action_6
action_21 (19) = happyShift action_7
action_21 (20) = happyShift action_8
action_21 (22) = happyShift action_9
action_21 (25) = happyShift action_10
action_21 (36) = happyShift action_11
action_21 (37) = happyShift action_12
action_21 (40) = happyShift action_13
action_21 (42) = happyShift action_14
action_21 (43) = happyShift action_15
action_21 (45) = happyShift action_16
action_21 (4) = happyGoto action_58
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_2
action_22 (8) = happyShift action_29
action_22 (9) = happyShift action_30
action_22 (10) = happyShift action_31
action_22 (11) = happyShift action_32
action_22 (12) = happyShift action_33
action_22 (13) = happyShift action_4
action_22 (14) = happyShift action_5
action_22 (15) = happyShift action_6
action_22 (18) = happyShift action_34
action_22 (19) = happyShift action_7
action_22 (20) = happyShift action_8
action_22 (22) = happyShift action_9
action_22 (24) = happyShift action_57
action_22 (25) = happyShift action_10
action_22 (30) = happyShift action_35
action_22 (31) = happyShift action_36
action_22 (32) = happyShift action_37
action_22 (33) = happyShift action_38
action_22 (34) = happyShift action_39
action_22 (35) = happyShift action_40
action_22 (36) = happyShift action_11
action_22 (37) = happyShift action_12
action_22 (40) = happyShift action_13
action_22 (42) = happyShift action_14
action_22 (43) = happyShift action_15
action_22 (45) = happyShift action_16
action_22 (4) = happyGoto action_28
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_2
action_23 (8) = happyShift action_29
action_23 (9) = happyShift action_30
action_23 (10) = happyShift action_31
action_23 (11) = happyShift action_32
action_23 (12) = happyShift action_33
action_23 (13) = happyShift action_4
action_23 (14) = happyShift action_5
action_23 (15) = happyShift action_6
action_23 (18) = happyShift action_34
action_23 (19) = happyShift action_7
action_23 (20) = happyShift action_8
action_23 (22) = happyShift action_9
action_23 (25) = happyShift action_10
action_23 (30) = happyShift action_35
action_23 (31) = happyShift action_36
action_23 (32) = happyShift action_37
action_23 (33) = happyShift action_38
action_23 (34) = happyShift action_39
action_23 (35) = happyShift action_40
action_23 (36) = happyShift action_11
action_23 (37) = happyShift action_12
action_23 (40) = happyShift action_13
action_23 (42) = happyShift action_14
action_23 (43) = happyShift action_15
action_23 (45) = happyShift action_16
action_23 (4) = happyGoto action_28
action_23 _ = happyReduce_22

action_24 (24) = happyShift action_56
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_2
action_25 (8) = happyShift action_29
action_25 (9) = happyShift action_30
action_25 (10) = happyShift action_31
action_25 (11) = happyShift action_32
action_25 (12) = happyShift action_33
action_25 (13) = happyShift action_4
action_25 (14) = happyShift action_5
action_25 (15) = happyShift action_6
action_25 (18) = happyShift action_34
action_25 (19) = happyShift action_7
action_25 (20) = happyShift action_8
action_25 (22) = happyShift action_9
action_25 (23) = happyShift action_55
action_25 (25) = happyShift action_10
action_25 (30) = happyShift action_35
action_25 (31) = happyShift action_36
action_25 (32) = happyShift action_37
action_25 (33) = happyShift action_38
action_25 (34) = happyShift action_39
action_25 (35) = happyShift action_40
action_25 (36) = happyShift action_11
action_25 (37) = happyShift action_12
action_25 (40) = happyShift action_13
action_25 (42) = happyShift action_14
action_25 (43) = happyShift action_15
action_25 (45) = happyShift action_16
action_25 (4) = happyGoto action_28
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (29) = happyShift action_54
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_2
action_27 (8) = happyShift action_29
action_27 (9) = happyShift action_30
action_27 (10) = happyShift action_31
action_27 (11) = happyShift action_32
action_27 (12) = happyShift action_33
action_27 (13) = happyShift action_4
action_27 (14) = happyShift action_5
action_27 (15) = happyShift action_6
action_27 (16) = happyShift action_53
action_27 (18) = happyShift action_34
action_27 (19) = happyShift action_7
action_27 (20) = happyShift action_8
action_27 (22) = happyShift action_9
action_27 (25) = happyShift action_10
action_27 (30) = happyShift action_35
action_27 (31) = happyShift action_36
action_27 (32) = happyShift action_37
action_27 (33) = happyShift action_38
action_27 (34) = happyShift action_39
action_27 (35) = happyShift action_40
action_27 (36) = happyShift action_11
action_27 (37) = happyShift action_12
action_27 (40) = happyShift action_13
action_27 (42) = happyShift action_14
action_27 (43) = happyShift action_15
action_27 (45) = happyShift action_16
action_27 (4) = happyGoto action_28
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_2
action_28 (8) = happyShift action_29
action_28 (9) = happyShift action_30
action_28 (10) = happyShift action_31
action_28 (11) = happyShift action_32
action_28 (12) = happyShift action_33
action_28 (13) = happyShift action_4
action_28 (14) = happyShift action_5
action_28 (15) = happyShift action_6
action_28 (18) = happyShift action_34
action_28 (19) = happyShift action_7
action_28 (20) = happyShift action_8
action_28 (22) = happyShift action_9
action_28 (25) = happyShift action_10
action_28 (30) = happyShift action_35
action_28 (31) = happyShift action_36
action_28 (32) = happyShift action_37
action_28 (33) = happyShift action_38
action_28 (34) = happyShift action_39
action_28 (35) = happyShift action_40
action_28 (36) = happyShift action_11
action_28 (37) = happyShift action_12
action_28 (40) = happyShift action_13
action_28 (42) = happyShift action_14
action_28 (43) = happyShift action_15
action_28 (45) = happyShift action_16
action_28 (4) = happyGoto action_28
action_28 _ = happyReduce_13

action_29 (7) = happyShift action_2
action_29 (13) = happyShift action_4
action_29 (14) = happyShift action_5
action_29 (15) = happyShift action_6
action_29 (19) = happyShift action_7
action_29 (20) = happyShift action_8
action_29 (22) = happyShift action_9
action_29 (25) = happyShift action_10
action_29 (36) = happyShift action_11
action_29 (37) = happyShift action_12
action_29 (40) = happyShift action_13
action_29 (42) = happyShift action_14
action_29 (43) = happyShift action_15
action_29 (45) = happyShift action_16
action_29 (4) = happyGoto action_52
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_2
action_30 (13) = happyShift action_4
action_30 (14) = happyShift action_5
action_30 (15) = happyShift action_6
action_30 (19) = happyShift action_7
action_30 (20) = happyShift action_8
action_30 (22) = happyShift action_9
action_30 (25) = happyShift action_10
action_30 (36) = happyShift action_11
action_30 (37) = happyShift action_12
action_30 (40) = happyShift action_13
action_30 (42) = happyShift action_14
action_30 (43) = happyShift action_15
action_30 (45) = happyShift action_16
action_30 (4) = happyGoto action_51
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_2
action_31 (13) = happyShift action_4
action_31 (14) = happyShift action_5
action_31 (15) = happyShift action_6
action_31 (19) = happyShift action_7
action_31 (20) = happyShift action_8
action_31 (22) = happyShift action_9
action_31 (25) = happyShift action_10
action_31 (36) = happyShift action_11
action_31 (37) = happyShift action_12
action_31 (40) = happyShift action_13
action_31 (42) = happyShift action_14
action_31 (43) = happyShift action_15
action_31 (45) = happyShift action_16
action_31 (4) = happyGoto action_50
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (7) = happyShift action_2
action_32 (13) = happyShift action_4
action_32 (14) = happyShift action_5
action_32 (15) = happyShift action_6
action_32 (19) = happyShift action_7
action_32 (20) = happyShift action_8
action_32 (22) = happyShift action_9
action_32 (25) = happyShift action_10
action_32 (36) = happyShift action_11
action_32 (37) = happyShift action_12
action_32 (40) = happyShift action_13
action_32 (42) = happyShift action_14
action_32 (43) = happyShift action_15
action_32 (45) = happyShift action_16
action_32 (4) = happyGoto action_49
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (7) = happyShift action_2
action_33 (13) = happyShift action_4
action_33 (14) = happyShift action_5
action_33 (15) = happyShift action_6
action_33 (19) = happyShift action_7
action_33 (20) = happyShift action_8
action_33 (22) = happyShift action_9
action_33 (25) = happyShift action_10
action_33 (36) = happyShift action_11
action_33 (37) = happyShift action_12
action_33 (40) = happyShift action_13
action_33 (42) = happyShift action_14
action_33 (43) = happyShift action_15
action_33 (45) = happyShift action_16
action_33 (4) = happyGoto action_48
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (7) = happyShift action_2
action_34 (13) = happyShift action_4
action_34 (14) = happyShift action_5
action_34 (15) = happyShift action_6
action_34 (19) = happyShift action_7
action_34 (20) = happyShift action_8
action_34 (22) = happyShift action_9
action_34 (25) = happyShift action_10
action_34 (36) = happyShift action_11
action_34 (37) = happyShift action_12
action_34 (40) = happyShift action_13
action_34 (42) = happyShift action_14
action_34 (43) = happyShift action_15
action_34 (45) = happyShift action_16
action_34 (4) = happyGoto action_47
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (7) = happyShift action_2
action_35 (13) = happyShift action_4
action_35 (14) = happyShift action_5
action_35 (15) = happyShift action_6
action_35 (19) = happyShift action_7
action_35 (20) = happyShift action_8
action_35 (22) = happyShift action_9
action_35 (25) = happyShift action_10
action_35 (36) = happyShift action_11
action_35 (37) = happyShift action_12
action_35 (40) = happyShift action_13
action_35 (42) = happyShift action_14
action_35 (43) = happyShift action_15
action_35 (45) = happyShift action_16
action_35 (4) = happyGoto action_46
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_2
action_36 (13) = happyShift action_4
action_36 (14) = happyShift action_5
action_36 (15) = happyShift action_6
action_36 (19) = happyShift action_7
action_36 (20) = happyShift action_8
action_36 (22) = happyShift action_9
action_36 (25) = happyShift action_10
action_36 (36) = happyShift action_11
action_36 (37) = happyShift action_12
action_36 (40) = happyShift action_13
action_36 (42) = happyShift action_14
action_36 (43) = happyShift action_15
action_36 (45) = happyShift action_16
action_36 (4) = happyGoto action_45
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_2
action_37 (13) = happyShift action_4
action_37 (14) = happyShift action_5
action_37 (15) = happyShift action_6
action_37 (19) = happyShift action_7
action_37 (20) = happyShift action_8
action_37 (22) = happyShift action_9
action_37 (25) = happyShift action_10
action_37 (36) = happyShift action_11
action_37 (37) = happyShift action_12
action_37 (40) = happyShift action_13
action_37 (42) = happyShift action_14
action_37 (43) = happyShift action_15
action_37 (45) = happyShift action_16
action_37 (4) = happyGoto action_44
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (7) = happyShift action_2
action_38 (13) = happyShift action_4
action_38 (14) = happyShift action_5
action_38 (15) = happyShift action_6
action_38 (19) = happyShift action_7
action_38 (20) = happyShift action_8
action_38 (22) = happyShift action_9
action_38 (25) = happyShift action_10
action_38 (36) = happyShift action_11
action_38 (37) = happyShift action_12
action_38 (40) = happyShift action_13
action_38 (42) = happyShift action_14
action_38 (43) = happyShift action_15
action_38 (45) = happyShift action_16
action_38 (4) = happyGoto action_43
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (7) = happyShift action_2
action_39 (13) = happyShift action_4
action_39 (14) = happyShift action_5
action_39 (15) = happyShift action_6
action_39 (19) = happyShift action_7
action_39 (20) = happyShift action_8
action_39 (22) = happyShift action_9
action_39 (25) = happyShift action_10
action_39 (36) = happyShift action_11
action_39 (37) = happyShift action_12
action_39 (40) = happyShift action_13
action_39 (42) = happyShift action_14
action_39 (43) = happyShift action_15
action_39 (45) = happyShift action_16
action_39 (4) = happyGoto action_42
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_2
action_40 (13) = happyShift action_4
action_40 (14) = happyShift action_5
action_40 (15) = happyShift action_6
action_40 (19) = happyShift action_7
action_40 (20) = happyShift action_8
action_40 (22) = happyShift action_9
action_40 (25) = happyShift action_10
action_40 (36) = happyShift action_11
action_40 (37) = happyShift action_12
action_40 (40) = happyShift action_13
action_40 (42) = happyShift action_14
action_40 (43) = happyShift action_15
action_40 (45) = happyShift action_16
action_40 (4) = happyGoto action_41
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (7) = happyShift action_2
action_41 (8) = happyShift action_29
action_41 (9) = happyShift action_30
action_41 (10) = happyShift action_31
action_41 (11) = happyShift action_32
action_41 (12) = happyShift action_33
action_41 (13) = happyShift action_4
action_41 (14) = happyShift action_5
action_41 (15) = happyShift action_6
action_41 (18) = happyShift action_34
action_41 (19) = happyShift action_7
action_41 (20) = happyShift action_8
action_41 (22) = happyShift action_9
action_41 (25) = happyShift action_10
action_41 (30) = happyShift action_35
action_41 (31) = happyShift action_36
action_41 (32) = happyShift action_37
action_41 (33) = happyShift action_38
action_41 (34) = happyShift action_39
action_41 (35) = happyShift action_40
action_41 (36) = happyShift action_11
action_41 (37) = happyShift action_12
action_41 (40) = happyShift action_13
action_41 (42) = happyShift action_14
action_41 (43) = happyShift action_15
action_41 (45) = happyShift action_16
action_41 (4) = happyGoto action_28
action_41 _ = happyReduce_21

action_42 (7) = happyShift action_2
action_42 (8) = happyShift action_29
action_42 (9) = happyShift action_30
action_42 (10) = happyShift action_31
action_42 (11) = happyShift action_32
action_42 (12) = happyShift action_33
action_42 (13) = happyShift action_4
action_42 (14) = happyShift action_5
action_42 (15) = happyShift action_6
action_42 (18) = happyShift action_34
action_42 (19) = happyShift action_7
action_42 (20) = happyShift action_8
action_42 (22) = happyShift action_9
action_42 (25) = happyShift action_10
action_42 (30) = happyShift action_35
action_42 (31) = happyShift action_36
action_42 (32) = happyShift action_37
action_42 (33) = happyShift action_38
action_42 (34) = happyShift action_39
action_42 (35) = happyShift action_40
action_42 (36) = happyShift action_11
action_42 (37) = happyShift action_12
action_42 (40) = happyShift action_13
action_42 (42) = happyShift action_14
action_42 (43) = happyShift action_15
action_42 (45) = happyShift action_16
action_42 (4) = happyGoto action_28
action_42 _ = happyReduce_20

action_43 (7) = happyShift action_2
action_43 (8) = happyShift action_29
action_43 (9) = happyShift action_30
action_43 (10) = happyShift action_31
action_43 (11) = happyShift action_32
action_43 (12) = happyShift action_33
action_43 (13) = happyShift action_4
action_43 (14) = happyShift action_5
action_43 (15) = happyShift action_6
action_43 (18) = happyShift action_34
action_43 (19) = happyShift action_7
action_43 (20) = happyShift action_8
action_43 (22) = happyShift action_9
action_43 (25) = happyShift action_10
action_43 (30) = happyShift action_35
action_43 (31) = happyShift action_36
action_43 (32) = happyShift action_37
action_43 (33) = happyShift action_38
action_43 (34) = happyShift action_39
action_43 (35) = happyShift action_40
action_43 (36) = happyShift action_11
action_43 (37) = happyShift action_12
action_43 (40) = happyShift action_13
action_43 (42) = happyShift action_14
action_43 (43) = happyShift action_15
action_43 (45) = happyShift action_16
action_43 (4) = happyGoto action_28
action_43 _ = happyReduce_19

action_44 (7) = happyShift action_2
action_44 (8) = happyShift action_29
action_44 (9) = happyShift action_30
action_44 (10) = happyShift action_31
action_44 (11) = happyShift action_32
action_44 (12) = happyShift action_33
action_44 (13) = happyShift action_4
action_44 (14) = happyShift action_5
action_44 (15) = happyShift action_6
action_44 (18) = happyShift action_34
action_44 (19) = happyShift action_7
action_44 (20) = happyShift action_8
action_44 (22) = happyShift action_9
action_44 (25) = happyShift action_10
action_44 (30) = happyShift action_35
action_44 (31) = happyShift action_36
action_44 (32) = happyShift action_37
action_44 (33) = happyShift action_38
action_44 (34) = happyShift action_39
action_44 (35) = happyShift action_40
action_44 (36) = happyShift action_11
action_44 (37) = happyShift action_12
action_44 (40) = happyShift action_13
action_44 (42) = happyShift action_14
action_44 (43) = happyShift action_15
action_44 (45) = happyShift action_16
action_44 (4) = happyGoto action_28
action_44 _ = happyReduce_18

action_45 (7) = happyShift action_2
action_45 (8) = happyShift action_29
action_45 (9) = happyShift action_30
action_45 (10) = happyShift action_31
action_45 (11) = happyShift action_32
action_45 (12) = happyShift action_33
action_45 (13) = happyShift action_4
action_45 (14) = happyShift action_5
action_45 (15) = happyShift action_6
action_45 (18) = happyShift action_34
action_45 (19) = happyShift action_7
action_45 (20) = happyShift action_8
action_45 (22) = happyShift action_9
action_45 (25) = happyShift action_10
action_45 (30) = happyShift action_35
action_45 (31) = happyShift action_36
action_45 (32) = happyShift action_37
action_45 (33) = happyShift action_38
action_45 (34) = happyShift action_39
action_45 (35) = happyShift action_40
action_45 (36) = happyShift action_11
action_45 (37) = happyShift action_12
action_45 (40) = happyShift action_13
action_45 (42) = happyShift action_14
action_45 (43) = happyShift action_15
action_45 (45) = happyShift action_16
action_45 (4) = happyGoto action_28
action_45 _ = happyReduce_17

action_46 (7) = happyShift action_2
action_46 (8) = happyShift action_29
action_46 (9) = happyShift action_30
action_46 (10) = happyShift action_31
action_46 (11) = happyShift action_32
action_46 (12) = happyShift action_33
action_46 (13) = happyShift action_4
action_46 (14) = happyShift action_5
action_46 (15) = happyShift action_6
action_46 (18) = happyShift action_34
action_46 (19) = happyShift action_7
action_46 (20) = happyShift action_8
action_46 (22) = happyShift action_9
action_46 (25) = happyShift action_10
action_46 (30) = happyShift action_35
action_46 (31) = happyShift action_36
action_46 (32) = happyShift action_37
action_46 (33) = happyShift action_38
action_46 (34) = happyShift action_39
action_46 (35) = happyShift action_40
action_46 (36) = happyShift action_11
action_46 (37) = happyShift action_12
action_46 (40) = happyShift action_13
action_46 (42) = happyShift action_14
action_46 (43) = happyShift action_15
action_46 (45) = happyShift action_16
action_46 (4) = happyGoto action_28
action_46 _ = happyReduce_16

action_47 (7) = happyShift action_2
action_47 (8) = happyShift action_29
action_47 (9) = happyShift action_30
action_47 (10) = happyShift action_31
action_47 (11) = happyShift action_32
action_47 (12) = happyShift action_33
action_47 (13) = happyShift action_4
action_47 (14) = happyShift action_5
action_47 (15) = happyShift action_6
action_47 (18) = happyShift action_34
action_47 (19) = happyShift action_7
action_47 (20) = happyShift action_8
action_47 (22) = happyShift action_9
action_47 (25) = happyShift action_10
action_47 (30) = happyShift action_35
action_47 (31) = happyShift action_36
action_47 (32) = happyShift action_37
action_47 (33) = happyShift action_38
action_47 (34) = happyShift action_39
action_47 (35) = happyShift action_40
action_47 (36) = happyShift action_11
action_47 (37) = happyShift action_12
action_47 (40) = happyShift action_13
action_47 (42) = happyShift action_14
action_47 (43) = happyShift action_15
action_47 (45) = happyShift action_16
action_47 (4) = happyGoto action_28
action_47 _ = happyReduce_10

action_48 (7) = happyShift action_2
action_48 (8) = happyShift action_29
action_48 (9) = happyShift action_30
action_48 (10) = happyShift action_31
action_48 (11) = happyShift action_32
action_48 (12) = happyShift action_33
action_48 (13) = happyShift action_4
action_48 (14) = happyShift action_5
action_48 (15) = happyShift action_6
action_48 (18) = happyShift action_34
action_48 (19) = happyShift action_7
action_48 (20) = happyShift action_8
action_48 (22) = happyShift action_9
action_48 (25) = happyShift action_10
action_48 (30) = happyShift action_35
action_48 (31) = happyShift action_36
action_48 (32) = happyShift action_37
action_48 (33) = happyShift action_38
action_48 (34) = happyShift action_39
action_48 (35) = happyShift action_40
action_48 (36) = happyShift action_11
action_48 (37) = happyShift action_12
action_48 (40) = happyShift action_13
action_48 (42) = happyShift action_14
action_48 (43) = happyShift action_15
action_48 (45) = happyShift action_16
action_48 (4) = happyGoto action_28
action_48 _ = happyReduce_8

action_49 (7) = happyShift action_2
action_49 (8) = happyShift action_29
action_49 (9) = happyShift action_30
action_49 (10) = happyShift action_31
action_49 (11) = happyShift action_32
action_49 (12) = happyShift action_33
action_49 (13) = happyShift action_4
action_49 (14) = happyShift action_5
action_49 (15) = happyShift action_6
action_49 (18) = happyShift action_34
action_49 (19) = happyShift action_7
action_49 (20) = happyShift action_8
action_49 (22) = happyShift action_9
action_49 (25) = happyShift action_10
action_49 (30) = happyShift action_35
action_49 (31) = happyShift action_36
action_49 (32) = happyShift action_37
action_49 (33) = happyShift action_38
action_49 (34) = happyShift action_39
action_49 (35) = happyShift action_40
action_49 (36) = happyShift action_11
action_49 (37) = happyShift action_12
action_49 (40) = happyShift action_13
action_49 (42) = happyShift action_14
action_49 (43) = happyShift action_15
action_49 (45) = happyShift action_16
action_49 (4) = happyGoto action_28
action_49 _ = happyReduce_7

action_50 (7) = happyShift action_2
action_50 (8) = happyShift action_29
action_50 (9) = happyShift action_30
action_50 (10) = happyShift action_31
action_50 (11) = happyShift action_32
action_50 (12) = happyShift action_33
action_50 (13) = happyShift action_4
action_50 (14) = happyShift action_5
action_50 (15) = happyShift action_6
action_50 (18) = happyShift action_34
action_50 (19) = happyShift action_7
action_50 (20) = happyShift action_8
action_50 (22) = happyShift action_9
action_50 (25) = happyShift action_10
action_50 (30) = happyShift action_35
action_50 (31) = happyShift action_36
action_50 (32) = happyShift action_37
action_50 (33) = happyShift action_38
action_50 (34) = happyShift action_39
action_50 (35) = happyShift action_40
action_50 (36) = happyShift action_11
action_50 (37) = happyShift action_12
action_50 (40) = happyShift action_13
action_50 (42) = happyShift action_14
action_50 (43) = happyShift action_15
action_50 (45) = happyShift action_16
action_50 (4) = happyGoto action_28
action_50 _ = happyReduce_6

action_51 (7) = happyShift action_2
action_51 (8) = happyShift action_29
action_51 (9) = happyShift action_30
action_51 (10) = happyShift action_31
action_51 (11) = happyShift action_32
action_51 (12) = happyShift action_33
action_51 (13) = happyShift action_4
action_51 (14) = happyShift action_5
action_51 (15) = happyShift action_6
action_51 (18) = happyShift action_34
action_51 (19) = happyShift action_7
action_51 (20) = happyShift action_8
action_51 (22) = happyShift action_9
action_51 (25) = happyShift action_10
action_51 (30) = happyShift action_35
action_51 (31) = happyShift action_36
action_51 (32) = happyShift action_37
action_51 (33) = happyShift action_38
action_51 (34) = happyShift action_39
action_51 (35) = happyShift action_40
action_51 (36) = happyShift action_11
action_51 (37) = happyShift action_12
action_51 (40) = happyShift action_13
action_51 (42) = happyShift action_14
action_51 (43) = happyShift action_15
action_51 (45) = happyShift action_16
action_51 (4) = happyGoto action_28
action_51 _ = happyReduce_5

action_52 (7) = happyShift action_2
action_52 (9) = happyShift action_30
action_52 (10) = happyShift action_31
action_52 (11) = happyShift action_32
action_52 (12) = happyShift action_33
action_52 (13) = happyShift action_4
action_52 (14) = happyShift action_5
action_52 (15) = happyShift action_6
action_52 (18) = happyShift action_34
action_52 (19) = happyShift action_7
action_52 (20) = happyShift action_8
action_52 (22) = happyShift action_9
action_52 (25) = happyShift action_10
action_52 (30) = happyShift action_35
action_52 (31) = happyShift action_36
action_52 (32) = happyShift action_37
action_52 (33) = happyShift action_38
action_52 (34) = happyShift action_39
action_52 (35) = happyShift action_40
action_52 (36) = happyShift action_11
action_52 (37) = happyShift action_12
action_52 (40) = happyShift action_13
action_52 (42) = happyShift action_14
action_52 (43) = happyShift action_15
action_52 (45) = happyShift action_16
action_52 (4) = happyGoto action_28
action_52 _ = happyReduce_4

action_53 (7) = happyShift action_2
action_53 (13) = happyShift action_4
action_53 (14) = happyShift action_5
action_53 (15) = happyShift action_6
action_53 (19) = happyShift action_7
action_53 (20) = happyShift action_8
action_53 (22) = happyShift action_9
action_53 (25) = happyShift action_10
action_53 (36) = happyShift action_11
action_53 (37) = happyShift action_12
action_53 (40) = happyShift action_13
action_53 (42) = happyShift action_14
action_53 (43) = happyShift action_15
action_53 (45) = happyShift action_16
action_53 (4) = happyGoto action_70
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (22) = happyShift action_66
action_54 (27) = happyShift action_67
action_54 (28) = happyShift action_68
action_54 (41) = happyShift action_69
action_54 (6) = happyGoto action_65
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_14

action_56 (7) = happyShift action_2
action_56 (13) = happyShift action_4
action_56 (14) = happyShift action_5
action_56 (15) = happyShift action_6
action_56 (19) = happyShift action_7
action_56 (20) = happyShift action_8
action_56 (22) = happyShift action_9
action_56 (25) = happyShift action_10
action_56 (36) = happyShift action_11
action_56 (37) = happyShift action_12
action_56 (40) = happyShift action_13
action_56 (42) = happyShift action_14
action_56 (43) = happyShift action_15
action_56 (45) = happyShift action_16
action_56 (4) = happyGoto action_64
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (7) = happyShift action_2
action_57 (13) = happyShift action_4
action_57 (14) = happyShift action_5
action_57 (15) = happyShift action_6
action_57 (19) = happyShift action_7
action_57 (20) = happyShift action_8
action_57 (22) = happyShift action_9
action_57 (25) = happyShift action_10
action_57 (36) = happyShift action_11
action_57 (37) = happyShift action_12
action_57 (40) = happyShift action_13
action_57 (42) = happyShift action_14
action_57 (43) = happyShift action_15
action_57 (45) = happyShift action_16
action_57 (4) = happyGoto action_63
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (7) = happyShift action_2
action_58 (8) = happyShift action_29
action_58 (9) = happyShift action_30
action_58 (10) = happyShift action_31
action_58 (11) = happyShift action_32
action_58 (12) = happyShift action_33
action_58 (13) = happyShift action_4
action_58 (14) = happyShift action_5
action_58 (15) = happyShift action_6
action_58 (18) = happyShift action_34
action_58 (19) = happyShift action_7
action_58 (20) = happyShift action_8
action_58 (22) = happyShift action_9
action_58 (23) = happyShift action_62
action_58 (25) = happyShift action_10
action_58 (30) = happyShift action_35
action_58 (31) = happyShift action_36
action_58 (32) = happyShift action_37
action_58 (33) = happyShift action_38
action_58 (34) = happyShift action_39
action_58 (35) = happyShift action_40
action_58 (36) = happyShift action_11
action_58 (37) = happyShift action_12
action_58 (40) = happyShift action_13
action_58 (42) = happyShift action_14
action_58 (43) = happyShift action_15
action_58 (45) = happyShift action_16
action_58 (4) = happyGoto action_28
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_25

action_60 (7) = happyShift action_2
action_60 (13) = happyShift action_4
action_60 (14) = happyShift action_5
action_60 (15) = happyShift action_6
action_60 (19) = happyShift action_7
action_60 (20) = happyShift action_8
action_60 (22) = happyShift action_9
action_60 (25) = happyShift action_10
action_60 (36) = happyShift action_11
action_60 (37) = happyShift action_12
action_60 (40) = happyShift action_13
action_60 (42) = happyShift action_14
action_60 (43) = happyShift action_15
action_60 (45) = happyShift action_16
action_60 (4) = happyGoto action_17
action_60 (5) = happyGoto action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_29

action_62 (39) = happyShift action_77
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (7) = happyShift action_2
action_63 (8) = happyShift action_29
action_63 (9) = happyShift action_30
action_63 (10) = happyShift action_31
action_63 (11) = happyShift action_32
action_63 (12) = happyShift action_33
action_63 (13) = happyShift action_4
action_63 (14) = happyShift action_5
action_63 (15) = happyShift action_6
action_63 (18) = happyShift action_34
action_63 (19) = happyShift action_7
action_63 (20) = happyShift action_8
action_63 (22) = happyShift action_9
action_63 (25) = happyShift action_10
action_63 (30) = happyShift action_35
action_63 (31) = happyShift action_36
action_63 (32) = happyShift action_37
action_63 (33) = happyShift action_38
action_63 (34) = happyShift action_39
action_63 (35) = happyShift action_40
action_63 (36) = happyShift action_11
action_63 (37) = happyShift action_12
action_63 (38) = happyShift action_76
action_63 (40) = happyShift action_13
action_63 (42) = happyShift action_14
action_63 (43) = happyShift action_15
action_63 (45) = happyShift action_16
action_63 (4) = happyGoto action_28
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (7) = happyShift action_2
action_64 (8) = happyShift action_29
action_64 (9) = happyShift action_30
action_64 (10) = happyShift action_31
action_64 (11) = happyShift action_32
action_64 (12) = happyShift action_33
action_64 (13) = happyShift action_4
action_64 (14) = happyShift action_5
action_64 (15) = happyShift action_6
action_64 (18) = happyShift action_34
action_64 (19) = happyShift action_7
action_64 (20) = happyShift action_8
action_64 (22) = happyShift action_9
action_64 (25) = happyShift action_10
action_64 (26) = happyShift action_75
action_64 (30) = happyShift action_35
action_64 (31) = happyShift action_36
action_64 (32) = happyShift action_37
action_64 (33) = happyShift action_38
action_64 (34) = happyShift action_39
action_64 (35) = happyShift action_40
action_64 (36) = happyShift action_11
action_64 (37) = happyShift action_12
action_64 (40) = happyShift action_13
action_64 (42) = happyShift action_14
action_64 (43) = happyShift action_15
action_64 (45) = happyShift action_16
action_64 (4) = happyGoto action_28
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (21) = happyShift action_74
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (22) = happyShift action_66
action_66 (27) = happyShift action_67
action_66 (28) = happyShift action_68
action_66 (41) = happyShift action_69
action_66 (6) = happyGoto action_73
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_30

action_68 _ = happyReduce_31

action_69 (45) = happyShift action_72
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (7) = happyShift action_2
action_70 (8) = happyShift action_29
action_70 (9) = happyShift action_30
action_70 (10) = happyShift action_31
action_70 (11) = happyShift action_32
action_70 (12) = happyShift action_33
action_70 (13) = happyShift action_4
action_70 (14) = happyShift action_5
action_70 (15) = happyShift action_6
action_70 (17) = happyShift action_71
action_70 (18) = happyShift action_34
action_70 (19) = happyShift action_7
action_70 (20) = happyShift action_8
action_70 (22) = happyShift action_9
action_70 (25) = happyShift action_10
action_70 (30) = happyShift action_35
action_70 (31) = happyShift action_36
action_70 (32) = happyShift action_37
action_70 (33) = happyShift action_38
action_70 (34) = happyShift action_39
action_70 (35) = happyShift action_40
action_70 (36) = happyShift action_11
action_70 (37) = happyShift action_12
action_70 (40) = happyShift action_13
action_70 (42) = happyShift action_14
action_70 (43) = happyShift action_15
action_70 (45) = happyShift action_16
action_70 (4) = happyGoto action_28
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (7) = happyShift action_2
action_71 (13) = happyShift action_4
action_71 (14) = happyShift action_5
action_71 (15) = happyShift action_6
action_71 (19) = happyShift action_7
action_71 (20) = happyShift action_8
action_71 (22) = happyShift action_9
action_71 (25) = happyShift action_10
action_71 (36) = happyShift action_11
action_71 (37) = happyShift action_12
action_71 (40) = happyShift action_13
action_71 (42) = happyShift action_14
action_71 (43) = happyShift action_15
action_71 (45) = happyShift action_16
action_71 (4) = happyGoto action_84
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (22) = happyShift action_66
action_72 (27) = happyShift action_67
action_72 (28) = happyShift action_68
action_72 (41) = happyShift action_69
action_72 (6) = happyGoto action_83
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (21) = happyShift action_82
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (7) = happyShift action_2
action_74 (13) = happyShift action_4
action_74 (14) = happyShift action_5
action_74 (15) = happyShift action_6
action_74 (19) = happyShift action_7
action_74 (20) = happyShift action_8
action_74 (22) = happyShift action_9
action_74 (25) = happyShift action_10
action_74 (36) = happyShift action_11
action_74 (37) = happyShift action_12
action_74 (40) = happyShift action_13
action_74 (42) = happyShift action_14
action_74 (43) = happyShift action_15
action_74 (45) = happyShift action_16
action_74 (4) = happyGoto action_81
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (7) = happyShift action_2
action_75 (13) = happyShift action_4
action_75 (14) = happyShift action_5
action_75 (15) = happyShift action_6
action_75 (19) = happyShift action_7
action_75 (20) = happyShift action_8
action_75 (22) = happyShift action_9
action_75 (25) = happyShift action_10
action_75 (36) = happyShift action_11
action_75 (37) = happyShift action_12
action_75 (40) = happyShift action_13
action_75 (42) = happyShift action_14
action_75 (43) = happyShift action_15
action_75 (45) = happyShift action_16
action_75 (4) = happyGoto action_80
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (7) = happyShift action_2
action_76 (13) = happyShift action_4
action_76 (14) = happyShift action_5
action_76 (15) = happyShift action_6
action_76 (19) = happyShift action_7
action_76 (20) = happyShift action_8
action_76 (22) = happyShift action_9
action_76 (25) = happyShift action_10
action_76 (36) = happyShift action_11
action_76 (37) = happyShift action_12
action_76 (40) = happyShift action_13
action_76 (42) = happyShift action_14
action_76 (43) = happyShift action_15
action_76 (45) = happyShift action_16
action_76 (4) = happyGoto action_79
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (22) = happyShift action_78
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (7) = happyShift action_2
action_78 (13) = happyShift action_4
action_78 (14) = happyShift action_5
action_78 (15) = happyShift action_6
action_78 (19) = happyShift action_7
action_78 (20) = happyShift action_8
action_78 (22) = happyShift action_9
action_78 (25) = happyShift action_10
action_78 (36) = happyShift action_11
action_78 (37) = happyShift action_12
action_78 (40) = happyShift action_13
action_78 (42) = happyShift action_14
action_78 (43) = happyShift action_15
action_78 (45) = happyShift action_16
action_78 (4) = happyGoto action_88
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (7) = happyShift action_2
action_79 (8) = happyShift action_29
action_79 (9) = happyShift action_30
action_79 (10) = happyShift action_31
action_79 (11) = happyShift action_32
action_79 (12) = happyShift action_33
action_79 (13) = happyShift action_4
action_79 (14) = happyShift action_5
action_79 (15) = happyShift action_6
action_79 (18) = happyShift action_34
action_79 (19) = happyShift action_7
action_79 (20) = happyShift action_8
action_79 (22) = happyShift action_9
action_79 (25) = happyShift action_10
action_79 (30) = happyShift action_35
action_79 (31) = happyShift action_36
action_79 (32) = happyShift action_37
action_79 (33) = happyShift action_38
action_79 (34) = happyShift action_39
action_79 (35) = happyShift action_40
action_79 (36) = happyShift action_11
action_79 (37) = happyShift action_12
action_79 (39) = happyShift action_87
action_79 (40) = happyShift action_13
action_79 (42) = happyShift action_14
action_79 (43) = happyShift action_15
action_79 (45) = happyShift action_16
action_79 (4) = happyGoto action_28
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (7) = happyShift action_2
action_80 (8) = happyShift action_29
action_80 (9) = happyShift action_30
action_80 (10) = happyShift action_31
action_80 (11) = happyShift action_32
action_80 (12) = happyShift action_33
action_80 (13) = happyShift action_4
action_80 (14) = happyShift action_5
action_80 (15) = happyShift action_6
action_80 (18) = happyShift action_34
action_80 (19) = happyShift action_7
action_80 (20) = happyShift action_8
action_80 (22) = happyShift action_9
action_80 (25) = happyShift action_10
action_80 (30) = happyShift action_35
action_80 (31) = happyShift action_36
action_80 (32) = happyShift action_37
action_80 (33) = happyShift action_38
action_80 (34) = happyShift action_39
action_80 (35) = happyShift action_40
action_80 (36) = happyShift action_11
action_80 (37) = happyShift action_12
action_80 (40) = happyShift action_13
action_80 (42) = happyShift action_14
action_80 (43) = happyShift action_15
action_80 (45) = happyShift action_16
action_80 (4) = happyGoto action_28
action_80 _ = happyReduce_15

action_81 (7) = happyShift action_2
action_81 (8) = happyShift action_29
action_81 (9) = happyShift action_30
action_81 (10) = happyShift action_31
action_81 (11) = happyShift action_32
action_81 (12) = happyShift action_33
action_81 (13) = happyShift action_4
action_81 (14) = happyShift action_5
action_81 (15) = happyShift action_6
action_81 (18) = happyShift action_34
action_81 (19) = happyShift action_7
action_81 (20) = happyShift action_8
action_81 (22) = happyShift action_9
action_81 (25) = happyShift action_10
action_81 (30) = happyShift action_35
action_81 (31) = happyShift action_36
action_81 (32) = happyShift action_37
action_81 (33) = happyShift action_38
action_81 (34) = happyShift action_39
action_81 (35) = happyShift action_40
action_81 (36) = happyShift action_11
action_81 (37) = happyShift action_12
action_81 (40) = happyShift action_13
action_81 (42) = happyShift action_14
action_81 (43) = happyShift action_15
action_81 (45) = happyShift action_16
action_81 (4) = happyGoto action_28
action_81 _ = happyReduce_12

action_82 (22) = happyShift action_66
action_82 (27) = happyShift action_67
action_82 (28) = happyShift action_68
action_82 (41) = happyShift action_69
action_82 (6) = happyGoto action_86
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (46) = happyShift action_85
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (7) = happyShift action_2
action_84 (8) = happyShift action_29
action_84 (9) = happyShift action_30
action_84 (10) = happyShift action_31
action_84 (11) = happyShift action_32
action_84 (12) = happyShift action_33
action_84 (13) = happyShift action_4
action_84 (14) = happyShift action_5
action_84 (15) = happyShift action_6
action_84 (18) = happyShift action_34
action_84 (19) = happyShift action_7
action_84 (20) = happyShift action_8
action_84 (22) = happyShift action_9
action_84 (25) = happyShift action_10
action_84 (30) = happyShift action_35
action_84 (31) = happyShift action_36
action_84 (32) = happyShift action_37
action_84 (33) = happyShift action_38
action_84 (34) = happyShift action_39
action_84 (35) = happyShift action_40
action_84 (36) = happyShift action_11
action_84 (37) = happyShift action_12
action_84 (40) = happyShift action_13
action_84 (42) = happyShift action_14
action_84 (43) = happyShift action_15
action_84 (45) = happyShift action_16
action_84 (4) = happyGoto action_28
action_84 _ = happyReduce_9

action_85 _ = happyReduce_33

action_86 (23) = happyShift action_91
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (7) = happyShift action_2
action_87 (13) = happyShift action_4
action_87 (14) = happyShift action_5
action_87 (15) = happyShift action_6
action_87 (19) = happyShift action_7
action_87 (20) = happyShift action_8
action_87 (22) = happyShift action_9
action_87 (25) = happyShift action_10
action_87 (36) = happyShift action_11
action_87 (37) = happyShift action_12
action_87 (40) = happyShift action_13
action_87 (42) = happyShift action_14
action_87 (43) = happyShift action_15
action_87 (45) = happyShift action_16
action_87 (4) = happyGoto action_90
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (7) = happyShift action_2
action_88 (8) = happyShift action_29
action_88 (9) = happyShift action_30
action_88 (10) = happyShift action_31
action_88 (11) = happyShift action_32
action_88 (12) = happyShift action_33
action_88 (13) = happyShift action_4
action_88 (14) = happyShift action_5
action_88 (15) = happyShift action_6
action_88 (18) = happyShift action_34
action_88 (19) = happyShift action_7
action_88 (20) = happyShift action_8
action_88 (22) = happyShift action_9
action_88 (23) = happyShift action_89
action_88 (25) = happyShift action_10
action_88 (30) = happyShift action_35
action_88 (31) = happyShift action_36
action_88 (32) = happyShift action_37
action_88 (33) = happyShift action_38
action_88 (34) = happyShift action_39
action_88 (35) = happyShift action_40
action_88 (36) = happyShift action_11
action_88 (37) = happyShift action_12
action_88 (40) = happyShift action_13
action_88 (42) = happyShift action_14
action_88 (43) = happyShift action_15
action_88 (45) = happyShift action_16
action_88 (4) = happyGoto action_28
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_24

action_90 (7) = happyShift action_2
action_90 (8) = happyShift action_29
action_90 (9) = happyShift action_30
action_90 (10) = happyShift action_31
action_90 (11) = happyShift action_32
action_90 (12) = happyShift action_33
action_90 (13) = happyShift action_4
action_90 (14) = happyShift action_5
action_90 (15) = happyShift action_6
action_90 (18) = happyShift action_34
action_90 (19) = happyShift action_7
action_90 (20) = happyShift action_8
action_90 (22) = happyShift action_9
action_90 (25) = happyShift action_10
action_90 (30) = happyShift action_35
action_90 (31) = happyShift action_36
action_90 (32) = happyShift action_37
action_90 (33) = happyShift action_38
action_90 (34) = happyShift action_39
action_90 (35) = happyShift action_40
action_90 (36) = happyShift action_11
action_90 (37) = happyShift action_12
action_90 (40) = happyShift action_13
action_90 (42) = happyShift action_14
action_90 (43) = happyShift action_15
action_90 (45) = happyShift action_16
action_90 (4) = happyGoto action_28
action_90 _ = happyReduce_23

action_91 _ = happyReduce_32

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Div happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 6 4 happyReduction_9
happyReduction_9 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  4 happyReduction_11
happyReduction_11 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happyReduce 6 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 6 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bigger happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Smaller happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreaterEquals happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LeastEqual happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equals happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Different happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happyReduce 8 4 happyReduction_23
happyReduction_23 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (For happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 8 4 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_3 happy_var_7
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (List happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  4 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (First happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  4 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Second happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1 : happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  6 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn6
		 (TBool
	)

happyReduce_31 = happySpecReduce_1  6 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn6
		 (TNum
	)

happyReduce_32 = happyReduce 5 6 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 4 6 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (TList happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 47 47 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 7;
	TokenAdd -> cont 8;
	TokenSub -> cont 9;
	TokenMul -> cont 10;
	TokenDiv -> cont 11;
	TokenAnd -> cont 12;
	TokenTrue -> cont 13;
	TokenFalse -> cont 14;
	TokenIf -> cont 15;
	TokenThen -> cont 16;
	TokenElse -> cont 17;
	TokenOr -> cont 18;
	TokenVar happy_dollar_dollar -> cont 19;
	TokenLam -> cont 20;
	TokenArrow -> cont 21;
	TokenLParen -> cont 22;
	TokenRParen -> cont 23;
	TokenEq -> cont 24;
	TokenLet -> cont 25;
	TokenIn -> cont 26;
	TokenBoolean -> cont 27;
	TokenNumber -> cont 28;
	TokenColon -> cont 29;
	TokenBigger -> cont 30;
	TokenSmaller -> cont 31;
	TokenGreaterEquals -> cont 32;
	TokenLeastEqual -> cont 33;
	TokenEquals -> cont 34;
	TokenDifferent -> cont 35;
	TokenNot -> cont 36;
	TokenFor -> cont 37;
	TokenTo -> cont 38;
	TokenDo -> cont 39;
	TokenWhile -> cont 40;
	TokenList -> cont 41;
	TokenFirst -> cont 42;
	TokenSecond -> cont 43;
	TokenComma -> cont 44;
	TokenLeft -> cont 45;
	TokenRight -> cont 46;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 47 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

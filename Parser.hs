{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,351) ([14368,150,4108,0,0,0,0,64512,4839,510,0,0,0,0,32768,22752,12290,0,0,0,512,0,7184,75,6,128,0,50948,32786,33281,2403,192,47615,32646,0,0,0,32768,0,16352,61623,15,0,4,57336,64549,3,0,0,25474,49161,49408,1201,32864,22752,12290,28736,300,8216,38456,3072,7184,75,2054,9614,768,50948,32786,33281,2403,192,45505,24580,57472,600,16432,11376,6145,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33280,2403,192,32768,48,0,0,16384,11376,6145,14368,150,61452,19359,4088,53240,64613,3,256,0,0,97,0,0,0,0,0,32704,57647,8223,38456,3072,0,4,2048,9614,768,50948,32786,33281,2403,192,47615,32644,1,0,0,0,0,0,1552,0,0,0,0,8,1024,4807,384,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","\"-\"","\"*\"","\"/\"","\"&&\"","true","false","if","then","else","\"||\"","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","'>'","'<'","\">=\"","\"<=\"","\"==\"","\"!=\"","\"!\"","for","to","do","%eof"]
        bit_start = st * 39
        bit_end = (st + 1) * 39
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..38]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (12) = happyShift action_4
action_0 (13) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (18) = happyShift action_7
action_0 (19) = happyShift action_8
action_0 (21) = happyShift action_9
action_0 (24) = happyShift action_10
action_0 (35) = happyShift action_11
action_0 (36) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_20
action_3 (8) = happyShift action_21
action_3 (9) = happyShift action_22
action_3 (10) = happyShift action_23
action_3 (11) = happyShift action_24
action_3 (12) = happyShift action_4
action_3 (13) = happyShift action_5
action_3 (14) = happyShift action_6
action_3 (17) = happyShift action_25
action_3 (18) = happyShift action_7
action_3 (19) = happyShift action_8
action_3 (21) = happyShift action_9
action_3 (24) = happyShift action_10
action_3 (29) = happyShift action_26
action_3 (30) = happyShift action_27
action_3 (31) = happyShift action_28
action_3 (32) = happyShift action_29
action_3 (33) = happyShift action_30
action_3 (34) = happyShift action_31
action_3 (35) = happyShift action_11
action_3 (36) = happyShift action_12
action_3 (39) = happyAccept
action_3 (4) = happyGoto action_19
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (12) = happyShift action_4
action_6 (13) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (18) = happyShift action_7
action_6 (19) = happyShift action_8
action_6 (21) = happyShift action_9
action_6 (24) = happyShift action_10
action_6 (35) = happyShift action_11
action_6 (36) = happyShift action_12
action_6 (4) = happyGoto action_18
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_11

action_8 (18) = happyShift action_17
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (12) = happyShift action_4
action_9 (13) = happyShift action_5
action_9 (14) = happyShift action_6
action_9 (18) = happyShift action_7
action_9 (19) = happyShift action_8
action_9 (21) = happyShift action_9
action_9 (24) = happyShift action_10
action_9 (35) = happyShift action_11
action_9 (36) = happyShift action_12
action_9 (4) = happyGoto action_16
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (18) = happyShift action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (12) = happyShift action_4
action_11 (13) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (18) = happyShift action_7
action_11 (19) = happyShift action_8
action_11 (21) = happyShift action_9
action_11 (24) = happyShift action_10
action_11 (35) = happyShift action_11
action_11 (36) = happyShift action_12
action_11 (4) = happyGoto action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (12) = happyShift action_4
action_12 (13) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (18) = happyShift action_7
action_12 (19) = happyShift action_8
action_12 (21) = happyShift action_9
action_12 (24) = happyShift action_10
action_12 (35) = happyShift action_11
action_12 (36) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_20
action_13 (8) = happyShift action_21
action_13 (9) = happyShift action_22
action_13 (10) = happyShift action_23
action_13 (11) = happyShift action_24
action_13 (12) = happyShift action_4
action_13 (13) = happyShift action_5
action_13 (14) = happyShift action_6
action_13 (17) = happyShift action_25
action_13 (18) = happyShift action_7
action_13 (19) = happyShift action_8
action_13 (21) = happyShift action_9
action_13 (23) = happyShift action_48
action_13 (24) = happyShift action_10
action_13 (29) = happyShift action_26
action_13 (30) = happyShift action_27
action_13 (31) = happyShift action_28
action_13 (32) = happyShift action_29
action_13 (33) = happyShift action_30
action_13 (34) = happyShift action_31
action_13 (35) = happyShift action_11
action_13 (36) = happyShift action_12
action_13 (4) = happyGoto action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_20
action_14 (8) = happyShift action_21
action_14 (9) = happyShift action_22
action_14 (10) = happyShift action_23
action_14 (11) = happyShift action_24
action_14 (12) = happyShift action_4
action_14 (13) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (17) = happyShift action_25
action_14 (18) = happyShift action_7
action_14 (19) = happyShift action_8
action_14 (21) = happyShift action_9
action_14 (24) = happyShift action_10
action_14 (29) = happyShift action_26
action_14 (30) = happyShift action_27
action_14 (31) = happyShift action_28
action_14 (32) = happyShift action_29
action_14 (33) = happyShift action_30
action_14 (34) = happyShift action_31
action_14 (35) = happyShift action_11
action_14 (36) = happyShift action_12
action_14 (4) = happyGoto action_19
action_14 _ = happyReduce_22

action_15 (23) = happyShift action_47
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_20
action_16 (8) = happyShift action_21
action_16 (9) = happyShift action_22
action_16 (10) = happyShift action_23
action_16 (11) = happyShift action_24
action_16 (12) = happyShift action_4
action_16 (13) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (17) = happyShift action_25
action_16 (18) = happyShift action_7
action_16 (19) = happyShift action_8
action_16 (21) = happyShift action_9
action_16 (22) = happyShift action_46
action_16 (24) = happyShift action_10
action_16 (29) = happyShift action_26
action_16 (30) = happyShift action_27
action_16 (31) = happyShift action_28
action_16 (32) = happyShift action_29
action_16 (33) = happyShift action_30
action_16 (34) = happyShift action_31
action_16 (35) = happyShift action_11
action_16 (36) = happyShift action_12
action_16 (4) = happyGoto action_19
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (28) = happyShift action_45
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_20
action_18 (8) = happyShift action_21
action_18 (9) = happyShift action_22
action_18 (10) = happyShift action_23
action_18 (11) = happyShift action_24
action_18 (12) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (15) = happyShift action_44
action_18 (17) = happyShift action_25
action_18 (18) = happyShift action_7
action_18 (19) = happyShift action_8
action_18 (21) = happyShift action_9
action_18 (24) = happyShift action_10
action_18 (29) = happyShift action_26
action_18 (30) = happyShift action_27
action_18 (31) = happyShift action_28
action_18 (32) = happyShift action_29
action_18 (33) = happyShift action_30
action_18 (34) = happyShift action_31
action_18 (35) = happyShift action_11
action_18 (36) = happyShift action_12
action_18 (4) = happyGoto action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_20
action_19 (8) = happyShift action_21
action_19 (9) = happyShift action_22
action_19 (10) = happyShift action_23
action_19 (11) = happyShift action_24
action_19 (12) = happyShift action_4
action_19 (13) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (17) = happyShift action_25
action_19 (18) = happyShift action_7
action_19 (19) = happyShift action_8
action_19 (21) = happyShift action_9
action_19 (24) = happyShift action_10
action_19 (29) = happyShift action_26
action_19 (30) = happyShift action_27
action_19 (31) = happyShift action_28
action_19 (32) = happyShift action_29
action_19 (33) = happyShift action_30
action_19 (34) = happyShift action_31
action_19 (35) = happyShift action_11
action_19 (36) = happyShift action_12
action_19 (4) = happyGoto action_19
action_19 _ = happyReduce_13

action_20 (6) = happyShift action_2
action_20 (12) = happyShift action_4
action_20 (13) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (18) = happyShift action_7
action_20 (19) = happyShift action_8
action_20 (21) = happyShift action_9
action_20 (24) = happyShift action_10
action_20 (35) = happyShift action_11
action_20 (36) = happyShift action_12
action_20 (4) = happyGoto action_43
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (12) = happyShift action_4
action_21 (13) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (18) = happyShift action_7
action_21 (19) = happyShift action_8
action_21 (21) = happyShift action_9
action_21 (24) = happyShift action_10
action_21 (35) = happyShift action_11
action_21 (36) = happyShift action_12
action_21 (4) = happyGoto action_42
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (12) = happyShift action_4
action_22 (13) = happyShift action_5
action_22 (14) = happyShift action_6
action_22 (18) = happyShift action_7
action_22 (19) = happyShift action_8
action_22 (21) = happyShift action_9
action_22 (24) = happyShift action_10
action_22 (35) = happyShift action_11
action_22 (36) = happyShift action_12
action_22 (4) = happyGoto action_41
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (12) = happyShift action_4
action_23 (13) = happyShift action_5
action_23 (14) = happyShift action_6
action_23 (18) = happyShift action_7
action_23 (19) = happyShift action_8
action_23 (21) = happyShift action_9
action_23 (24) = happyShift action_10
action_23 (35) = happyShift action_11
action_23 (36) = happyShift action_12
action_23 (4) = happyGoto action_40
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (12) = happyShift action_4
action_24 (13) = happyShift action_5
action_24 (14) = happyShift action_6
action_24 (18) = happyShift action_7
action_24 (19) = happyShift action_8
action_24 (21) = happyShift action_9
action_24 (24) = happyShift action_10
action_24 (35) = happyShift action_11
action_24 (36) = happyShift action_12
action_24 (4) = happyGoto action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (12) = happyShift action_4
action_25 (13) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (18) = happyShift action_7
action_25 (19) = happyShift action_8
action_25 (21) = happyShift action_9
action_25 (24) = happyShift action_10
action_25 (35) = happyShift action_11
action_25 (36) = happyShift action_12
action_25 (4) = happyGoto action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (12) = happyShift action_4
action_26 (13) = happyShift action_5
action_26 (14) = happyShift action_6
action_26 (18) = happyShift action_7
action_26 (19) = happyShift action_8
action_26 (21) = happyShift action_9
action_26 (24) = happyShift action_10
action_26 (35) = happyShift action_11
action_26 (36) = happyShift action_12
action_26 (4) = happyGoto action_37
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (12) = happyShift action_4
action_27 (13) = happyShift action_5
action_27 (14) = happyShift action_6
action_27 (18) = happyShift action_7
action_27 (19) = happyShift action_8
action_27 (21) = happyShift action_9
action_27 (24) = happyShift action_10
action_27 (35) = happyShift action_11
action_27 (36) = happyShift action_12
action_27 (4) = happyGoto action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (12) = happyShift action_4
action_28 (13) = happyShift action_5
action_28 (14) = happyShift action_6
action_28 (18) = happyShift action_7
action_28 (19) = happyShift action_8
action_28 (21) = happyShift action_9
action_28 (24) = happyShift action_10
action_28 (35) = happyShift action_11
action_28 (36) = happyShift action_12
action_28 (4) = happyGoto action_35
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (12) = happyShift action_4
action_29 (13) = happyShift action_5
action_29 (14) = happyShift action_6
action_29 (18) = happyShift action_7
action_29 (19) = happyShift action_8
action_29 (21) = happyShift action_9
action_29 (24) = happyShift action_10
action_29 (35) = happyShift action_11
action_29 (36) = happyShift action_12
action_29 (4) = happyGoto action_34
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (12) = happyShift action_4
action_30 (13) = happyShift action_5
action_30 (14) = happyShift action_6
action_30 (18) = happyShift action_7
action_30 (19) = happyShift action_8
action_30 (21) = happyShift action_9
action_30 (24) = happyShift action_10
action_30 (35) = happyShift action_11
action_30 (36) = happyShift action_12
action_30 (4) = happyGoto action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (12) = happyShift action_4
action_31 (13) = happyShift action_5
action_31 (14) = happyShift action_6
action_31 (18) = happyShift action_7
action_31 (19) = happyShift action_8
action_31 (21) = happyShift action_9
action_31 (24) = happyShift action_10
action_31 (35) = happyShift action_11
action_31 (36) = happyShift action_12
action_31 (4) = happyGoto action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_20
action_32 (8) = happyShift action_21
action_32 (9) = happyShift action_22
action_32 (10) = happyShift action_23
action_32 (11) = happyShift action_24
action_32 (12) = happyShift action_4
action_32 (13) = happyShift action_5
action_32 (14) = happyShift action_6
action_32 (17) = happyShift action_25
action_32 (18) = happyShift action_7
action_32 (19) = happyShift action_8
action_32 (21) = happyShift action_9
action_32 (24) = happyShift action_10
action_32 (29) = happyShift action_26
action_32 (30) = happyShift action_27
action_32 (31) = happyShift action_28
action_32 (32) = happyShift action_29
action_32 (33) = happyShift action_30
action_32 (34) = happyShift action_31
action_32 (35) = happyShift action_11
action_32 (36) = happyShift action_12
action_32 (4) = happyGoto action_19
action_32 _ = happyReduce_21

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_20
action_33 (8) = happyShift action_21
action_33 (9) = happyShift action_22
action_33 (10) = happyShift action_23
action_33 (11) = happyShift action_24
action_33 (12) = happyShift action_4
action_33 (13) = happyShift action_5
action_33 (14) = happyShift action_6
action_33 (17) = happyShift action_25
action_33 (18) = happyShift action_7
action_33 (19) = happyShift action_8
action_33 (21) = happyShift action_9
action_33 (24) = happyShift action_10
action_33 (29) = happyShift action_26
action_33 (30) = happyShift action_27
action_33 (31) = happyShift action_28
action_33 (32) = happyShift action_29
action_33 (33) = happyShift action_30
action_33 (34) = happyShift action_31
action_33 (35) = happyShift action_11
action_33 (36) = happyShift action_12
action_33 (4) = happyGoto action_19
action_33 _ = happyReduce_20

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_20
action_34 (8) = happyShift action_21
action_34 (9) = happyShift action_22
action_34 (10) = happyShift action_23
action_34 (11) = happyShift action_24
action_34 (12) = happyShift action_4
action_34 (13) = happyShift action_5
action_34 (14) = happyShift action_6
action_34 (17) = happyShift action_25
action_34 (18) = happyShift action_7
action_34 (19) = happyShift action_8
action_34 (21) = happyShift action_9
action_34 (24) = happyShift action_10
action_34 (29) = happyShift action_26
action_34 (30) = happyShift action_27
action_34 (31) = happyShift action_28
action_34 (32) = happyShift action_29
action_34 (33) = happyShift action_30
action_34 (34) = happyShift action_31
action_34 (35) = happyShift action_11
action_34 (36) = happyShift action_12
action_34 (4) = happyGoto action_19
action_34 _ = happyReduce_19

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_20
action_35 (8) = happyShift action_21
action_35 (9) = happyShift action_22
action_35 (10) = happyShift action_23
action_35 (11) = happyShift action_24
action_35 (12) = happyShift action_4
action_35 (13) = happyShift action_5
action_35 (14) = happyShift action_6
action_35 (17) = happyShift action_25
action_35 (18) = happyShift action_7
action_35 (19) = happyShift action_8
action_35 (21) = happyShift action_9
action_35 (24) = happyShift action_10
action_35 (29) = happyShift action_26
action_35 (30) = happyShift action_27
action_35 (31) = happyShift action_28
action_35 (32) = happyShift action_29
action_35 (33) = happyShift action_30
action_35 (34) = happyShift action_31
action_35 (35) = happyShift action_11
action_35 (36) = happyShift action_12
action_35 (4) = happyGoto action_19
action_35 _ = happyReduce_18

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_20
action_36 (8) = happyShift action_21
action_36 (9) = happyShift action_22
action_36 (10) = happyShift action_23
action_36 (11) = happyShift action_24
action_36 (12) = happyShift action_4
action_36 (13) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (17) = happyShift action_25
action_36 (18) = happyShift action_7
action_36 (19) = happyShift action_8
action_36 (21) = happyShift action_9
action_36 (24) = happyShift action_10
action_36 (29) = happyShift action_26
action_36 (30) = happyShift action_27
action_36 (31) = happyShift action_28
action_36 (32) = happyShift action_29
action_36 (33) = happyShift action_30
action_36 (34) = happyShift action_31
action_36 (35) = happyShift action_11
action_36 (36) = happyShift action_12
action_36 (4) = happyGoto action_19
action_36 _ = happyReduce_17

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_20
action_37 (8) = happyShift action_21
action_37 (9) = happyShift action_22
action_37 (10) = happyShift action_23
action_37 (11) = happyShift action_24
action_37 (12) = happyShift action_4
action_37 (13) = happyShift action_5
action_37 (14) = happyShift action_6
action_37 (17) = happyShift action_25
action_37 (18) = happyShift action_7
action_37 (19) = happyShift action_8
action_37 (21) = happyShift action_9
action_37 (24) = happyShift action_10
action_37 (29) = happyShift action_26
action_37 (30) = happyShift action_27
action_37 (31) = happyShift action_28
action_37 (32) = happyShift action_29
action_37 (33) = happyShift action_30
action_37 (34) = happyShift action_31
action_37 (35) = happyShift action_11
action_37 (36) = happyShift action_12
action_37 (4) = happyGoto action_19
action_37 _ = happyReduce_16

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_20
action_38 (8) = happyShift action_21
action_38 (9) = happyShift action_22
action_38 (10) = happyShift action_23
action_38 (11) = happyShift action_24
action_38 (12) = happyShift action_4
action_38 (13) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (17) = happyShift action_25
action_38 (18) = happyShift action_7
action_38 (19) = happyShift action_8
action_38 (21) = happyShift action_9
action_38 (24) = happyShift action_10
action_38 (29) = happyShift action_26
action_38 (30) = happyShift action_27
action_38 (31) = happyShift action_28
action_38 (32) = happyShift action_29
action_38 (33) = happyShift action_30
action_38 (34) = happyShift action_31
action_38 (35) = happyShift action_11
action_38 (36) = happyShift action_12
action_38 (4) = happyGoto action_19
action_38 _ = happyReduce_10

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_20
action_39 (8) = happyShift action_21
action_39 (9) = happyShift action_22
action_39 (10) = happyShift action_23
action_39 (11) = happyShift action_24
action_39 (12) = happyShift action_4
action_39 (13) = happyShift action_5
action_39 (14) = happyShift action_6
action_39 (17) = happyShift action_25
action_39 (18) = happyShift action_7
action_39 (19) = happyShift action_8
action_39 (21) = happyShift action_9
action_39 (24) = happyShift action_10
action_39 (29) = happyShift action_26
action_39 (30) = happyShift action_27
action_39 (31) = happyShift action_28
action_39 (32) = happyShift action_29
action_39 (33) = happyShift action_30
action_39 (34) = happyShift action_31
action_39 (35) = happyShift action_11
action_39 (36) = happyShift action_12
action_39 (4) = happyGoto action_19
action_39 _ = happyReduce_8

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_20
action_40 (8) = happyShift action_21
action_40 (9) = happyShift action_22
action_40 (10) = happyShift action_23
action_40 (11) = happyShift action_24
action_40 (12) = happyShift action_4
action_40 (13) = happyShift action_5
action_40 (14) = happyShift action_6
action_40 (17) = happyShift action_25
action_40 (18) = happyShift action_7
action_40 (19) = happyShift action_8
action_40 (21) = happyShift action_9
action_40 (24) = happyShift action_10
action_40 (29) = happyShift action_26
action_40 (30) = happyShift action_27
action_40 (31) = happyShift action_28
action_40 (32) = happyShift action_29
action_40 (33) = happyShift action_30
action_40 (34) = happyShift action_31
action_40 (35) = happyShift action_11
action_40 (36) = happyShift action_12
action_40 (4) = happyGoto action_19
action_40 _ = happyReduce_7

action_41 (6) = happyShift action_2
action_41 (7) = happyShift action_20
action_41 (8) = happyShift action_21
action_41 (9) = happyShift action_22
action_41 (10) = happyShift action_23
action_41 (11) = happyShift action_24
action_41 (12) = happyShift action_4
action_41 (13) = happyShift action_5
action_41 (14) = happyShift action_6
action_41 (17) = happyShift action_25
action_41 (18) = happyShift action_7
action_41 (19) = happyShift action_8
action_41 (21) = happyShift action_9
action_41 (24) = happyShift action_10
action_41 (29) = happyShift action_26
action_41 (30) = happyShift action_27
action_41 (31) = happyShift action_28
action_41 (32) = happyShift action_29
action_41 (33) = happyShift action_30
action_41 (34) = happyShift action_31
action_41 (35) = happyShift action_11
action_41 (36) = happyShift action_12
action_41 (4) = happyGoto action_19
action_41 _ = happyReduce_6

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_20
action_42 (8) = happyShift action_21
action_42 (9) = happyShift action_22
action_42 (10) = happyShift action_23
action_42 (11) = happyShift action_24
action_42 (12) = happyShift action_4
action_42 (13) = happyShift action_5
action_42 (14) = happyShift action_6
action_42 (17) = happyShift action_25
action_42 (18) = happyShift action_7
action_42 (19) = happyShift action_8
action_42 (21) = happyShift action_9
action_42 (24) = happyShift action_10
action_42 (29) = happyShift action_26
action_42 (30) = happyShift action_27
action_42 (31) = happyShift action_28
action_42 (32) = happyShift action_29
action_42 (33) = happyShift action_30
action_42 (34) = happyShift action_31
action_42 (35) = happyShift action_11
action_42 (36) = happyShift action_12
action_42 (4) = happyGoto action_19
action_42 _ = happyReduce_5

action_43 (6) = happyShift action_2
action_43 (8) = happyShift action_21
action_43 (9) = happyShift action_22
action_43 (10) = happyShift action_23
action_43 (11) = happyShift action_24
action_43 (12) = happyShift action_4
action_43 (13) = happyShift action_5
action_43 (14) = happyShift action_6
action_43 (17) = happyShift action_25
action_43 (18) = happyShift action_7
action_43 (19) = happyShift action_8
action_43 (21) = happyShift action_9
action_43 (24) = happyShift action_10
action_43 (29) = happyShift action_26
action_43 (30) = happyShift action_27
action_43 (31) = happyShift action_28
action_43 (32) = happyShift action_29
action_43 (33) = happyShift action_30
action_43 (34) = happyShift action_31
action_43 (35) = happyShift action_11
action_43 (36) = happyShift action_12
action_43 (4) = happyGoto action_19
action_43 _ = happyReduce_4

action_44 (6) = happyShift action_2
action_44 (12) = happyShift action_4
action_44 (13) = happyShift action_5
action_44 (14) = happyShift action_6
action_44 (18) = happyShift action_7
action_44 (19) = happyShift action_8
action_44 (21) = happyShift action_9
action_44 (24) = happyShift action_10
action_44 (35) = happyShift action_11
action_44 (36) = happyShift action_12
action_44 (4) = happyGoto action_55
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (21) = happyShift action_52
action_45 (26) = happyShift action_53
action_45 (27) = happyShift action_54
action_45 (5) = happyGoto action_51
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_14

action_47 (6) = happyShift action_2
action_47 (12) = happyShift action_4
action_47 (13) = happyShift action_5
action_47 (14) = happyShift action_6
action_47 (18) = happyShift action_7
action_47 (19) = happyShift action_8
action_47 (21) = happyShift action_9
action_47 (24) = happyShift action_10
action_47 (35) = happyShift action_11
action_47 (36) = happyShift action_12
action_47 (4) = happyGoto action_50
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (6) = happyShift action_2
action_48 (12) = happyShift action_4
action_48 (13) = happyShift action_5
action_48 (14) = happyShift action_6
action_48 (18) = happyShift action_7
action_48 (19) = happyShift action_8
action_48 (21) = happyShift action_9
action_48 (24) = happyShift action_10
action_48 (35) = happyShift action_11
action_48 (36) = happyShift action_12
action_48 (4) = happyGoto action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_2
action_49 (7) = happyShift action_20
action_49 (8) = happyShift action_21
action_49 (9) = happyShift action_22
action_49 (10) = happyShift action_23
action_49 (11) = happyShift action_24
action_49 (12) = happyShift action_4
action_49 (13) = happyShift action_5
action_49 (14) = happyShift action_6
action_49 (17) = happyShift action_25
action_49 (18) = happyShift action_7
action_49 (19) = happyShift action_8
action_49 (21) = happyShift action_9
action_49 (24) = happyShift action_10
action_49 (29) = happyShift action_26
action_49 (30) = happyShift action_27
action_49 (31) = happyShift action_28
action_49 (32) = happyShift action_29
action_49 (33) = happyShift action_30
action_49 (34) = happyShift action_31
action_49 (35) = happyShift action_11
action_49 (36) = happyShift action_12
action_49 (37) = happyShift action_60
action_49 (4) = happyGoto action_19
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (7) = happyShift action_20
action_50 (8) = happyShift action_21
action_50 (9) = happyShift action_22
action_50 (10) = happyShift action_23
action_50 (11) = happyShift action_24
action_50 (12) = happyShift action_4
action_50 (13) = happyShift action_5
action_50 (14) = happyShift action_6
action_50 (17) = happyShift action_25
action_50 (18) = happyShift action_7
action_50 (19) = happyShift action_8
action_50 (21) = happyShift action_9
action_50 (24) = happyShift action_10
action_50 (25) = happyShift action_59
action_50 (29) = happyShift action_26
action_50 (30) = happyShift action_27
action_50 (31) = happyShift action_28
action_50 (32) = happyShift action_29
action_50 (33) = happyShift action_30
action_50 (34) = happyShift action_31
action_50 (35) = happyShift action_11
action_50 (36) = happyShift action_12
action_50 (4) = happyGoto action_19
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (20) = happyShift action_58
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (21) = happyShift action_52
action_52 (26) = happyShift action_53
action_52 (27) = happyShift action_54
action_52 (5) = happyGoto action_57
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_24

action_54 _ = happyReduce_25

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_20
action_55 (8) = happyShift action_21
action_55 (9) = happyShift action_22
action_55 (10) = happyShift action_23
action_55 (11) = happyShift action_24
action_55 (12) = happyShift action_4
action_55 (13) = happyShift action_5
action_55 (14) = happyShift action_6
action_55 (16) = happyShift action_56
action_55 (17) = happyShift action_25
action_55 (18) = happyShift action_7
action_55 (19) = happyShift action_8
action_55 (21) = happyShift action_9
action_55 (24) = happyShift action_10
action_55 (29) = happyShift action_26
action_55 (30) = happyShift action_27
action_55 (31) = happyShift action_28
action_55 (32) = happyShift action_29
action_55 (33) = happyShift action_30
action_55 (34) = happyShift action_31
action_55 (35) = happyShift action_11
action_55 (36) = happyShift action_12
action_55 (4) = happyGoto action_19
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (6) = happyShift action_2
action_56 (12) = happyShift action_4
action_56 (13) = happyShift action_5
action_56 (14) = happyShift action_6
action_56 (18) = happyShift action_7
action_56 (19) = happyShift action_8
action_56 (21) = happyShift action_9
action_56 (24) = happyShift action_10
action_56 (35) = happyShift action_11
action_56 (36) = happyShift action_12
action_56 (4) = happyGoto action_65
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (20) = happyShift action_64
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (6) = happyShift action_2
action_58 (12) = happyShift action_4
action_58 (13) = happyShift action_5
action_58 (14) = happyShift action_6
action_58 (18) = happyShift action_7
action_58 (19) = happyShift action_8
action_58 (21) = happyShift action_9
action_58 (24) = happyShift action_10
action_58 (35) = happyShift action_11
action_58 (36) = happyShift action_12
action_58 (4) = happyGoto action_63
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (6) = happyShift action_2
action_59 (12) = happyShift action_4
action_59 (13) = happyShift action_5
action_59 (14) = happyShift action_6
action_59 (18) = happyShift action_7
action_59 (19) = happyShift action_8
action_59 (21) = happyShift action_9
action_59 (24) = happyShift action_10
action_59 (35) = happyShift action_11
action_59 (36) = happyShift action_12
action_59 (4) = happyGoto action_62
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (6) = happyShift action_2
action_60 (12) = happyShift action_4
action_60 (13) = happyShift action_5
action_60 (14) = happyShift action_6
action_60 (18) = happyShift action_7
action_60 (19) = happyShift action_8
action_60 (21) = happyShift action_9
action_60 (24) = happyShift action_10
action_60 (35) = happyShift action_11
action_60 (36) = happyShift action_12
action_60 (4) = happyGoto action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (6) = happyShift action_2
action_61 (7) = happyShift action_20
action_61 (8) = happyShift action_21
action_61 (9) = happyShift action_22
action_61 (10) = happyShift action_23
action_61 (11) = happyShift action_24
action_61 (12) = happyShift action_4
action_61 (13) = happyShift action_5
action_61 (14) = happyShift action_6
action_61 (17) = happyShift action_25
action_61 (18) = happyShift action_7
action_61 (19) = happyShift action_8
action_61 (21) = happyShift action_9
action_61 (24) = happyShift action_10
action_61 (29) = happyShift action_26
action_61 (30) = happyShift action_27
action_61 (31) = happyShift action_28
action_61 (32) = happyShift action_29
action_61 (33) = happyShift action_30
action_61 (34) = happyShift action_31
action_61 (35) = happyShift action_11
action_61 (36) = happyShift action_12
action_61 (38) = happyShift action_67
action_61 (4) = happyGoto action_19
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (6) = happyShift action_2
action_62 (7) = happyShift action_20
action_62 (8) = happyShift action_21
action_62 (9) = happyShift action_22
action_62 (10) = happyShift action_23
action_62 (11) = happyShift action_24
action_62 (12) = happyShift action_4
action_62 (13) = happyShift action_5
action_62 (14) = happyShift action_6
action_62 (17) = happyShift action_25
action_62 (18) = happyShift action_7
action_62 (19) = happyShift action_8
action_62 (21) = happyShift action_9
action_62 (24) = happyShift action_10
action_62 (29) = happyShift action_26
action_62 (30) = happyShift action_27
action_62 (31) = happyShift action_28
action_62 (32) = happyShift action_29
action_62 (33) = happyShift action_30
action_62 (34) = happyShift action_31
action_62 (35) = happyShift action_11
action_62 (36) = happyShift action_12
action_62 (4) = happyGoto action_19
action_62 _ = happyReduce_15

action_63 (6) = happyShift action_2
action_63 (7) = happyShift action_20
action_63 (8) = happyShift action_21
action_63 (9) = happyShift action_22
action_63 (10) = happyShift action_23
action_63 (11) = happyShift action_24
action_63 (12) = happyShift action_4
action_63 (13) = happyShift action_5
action_63 (14) = happyShift action_6
action_63 (17) = happyShift action_25
action_63 (18) = happyShift action_7
action_63 (19) = happyShift action_8
action_63 (21) = happyShift action_9
action_63 (24) = happyShift action_10
action_63 (29) = happyShift action_26
action_63 (30) = happyShift action_27
action_63 (31) = happyShift action_28
action_63 (32) = happyShift action_29
action_63 (33) = happyShift action_30
action_63 (34) = happyShift action_31
action_63 (35) = happyShift action_11
action_63 (36) = happyShift action_12
action_63 (4) = happyGoto action_19
action_63 _ = happyReduce_12

action_64 (21) = happyShift action_52
action_64 (26) = happyShift action_53
action_64 (27) = happyShift action_54
action_64 (5) = happyGoto action_66
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (6) = happyShift action_2
action_65 (7) = happyShift action_20
action_65 (8) = happyShift action_21
action_65 (9) = happyShift action_22
action_65 (10) = happyShift action_23
action_65 (11) = happyShift action_24
action_65 (12) = happyShift action_4
action_65 (13) = happyShift action_5
action_65 (14) = happyShift action_6
action_65 (17) = happyShift action_25
action_65 (18) = happyShift action_7
action_65 (19) = happyShift action_8
action_65 (21) = happyShift action_9
action_65 (24) = happyShift action_10
action_65 (29) = happyShift action_26
action_65 (30) = happyShift action_27
action_65 (31) = happyShift action_28
action_65 (32) = happyShift action_29
action_65 (33) = happyShift action_30
action_65 (34) = happyShift action_31
action_65 (35) = happyShift action_11
action_65 (36) = happyShift action_12
action_65 (4) = happyGoto action_19
action_65 _ = happyReduce_9

action_66 (22) = happyShift action_69
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (6) = happyShift action_2
action_67 (12) = happyShift action_4
action_67 (13) = happyShift action_5
action_67 (14) = happyShift action_6
action_67 (18) = happyShift action_7
action_67 (19) = happyShift action_8
action_67 (21) = happyShift action_9
action_67 (24) = happyShift action_10
action_67 (35) = happyShift action_11
action_67 (36) = happyShift action_12
action_67 (4) = happyGoto action_68
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (6) = happyShift action_2
action_68 (7) = happyShift action_20
action_68 (8) = happyShift action_21
action_68 (9) = happyShift action_22
action_68 (10) = happyShift action_23
action_68 (11) = happyShift action_24
action_68 (12) = happyShift action_4
action_68 (13) = happyShift action_5
action_68 (14) = happyShift action_6
action_68 (17) = happyShift action_25
action_68 (18) = happyShift action_7
action_68 (19) = happyShift action_8
action_68 (21) = happyShift action_9
action_68 (24) = happyShift action_10
action_68 (29) = happyShift action_26
action_68 (30) = happyShift action_27
action_68 (31) = happyShift action_28
action_68 (32) = happyShift action_29
action_68 (33) = happyShift action_30
action_68 (34) = happyShift action_31
action_68 (35) = happyShift action_11
action_68 (36) = happyShift action_12
action_68 (4) = happyGoto action_19
action_68 _ = happyReduce_23

action_69 _ = happyReduce_26

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
	(HappyAbsSyn5  happy_var_4) `HappyStk`
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

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_26 = happyReduce 5 5 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 39 39 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSub -> cont 8;
	TokenMul -> cont 9;
	TokenDiv -> cont 10;
	TokenAnd -> cont 11;
	TokenTrue -> cont 12;
	TokenFalse -> cont 13;
	TokenIf -> cont 14;
	TokenThen -> cont 15;
	TokenElse -> cont 16;
	TokenOr -> cont 17;
	TokenVar happy_dollar_dollar -> cont 18;
	TokenLam -> cont 19;
	TokenArrow -> cont 20;
	TokenLParen -> cont 21;
	TokenRParen -> cont 22;
	TokenEq -> cont 23;
	TokenLet -> cont 24;
	TokenIn -> cont 25;
	TokenBoolean -> cont 26;
	TokenNumber -> cont 27;
	TokenColon -> cont 28;
	TokenBigger -> cont 29;
	TokenSmaller -> cont 30;
	TokenGreaterEquals -> cont 31;
	TokenLeastEqual -> cont 32;
	TokenEquals -> cont 33;
	TokenDifferent -> cont 34;
	TokenNot -> cont 35;
	TokenFor -> cont 36;
	TokenTo -> cont 37;
	TokenDo -> cont 38;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39 tk tks = happyError' (tks, explist)
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

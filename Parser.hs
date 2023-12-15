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
happyExpList = Happy_Data_Array.listArray (0,440) ([14368,150,8268,0,0,0,0,57344,38719,20464,0,0,0,0,0,14368,150,76,0,0,0,2,8192,38456,19456,0,2,8192,38456,19456,14368,150,76,4096,0,14368,150,57420,55103,20464,0,0,0,16384,0,16352,61623,79,0,8,32736,61591,79,0,0,14368,150,8268,38456,19456,14368,150,8268,38456,19456,14368,150,8268,38456,19456,14368,150,8268,38456,19456,14368,150,8268,38456,19456,14368,150,8268,38456,19456,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14368,150,76,4096,6,0,0,8192,38456,19456,14368,150,57420,46911,20464,0,0,57376,38719,24560,16352,61847,79,2048,0,0,1552,0,0,0,0,0,57344,38847,20464,14368,150,76,2048,0,14368,150,8268,38456,19456,14368,150,76,4096,0,14368,150,57420,38719,28656,0,0,0,0,0,0,1552,0,0,0,0,32,8192,38456,19456,16352,61623,79,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","\"-\"","\"*\"","\"/\"","\"&&\"","true","false","if","then","else","\"||\"","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","'>'","'<'","\">=\"","\"<=\"","\"==\"","\"!=\"","\"!\"","for","to","do","while","%eof"]
        bit_start = st * 40
        bit_end = (st + 1) * 40
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..39]
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
action_0 (39) = happyShift action_13
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_22
action_3 (8) = happyShift action_23
action_3 (9) = happyShift action_24
action_3 (10) = happyShift action_25
action_3 (11) = happyShift action_26
action_3 (12) = happyShift action_4
action_3 (13) = happyShift action_5
action_3 (14) = happyShift action_6
action_3 (17) = happyShift action_27
action_3 (18) = happyShift action_7
action_3 (19) = happyShift action_8
action_3 (21) = happyShift action_9
action_3 (24) = happyShift action_10
action_3 (29) = happyShift action_28
action_3 (30) = happyShift action_29
action_3 (31) = happyShift action_30
action_3 (32) = happyShift action_31
action_3 (33) = happyShift action_32
action_3 (34) = happyShift action_33
action_3 (35) = happyShift action_11
action_3 (36) = happyShift action_12
action_3 (39) = happyShift action_13
action_3 (40) = happyAccept
action_3 (4) = happyGoto action_21
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
action_6 (39) = happyShift action_13
action_6 (4) = happyGoto action_20
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_11

action_8 (18) = happyShift action_19
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
action_9 (39) = happyShift action_13
action_9 (4) = happyGoto action_18
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (18) = happyShift action_17
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
action_11 (39) = happyShift action_13
action_11 (4) = happyGoto action_16
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
action_12 (39) = happyShift action_13
action_12 (4) = happyGoto action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (21) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (12) = happyShift action_4
action_14 (13) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (18) = happyShift action_7
action_14 (19) = happyShift action_8
action_14 (21) = happyShift action_9
action_14 (24) = happyShift action_10
action_14 (35) = happyShift action_11
action_14 (36) = happyShift action_12
action_14 (39) = happyShift action_13
action_14 (4) = happyGoto action_51
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_22
action_15 (8) = happyShift action_23
action_15 (9) = happyShift action_24
action_15 (10) = happyShift action_25
action_15 (11) = happyShift action_26
action_15 (12) = happyShift action_4
action_15 (13) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (17) = happyShift action_27
action_15 (18) = happyShift action_7
action_15 (19) = happyShift action_8
action_15 (21) = happyShift action_9
action_15 (23) = happyShift action_50
action_15 (24) = happyShift action_10
action_15 (29) = happyShift action_28
action_15 (30) = happyShift action_29
action_15 (31) = happyShift action_30
action_15 (32) = happyShift action_31
action_15 (33) = happyShift action_32
action_15 (34) = happyShift action_33
action_15 (35) = happyShift action_11
action_15 (36) = happyShift action_12
action_15 (39) = happyShift action_13
action_15 (4) = happyGoto action_21
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_22
action_16 (8) = happyShift action_23
action_16 (9) = happyShift action_24
action_16 (10) = happyShift action_25
action_16 (11) = happyShift action_26
action_16 (12) = happyShift action_4
action_16 (13) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (17) = happyShift action_27
action_16 (18) = happyShift action_7
action_16 (19) = happyShift action_8
action_16 (21) = happyShift action_9
action_16 (24) = happyShift action_10
action_16 (29) = happyShift action_28
action_16 (30) = happyShift action_29
action_16 (31) = happyShift action_30
action_16 (32) = happyShift action_31
action_16 (33) = happyShift action_32
action_16 (34) = happyShift action_33
action_16 (35) = happyShift action_11
action_16 (36) = happyShift action_12
action_16 (39) = happyShift action_13
action_16 (4) = happyGoto action_21
action_16 _ = happyReduce_22

action_17 (23) = happyShift action_49
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_22
action_18 (8) = happyShift action_23
action_18 (9) = happyShift action_24
action_18 (10) = happyShift action_25
action_18 (11) = happyShift action_26
action_18 (12) = happyShift action_4
action_18 (13) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (17) = happyShift action_27
action_18 (18) = happyShift action_7
action_18 (19) = happyShift action_8
action_18 (21) = happyShift action_9
action_18 (22) = happyShift action_48
action_18 (24) = happyShift action_10
action_18 (29) = happyShift action_28
action_18 (30) = happyShift action_29
action_18 (31) = happyShift action_30
action_18 (32) = happyShift action_31
action_18 (33) = happyShift action_32
action_18 (34) = happyShift action_33
action_18 (35) = happyShift action_11
action_18 (36) = happyShift action_12
action_18 (39) = happyShift action_13
action_18 (4) = happyGoto action_21
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (28) = happyShift action_47
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_22
action_20 (8) = happyShift action_23
action_20 (9) = happyShift action_24
action_20 (10) = happyShift action_25
action_20 (11) = happyShift action_26
action_20 (12) = happyShift action_4
action_20 (13) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (15) = happyShift action_46
action_20 (17) = happyShift action_27
action_20 (18) = happyShift action_7
action_20 (19) = happyShift action_8
action_20 (21) = happyShift action_9
action_20 (24) = happyShift action_10
action_20 (29) = happyShift action_28
action_20 (30) = happyShift action_29
action_20 (31) = happyShift action_30
action_20 (32) = happyShift action_31
action_20 (33) = happyShift action_32
action_20 (34) = happyShift action_33
action_20 (35) = happyShift action_11
action_20 (36) = happyShift action_12
action_20 (39) = happyShift action_13
action_20 (4) = happyGoto action_21
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_22
action_21 (8) = happyShift action_23
action_21 (9) = happyShift action_24
action_21 (10) = happyShift action_25
action_21 (11) = happyShift action_26
action_21 (12) = happyShift action_4
action_21 (13) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (17) = happyShift action_27
action_21 (18) = happyShift action_7
action_21 (19) = happyShift action_8
action_21 (21) = happyShift action_9
action_21 (24) = happyShift action_10
action_21 (29) = happyShift action_28
action_21 (30) = happyShift action_29
action_21 (31) = happyShift action_30
action_21 (32) = happyShift action_31
action_21 (33) = happyShift action_32
action_21 (34) = happyShift action_33
action_21 (35) = happyShift action_11
action_21 (36) = happyShift action_12
action_21 (39) = happyShift action_13
action_21 (4) = happyGoto action_21
action_21 _ = happyReduce_13

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
action_22 (39) = happyShift action_13
action_22 (4) = happyGoto action_45
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
action_23 (39) = happyShift action_13
action_23 (4) = happyGoto action_44
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
action_24 (39) = happyShift action_13
action_24 (4) = happyGoto action_43
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
action_25 (39) = happyShift action_13
action_25 (4) = happyGoto action_42
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
action_26 (39) = happyShift action_13
action_26 (4) = happyGoto action_41
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
action_27 (39) = happyShift action_13
action_27 (4) = happyGoto action_40
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
action_28 (39) = happyShift action_13
action_28 (4) = happyGoto action_39
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
action_29 (39) = happyShift action_13
action_29 (4) = happyGoto action_38
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
action_30 (39) = happyShift action_13
action_30 (4) = happyGoto action_37
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
action_31 (39) = happyShift action_13
action_31 (4) = happyGoto action_36
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (12) = happyShift action_4
action_32 (13) = happyShift action_5
action_32 (14) = happyShift action_6
action_32 (18) = happyShift action_7
action_32 (19) = happyShift action_8
action_32 (21) = happyShift action_9
action_32 (24) = happyShift action_10
action_32 (35) = happyShift action_11
action_32 (36) = happyShift action_12
action_32 (39) = happyShift action_13
action_32 (4) = happyGoto action_35
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_2
action_33 (12) = happyShift action_4
action_33 (13) = happyShift action_5
action_33 (14) = happyShift action_6
action_33 (18) = happyShift action_7
action_33 (19) = happyShift action_8
action_33 (21) = happyShift action_9
action_33 (24) = happyShift action_10
action_33 (35) = happyShift action_11
action_33 (36) = happyShift action_12
action_33 (39) = happyShift action_13
action_33 (4) = happyGoto action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_22
action_34 (8) = happyShift action_23
action_34 (9) = happyShift action_24
action_34 (10) = happyShift action_25
action_34 (11) = happyShift action_26
action_34 (12) = happyShift action_4
action_34 (13) = happyShift action_5
action_34 (14) = happyShift action_6
action_34 (17) = happyShift action_27
action_34 (18) = happyShift action_7
action_34 (19) = happyShift action_8
action_34 (21) = happyShift action_9
action_34 (24) = happyShift action_10
action_34 (29) = happyShift action_28
action_34 (30) = happyShift action_29
action_34 (31) = happyShift action_30
action_34 (32) = happyShift action_31
action_34 (33) = happyShift action_32
action_34 (34) = happyShift action_33
action_34 (35) = happyShift action_11
action_34 (36) = happyShift action_12
action_34 (39) = happyShift action_13
action_34 (4) = happyGoto action_21
action_34 _ = happyReduce_21

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_22
action_35 (8) = happyShift action_23
action_35 (9) = happyShift action_24
action_35 (10) = happyShift action_25
action_35 (11) = happyShift action_26
action_35 (12) = happyShift action_4
action_35 (13) = happyShift action_5
action_35 (14) = happyShift action_6
action_35 (17) = happyShift action_27
action_35 (18) = happyShift action_7
action_35 (19) = happyShift action_8
action_35 (21) = happyShift action_9
action_35 (24) = happyShift action_10
action_35 (29) = happyShift action_28
action_35 (30) = happyShift action_29
action_35 (31) = happyShift action_30
action_35 (32) = happyShift action_31
action_35 (33) = happyShift action_32
action_35 (34) = happyShift action_33
action_35 (35) = happyShift action_11
action_35 (36) = happyShift action_12
action_35 (39) = happyShift action_13
action_35 (4) = happyGoto action_21
action_35 _ = happyReduce_20

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_22
action_36 (8) = happyShift action_23
action_36 (9) = happyShift action_24
action_36 (10) = happyShift action_25
action_36 (11) = happyShift action_26
action_36 (12) = happyShift action_4
action_36 (13) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (17) = happyShift action_27
action_36 (18) = happyShift action_7
action_36 (19) = happyShift action_8
action_36 (21) = happyShift action_9
action_36 (24) = happyShift action_10
action_36 (29) = happyShift action_28
action_36 (30) = happyShift action_29
action_36 (31) = happyShift action_30
action_36 (32) = happyShift action_31
action_36 (33) = happyShift action_32
action_36 (34) = happyShift action_33
action_36 (35) = happyShift action_11
action_36 (36) = happyShift action_12
action_36 (39) = happyShift action_13
action_36 (4) = happyGoto action_21
action_36 _ = happyReduce_19

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_22
action_37 (8) = happyShift action_23
action_37 (9) = happyShift action_24
action_37 (10) = happyShift action_25
action_37 (11) = happyShift action_26
action_37 (12) = happyShift action_4
action_37 (13) = happyShift action_5
action_37 (14) = happyShift action_6
action_37 (17) = happyShift action_27
action_37 (18) = happyShift action_7
action_37 (19) = happyShift action_8
action_37 (21) = happyShift action_9
action_37 (24) = happyShift action_10
action_37 (29) = happyShift action_28
action_37 (30) = happyShift action_29
action_37 (31) = happyShift action_30
action_37 (32) = happyShift action_31
action_37 (33) = happyShift action_32
action_37 (34) = happyShift action_33
action_37 (35) = happyShift action_11
action_37 (36) = happyShift action_12
action_37 (39) = happyShift action_13
action_37 (4) = happyGoto action_21
action_37 _ = happyReduce_18

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_22
action_38 (8) = happyShift action_23
action_38 (9) = happyShift action_24
action_38 (10) = happyShift action_25
action_38 (11) = happyShift action_26
action_38 (12) = happyShift action_4
action_38 (13) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (17) = happyShift action_27
action_38 (18) = happyShift action_7
action_38 (19) = happyShift action_8
action_38 (21) = happyShift action_9
action_38 (24) = happyShift action_10
action_38 (29) = happyShift action_28
action_38 (30) = happyShift action_29
action_38 (31) = happyShift action_30
action_38 (32) = happyShift action_31
action_38 (33) = happyShift action_32
action_38 (34) = happyShift action_33
action_38 (35) = happyShift action_11
action_38 (36) = happyShift action_12
action_38 (39) = happyShift action_13
action_38 (4) = happyGoto action_21
action_38 _ = happyReduce_17

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_22
action_39 (8) = happyShift action_23
action_39 (9) = happyShift action_24
action_39 (10) = happyShift action_25
action_39 (11) = happyShift action_26
action_39 (12) = happyShift action_4
action_39 (13) = happyShift action_5
action_39 (14) = happyShift action_6
action_39 (17) = happyShift action_27
action_39 (18) = happyShift action_7
action_39 (19) = happyShift action_8
action_39 (21) = happyShift action_9
action_39 (24) = happyShift action_10
action_39 (29) = happyShift action_28
action_39 (30) = happyShift action_29
action_39 (31) = happyShift action_30
action_39 (32) = happyShift action_31
action_39 (33) = happyShift action_32
action_39 (34) = happyShift action_33
action_39 (35) = happyShift action_11
action_39 (36) = happyShift action_12
action_39 (39) = happyShift action_13
action_39 (4) = happyGoto action_21
action_39 _ = happyReduce_16

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_22
action_40 (8) = happyShift action_23
action_40 (9) = happyShift action_24
action_40 (10) = happyShift action_25
action_40 (11) = happyShift action_26
action_40 (12) = happyShift action_4
action_40 (13) = happyShift action_5
action_40 (14) = happyShift action_6
action_40 (17) = happyShift action_27
action_40 (18) = happyShift action_7
action_40 (19) = happyShift action_8
action_40 (21) = happyShift action_9
action_40 (24) = happyShift action_10
action_40 (29) = happyShift action_28
action_40 (30) = happyShift action_29
action_40 (31) = happyShift action_30
action_40 (32) = happyShift action_31
action_40 (33) = happyShift action_32
action_40 (34) = happyShift action_33
action_40 (35) = happyShift action_11
action_40 (36) = happyShift action_12
action_40 (39) = happyShift action_13
action_40 (4) = happyGoto action_21
action_40 _ = happyReduce_10

action_41 (6) = happyShift action_2
action_41 (7) = happyShift action_22
action_41 (8) = happyShift action_23
action_41 (9) = happyShift action_24
action_41 (10) = happyShift action_25
action_41 (11) = happyShift action_26
action_41 (12) = happyShift action_4
action_41 (13) = happyShift action_5
action_41 (14) = happyShift action_6
action_41 (17) = happyShift action_27
action_41 (18) = happyShift action_7
action_41 (19) = happyShift action_8
action_41 (21) = happyShift action_9
action_41 (24) = happyShift action_10
action_41 (29) = happyShift action_28
action_41 (30) = happyShift action_29
action_41 (31) = happyShift action_30
action_41 (32) = happyShift action_31
action_41 (33) = happyShift action_32
action_41 (34) = happyShift action_33
action_41 (35) = happyShift action_11
action_41 (36) = happyShift action_12
action_41 (39) = happyShift action_13
action_41 (4) = happyGoto action_21
action_41 _ = happyReduce_8

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_22
action_42 (8) = happyShift action_23
action_42 (9) = happyShift action_24
action_42 (10) = happyShift action_25
action_42 (11) = happyShift action_26
action_42 (12) = happyShift action_4
action_42 (13) = happyShift action_5
action_42 (14) = happyShift action_6
action_42 (17) = happyShift action_27
action_42 (18) = happyShift action_7
action_42 (19) = happyShift action_8
action_42 (21) = happyShift action_9
action_42 (24) = happyShift action_10
action_42 (29) = happyShift action_28
action_42 (30) = happyShift action_29
action_42 (31) = happyShift action_30
action_42 (32) = happyShift action_31
action_42 (33) = happyShift action_32
action_42 (34) = happyShift action_33
action_42 (35) = happyShift action_11
action_42 (36) = happyShift action_12
action_42 (39) = happyShift action_13
action_42 (4) = happyGoto action_21
action_42 _ = happyReduce_7

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_22
action_43 (8) = happyShift action_23
action_43 (9) = happyShift action_24
action_43 (10) = happyShift action_25
action_43 (11) = happyShift action_26
action_43 (12) = happyShift action_4
action_43 (13) = happyShift action_5
action_43 (14) = happyShift action_6
action_43 (17) = happyShift action_27
action_43 (18) = happyShift action_7
action_43 (19) = happyShift action_8
action_43 (21) = happyShift action_9
action_43 (24) = happyShift action_10
action_43 (29) = happyShift action_28
action_43 (30) = happyShift action_29
action_43 (31) = happyShift action_30
action_43 (32) = happyShift action_31
action_43 (33) = happyShift action_32
action_43 (34) = happyShift action_33
action_43 (35) = happyShift action_11
action_43 (36) = happyShift action_12
action_43 (39) = happyShift action_13
action_43 (4) = happyGoto action_21
action_43 _ = happyReduce_6

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_22
action_44 (8) = happyShift action_23
action_44 (9) = happyShift action_24
action_44 (10) = happyShift action_25
action_44 (11) = happyShift action_26
action_44 (12) = happyShift action_4
action_44 (13) = happyShift action_5
action_44 (14) = happyShift action_6
action_44 (17) = happyShift action_27
action_44 (18) = happyShift action_7
action_44 (19) = happyShift action_8
action_44 (21) = happyShift action_9
action_44 (24) = happyShift action_10
action_44 (29) = happyShift action_28
action_44 (30) = happyShift action_29
action_44 (31) = happyShift action_30
action_44 (32) = happyShift action_31
action_44 (33) = happyShift action_32
action_44 (34) = happyShift action_33
action_44 (35) = happyShift action_11
action_44 (36) = happyShift action_12
action_44 (39) = happyShift action_13
action_44 (4) = happyGoto action_21
action_44 _ = happyReduce_5

action_45 (6) = happyShift action_2
action_45 (8) = happyShift action_23
action_45 (9) = happyShift action_24
action_45 (10) = happyShift action_25
action_45 (11) = happyShift action_26
action_45 (12) = happyShift action_4
action_45 (13) = happyShift action_5
action_45 (14) = happyShift action_6
action_45 (17) = happyShift action_27
action_45 (18) = happyShift action_7
action_45 (19) = happyShift action_8
action_45 (21) = happyShift action_9
action_45 (24) = happyShift action_10
action_45 (29) = happyShift action_28
action_45 (30) = happyShift action_29
action_45 (31) = happyShift action_30
action_45 (32) = happyShift action_31
action_45 (33) = happyShift action_32
action_45 (34) = happyShift action_33
action_45 (35) = happyShift action_11
action_45 (36) = happyShift action_12
action_45 (39) = happyShift action_13
action_45 (4) = happyGoto action_21
action_45 _ = happyReduce_4

action_46 (6) = happyShift action_2
action_46 (12) = happyShift action_4
action_46 (13) = happyShift action_5
action_46 (14) = happyShift action_6
action_46 (18) = happyShift action_7
action_46 (19) = happyShift action_8
action_46 (21) = happyShift action_9
action_46 (24) = happyShift action_10
action_46 (35) = happyShift action_11
action_46 (36) = happyShift action_12
action_46 (39) = happyShift action_13
action_46 (4) = happyGoto action_59
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (21) = happyShift action_56
action_47 (26) = happyShift action_57
action_47 (27) = happyShift action_58
action_47 (5) = happyGoto action_55
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_14

action_49 (6) = happyShift action_2
action_49 (12) = happyShift action_4
action_49 (13) = happyShift action_5
action_49 (14) = happyShift action_6
action_49 (18) = happyShift action_7
action_49 (19) = happyShift action_8
action_49 (21) = happyShift action_9
action_49 (24) = happyShift action_10
action_49 (35) = happyShift action_11
action_49 (36) = happyShift action_12
action_49 (39) = happyShift action_13
action_49 (4) = happyGoto action_54
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (12) = happyShift action_4
action_50 (13) = happyShift action_5
action_50 (14) = happyShift action_6
action_50 (18) = happyShift action_7
action_50 (19) = happyShift action_8
action_50 (21) = happyShift action_9
action_50 (24) = happyShift action_10
action_50 (35) = happyShift action_11
action_50 (36) = happyShift action_12
action_50 (39) = happyShift action_13
action_50 (4) = happyGoto action_53
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_2
action_51 (7) = happyShift action_22
action_51 (8) = happyShift action_23
action_51 (9) = happyShift action_24
action_51 (10) = happyShift action_25
action_51 (11) = happyShift action_26
action_51 (12) = happyShift action_4
action_51 (13) = happyShift action_5
action_51 (14) = happyShift action_6
action_51 (17) = happyShift action_27
action_51 (18) = happyShift action_7
action_51 (19) = happyShift action_8
action_51 (21) = happyShift action_9
action_51 (22) = happyShift action_52
action_51 (24) = happyShift action_10
action_51 (29) = happyShift action_28
action_51 (30) = happyShift action_29
action_51 (31) = happyShift action_30
action_51 (32) = happyShift action_31
action_51 (33) = happyShift action_32
action_51 (34) = happyShift action_33
action_51 (35) = happyShift action_11
action_51 (36) = happyShift action_12
action_51 (39) = happyShift action_13
action_51 (4) = happyGoto action_21
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (38) = happyShift action_65
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_2
action_53 (7) = happyShift action_22
action_53 (8) = happyShift action_23
action_53 (9) = happyShift action_24
action_53 (10) = happyShift action_25
action_53 (11) = happyShift action_26
action_53 (12) = happyShift action_4
action_53 (13) = happyShift action_5
action_53 (14) = happyShift action_6
action_53 (17) = happyShift action_27
action_53 (18) = happyShift action_7
action_53 (19) = happyShift action_8
action_53 (21) = happyShift action_9
action_53 (24) = happyShift action_10
action_53 (29) = happyShift action_28
action_53 (30) = happyShift action_29
action_53 (31) = happyShift action_30
action_53 (32) = happyShift action_31
action_53 (33) = happyShift action_32
action_53 (34) = happyShift action_33
action_53 (35) = happyShift action_11
action_53 (36) = happyShift action_12
action_53 (37) = happyShift action_64
action_53 (39) = happyShift action_13
action_53 (4) = happyGoto action_21
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_22
action_54 (8) = happyShift action_23
action_54 (9) = happyShift action_24
action_54 (10) = happyShift action_25
action_54 (11) = happyShift action_26
action_54 (12) = happyShift action_4
action_54 (13) = happyShift action_5
action_54 (14) = happyShift action_6
action_54 (17) = happyShift action_27
action_54 (18) = happyShift action_7
action_54 (19) = happyShift action_8
action_54 (21) = happyShift action_9
action_54 (24) = happyShift action_10
action_54 (25) = happyShift action_63
action_54 (29) = happyShift action_28
action_54 (30) = happyShift action_29
action_54 (31) = happyShift action_30
action_54 (32) = happyShift action_31
action_54 (33) = happyShift action_32
action_54 (34) = happyShift action_33
action_54 (35) = happyShift action_11
action_54 (36) = happyShift action_12
action_54 (39) = happyShift action_13
action_54 (4) = happyGoto action_21
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (20) = happyShift action_62
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (21) = happyShift action_56
action_56 (26) = happyShift action_57
action_56 (27) = happyShift action_58
action_56 (5) = happyGoto action_61
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_25

action_58 _ = happyReduce_26

action_59 (6) = happyShift action_2
action_59 (7) = happyShift action_22
action_59 (8) = happyShift action_23
action_59 (9) = happyShift action_24
action_59 (10) = happyShift action_25
action_59 (11) = happyShift action_26
action_59 (12) = happyShift action_4
action_59 (13) = happyShift action_5
action_59 (14) = happyShift action_6
action_59 (16) = happyShift action_60
action_59 (17) = happyShift action_27
action_59 (18) = happyShift action_7
action_59 (19) = happyShift action_8
action_59 (21) = happyShift action_9
action_59 (24) = happyShift action_10
action_59 (29) = happyShift action_28
action_59 (30) = happyShift action_29
action_59 (31) = happyShift action_30
action_59 (32) = happyShift action_31
action_59 (33) = happyShift action_32
action_59 (34) = happyShift action_33
action_59 (35) = happyShift action_11
action_59 (36) = happyShift action_12
action_59 (39) = happyShift action_13
action_59 (4) = happyGoto action_21
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
action_60 (39) = happyShift action_13
action_60 (4) = happyGoto action_71
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (20) = happyShift action_70
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (6) = happyShift action_2
action_62 (12) = happyShift action_4
action_62 (13) = happyShift action_5
action_62 (14) = happyShift action_6
action_62 (18) = happyShift action_7
action_62 (19) = happyShift action_8
action_62 (21) = happyShift action_9
action_62 (24) = happyShift action_10
action_62 (35) = happyShift action_11
action_62 (36) = happyShift action_12
action_62 (39) = happyShift action_13
action_62 (4) = happyGoto action_69
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (6) = happyShift action_2
action_63 (12) = happyShift action_4
action_63 (13) = happyShift action_5
action_63 (14) = happyShift action_6
action_63 (18) = happyShift action_7
action_63 (19) = happyShift action_8
action_63 (21) = happyShift action_9
action_63 (24) = happyShift action_10
action_63 (35) = happyShift action_11
action_63 (36) = happyShift action_12
action_63 (39) = happyShift action_13
action_63 (4) = happyGoto action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (6) = happyShift action_2
action_64 (12) = happyShift action_4
action_64 (13) = happyShift action_5
action_64 (14) = happyShift action_6
action_64 (18) = happyShift action_7
action_64 (19) = happyShift action_8
action_64 (21) = happyShift action_9
action_64 (24) = happyShift action_10
action_64 (35) = happyShift action_11
action_64 (36) = happyShift action_12
action_64 (39) = happyShift action_13
action_64 (4) = happyGoto action_67
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (21) = happyShift action_66
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (6) = happyShift action_2
action_66 (12) = happyShift action_4
action_66 (13) = happyShift action_5
action_66 (14) = happyShift action_6
action_66 (18) = happyShift action_7
action_66 (19) = happyShift action_8
action_66 (21) = happyShift action_9
action_66 (24) = happyShift action_10
action_66 (35) = happyShift action_11
action_66 (36) = happyShift action_12
action_66 (39) = happyShift action_13
action_66 (4) = happyGoto action_74
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (6) = happyShift action_2
action_67 (7) = happyShift action_22
action_67 (8) = happyShift action_23
action_67 (9) = happyShift action_24
action_67 (10) = happyShift action_25
action_67 (11) = happyShift action_26
action_67 (12) = happyShift action_4
action_67 (13) = happyShift action_5
action_67 (14) = happyShift action_6
action_67 (17) = happyShift action_27
action_67 (18) = happyShift action_7
action_67 (19) = happyShift action_8
action_67 (21) = happyShift action_9
action_67 (24) = happyShift action_10
action_67 (29) = happyShift action_28
action_67 (30) = happyShift action_29
action_67 (31) = happyShift action_30
action_67 (32) = happyShift action_31
action_67 (33) = happyShift action_32
action_67 (34) = happyShift action_33
action_67 (35) = happyShift action_11
action_67 (36) = happyShift action_12
action_67 (38) = happyShift action_73
action_67 (39) = happyShift action_13
action_67 (4) = happyGoto action_21
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (6) = happyShift action_2
action_68 (7) = happyShift action_22
action_68 (8) = happyShift action_23
action_68 (9) = happyShift action_24
action_68 (10) = happyShift action_25
action_68 (11) = happyShift action_26
action_68 (12) = happyShift action_4
action_68 (13) = happyShift action_5
action_68 (14) = happyShift action_6
action_68 (17) = happyShift action_27
action_68 (18) = happyShift action_7
action_68 (19) = happyShift action_8
action_68 (21) = happyShift action_9
action_68 (24) = happyShift action_10
action_68 (29) = happyShift action_28
action_68 (30) = happyShift action_29
action_68 (31) = happyShift action_30
action_68 (32) = happyShift action_31
action_68 (33) = happyShift action_32
action_68 (34) = happyShift action_33
action_68 (35) = happyShift action_11
action_68 (36) = happyShift action_12
action_68 (39) = happyShift action_13
action_68 (4) = happyGoto action_21
action_68 _ = happyReduce_15

action_69 (6) = happyShift action_2
action_69 (7) = happyShift action_22
action_69 (8) = happyShift action_23
action_69 (9) = happyShift action_24
action_69 (10) = happyShift action_25
action_69 (11) = happyShift action_26
action_69 (12) = happyShift action_4
action_69 (13) = happyShift action_5
action_69 (14) = happyShift action_6
action_69 (17) = happyShift action_27
action_69 (18) = happyShift action_7
action_69 (19) = happyShift action_8
action_69 (21) = happyShift action_9
action_69 (24) = happyShift action_10
action_69 (29) = happyShift action_28
action_69 (30) = happyShift action_29
action_69 (31) = happyShift action_30
action_69 (32) = happyShift action_31
action_69 (33) = happyShift action_32
action_69 (34) = happyShift action_33
action_69 (35) = happyShift action_11
action_69 (36) = happyShift action_12
action_69 (39) = happyShift action_13
action_69 (4) = happyGoto action_21
action_69 _ = happyReduce_12

action_70 (21) = happyShift action_56
action_70 (26) = happyShift action_57
action_70 (27) = happyShift action_58
action_70 (5) = happyGoto action_72
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (6) = happyShift action_2
action_71 (7) = happyShift action_22
action_71 (8) = happyShift action_23
action_71 (9) = happyShift action_24
action_71 (10) = happyShift action_25
action_71 (11) = happyShift action_26
action_71 (12) = happyShift action_4
action_71 (13) = happyShift action_5
action_71 (14) = happyShift action_6
action_71 (17) = happyShift action_27
action_71 (18) = happyShift action_7
action_71 (19) = happyShift action_8
action_71 (21) = happyShift action_9
action_71 (24) = happyShift action_10
action_71 (29) = happyShift action_28
action_71 (30) = happyShift action_29
action_71 (31) = happyShift action_30
action_71 (32) = happyShift action_31
action_71 (33) = happyShift action_32
action_71 (34) = happyShift action_33
action_71 (35) = happyShift action_11
action_71 (36) = happyShift action_12
action_71 (39) = happyShift action_13
action_71 (4) = happyGoto action_21
action_71 _ = happyReduce_9

action_72 (22) = happyShift action_77
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (6) = happyShift action_2
action_73 (12) = happyShift action_4
action_73 (13) = happyShift action_5
action_73 (14) = happyShift action_6
action_73 (18) = happyShift action_7
action_73 (19) = happyShift action_8
action_73 (21) = happyShift action_9
action_73 (24) = happyShift action_10
action_73 (35) = happyShift action_11
action_73 (36) = happyShift action_12
action_73 (39) = happyShift action_13
action_73 (4) = happyGoto action_76
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (6) = happyShift action_2
action_74 (7) = happyShift action_22
action_74 (8) = happyShift action_23
action_74 (9) = happyShift action_24
action_74 (10) = happyShift action_25
action_74 (11) = happyShift action_26
action_74 (12) = happyShift action_4
action_74 (13) = happyShift action_5
action_74 (14) = happyShift action_6
action_74 (17) = happyShift action_27
action_74 (18) = happyShift action_7
action_74 (19) = happyShift action_8
action_74 (21) = happyShift action_9
action_74 (22) = happyShift action_75
action_74 (24) = happyShift action_10
action_74 (29) = happyShift action_28
action_74 (30) = happyShift action_29
action_74 (31) = happyShift action_30
action_74 (32) = happyShift action_31
action_74 (33) = happyShift action_32
action_74 (34) = happyShift action_33
action_74 (35) = happyShift action_11
action_74 (36) = happyShift action_12
action_74 (39) = happyShift action_13
action_74 (4) = happyGoto action_21
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_24

action_76 (6) = happyShift action_2
action_76 (7) = happyShift action_22
action_76 (8) = happyShift action_23
action_76 (9) = happyShift action_24
action_76 (10) = happyShift action_25
action_76 (11) = happyShift action_26
action_76 (12) = happyShift action_4
action_76 (13) = happyShift action_5
action_76 (14) = happyShift action_6
action_76 (17) = happyShift action_27
action_76 (18) = happyShift action_7
action_76 (19) = happyShift action_8
action_76 (21) = happyShift action_9
action_76 (24) = happyShift action_10
action_76 (29) = happyShift action_28
action_76 (30) = happyShift action_29
action_76 (31) = happyShift action_30
action_76 (32) = happyShift action_31
action_76 (33) = happyShift action_32
action_76 (34) = happyShift action_33
action_76 (35) = happyShift action_11
action_76 (36) = happyShift action_12
action_76 (39) = happyShift action_13
action_76 (4) = happyGoto action_21
action_76 _ = happyReduce_23

action_77 _ = happyReduce_27

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

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_27 = happyReduce 5 5 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

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
	TokenWhile -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
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

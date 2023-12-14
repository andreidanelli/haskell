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
happyExpList = Happy_Data_Array.listArray (0,235) ([7200,75,258,0,0,0,49152,38719,2032,0,0,0,0,28800,300,8,0,0,256,0,22753,4098,16384,0,14400,150,4,0,0,4096,32768,28287,4065,0,128,49120,63563,3,0,2048,4807,16512,38456,1024,45506,8196,36368,37,28801,300,33800,2403,8256,19228,512,22753,4098,50952,32786,14400,150,49668,1201,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,19228,512,16384,24,0,0,14400,150,65028,36025,63,512,0,8192,12,0,0,0,0,65280,49758,2079,4807,128,2048,0,45506,8196,36368,37,1,0,0,0,0,2048,3,0,0,0,4,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","\"-\"","\"*\"","\"&&\"","true","false","if","then","else","\"||\"","var","'\\\\'","\"->\"","'('","')'","'='","let","in","Bool","Num","':'","'>'","'<'","\">=\"","\"<=\"","\"==\"","\"!=\"","\"!\"","%eof"]
        bit_start = st * 35
        bit_end = (st + 1) * 35
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..34]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (11) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (13) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (18) = happyShift action_8
action_0 (20) = happyShift action_9
action_0 (23) = happyShift action_10
action_0 (34) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_18
action_3 (8) = happyShift action_19
action_3 (9) = happyShift action_20
action_3 (10) = happyShift action_21
action_3 (11) = happyShift action_4
action_3 (12) = happyShift action_5
action_3 (13) = happyShift action_6
action_3 (16) = happyShift action_22
action_3 (17) = happyShift action_7
action_3 (18) = happyShift action_8
action_3 (20) = happyShift action_9
action_3 (23) = happyShift action_10
action_3 (28) = happyShift action_23
action_3 (29) = happyShift action_24
action_3 (30) = happyShift action_25
action_3 (31) = happyShift action_26
action_3 (32) = happyShift action_27
action_3 (33) = happyShift action_28
action_3 (34) = happyShift action_11
action_3 (35) = happyAccept
action_3 (4) = happyGoto action_17
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (11) = happyShift action_4
action_6 (12) = happyShift action_5
action_6 (13) = happyShift action_6
action_6 (17) = happyShift action_7
action_6 (18) = happyShift action_8
action_6 (20) = happyShift action_9
action_6 (23) = happyShift action_10
action_6 (34) = happyShift action_11
action_6 (4) = happyGoto action_16
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_10

action_8 (17) = happyShift action_15
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (6) = happyShift action_2
action_9 (11) = happyShift action_4
action_9 (12) = happyShift action_5
action_9 (13) = happyShift action_6
action_9 (17) = happyShift action_7
action_9 (18) = happyShift action_8
action_9 (20) = happyShift action_9
action_9 (23) = happyShift action_10
action_9 (34) = happyShift action_11
action_9 (4) = happyGoto action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (17) = happyShift action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (11) = happyShift action_4
action_11 (12) = happyShift action_5
action_11 (13) = happyShift action_6
action_11 (17) = happyShift action_7
action_11 (18) = happyShift action_8
action_11 (20) = happyShift action_9
action_11 (23) = happyShift action_10
action_11 (34) = happyShift action_11
action_11 (4) = happyGoto action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_18
action_12 (8) = happyShift action_19
action_12 (9) = happyShift action_20
action_12 (10) = happyShift action_21
action_12 (11) = happyShift action_4
action_12 (12) = happyShift action_5
action_12 (13) = happyShift action_6
action_12 (16) = happyShift action_22
action_12 (17) = happyShift action_7
action_12 (18) = happyShift action_8
action_12 (20) = happyShift action_9
action_12 (23) = happyShift action_10
action_12 (28) = happyShift action_23
action_12 (29) = happyShift action_24
action_12 (30) = happyShift action_25
action_12 (31) = happyShift action_26
action_12 (32) = happyShift action_27
action_12 (33) = happyShift action_28
action_12 (34) = happyShift action_11
action_12 (4) = happyGoto action_17
action_12 _ = happyReduce_21

action_13 (22) = happyShift action_43
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_18
action_14 (8) = happyShift action_19
action_14 (9) = happyShift action_20
action_14 (10) = happyShift action_21
action_14 (11) = happyShift action_4
action_14 (12) = happyShift action_5
action_14 (13) = happyShift action_6
action_14 (16) = happyShift action_22
action_14 (17) = happyShift action_7
action_14 (18) = happyShift action_8
action_14 (20) = happyShift action_9
action_14 (21) = happyShift action_42
action_14 (23) = happyShift action_10
action_14 (28) = happyShift action_23
action_14 (29) = happyShift action_24
action_14 (30) = happyShift action_25
action_14 (31) = happyShift action_26
action_14 (32) = happyShift action_27
action_14 (33) = happyShift action_28
action_14 (34) = happyShift action_11
action_14 (4) = happyGoto action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (27) = happyShift action_41
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_18
action_16 (8) = happyShift action_19
action_16 (9) = happyShift action_20
action_16 (10) = happyShift action_21
action_16 (11) = happyShift action_4
action_16 (12) = happyShift action_5
action_16 (13) = happyShift action_6
action_16 (14) = happyShift action_40
action_16 (16) = happyShift action_22
action_16 (17) = happyShift action_7
action_16 (18) = happyShift action_8
action_16 (20) = happyShift action_9
action_16 (23) = happyShift action_10
action_16 (28) = happyShift action_23
action_16 (29) = happyShift action_24
action_16 (30) = happyShift action_25
action_16 (31) = happyShift action_26
action_16 (32) = happyShift action_27
action_16 (33) = happyShift action_28
action_16 (34) = happyShift action_11
action_16 (4) = happyGoto action_17
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_18
action_17 (8) = happyShift action_19
action_17 (9) = happyShift action_20
action_17 (10) = happyShift action_21
action_17 (11) = happyShift action_4
action_17 (12) = happyShift action_5
action_17 (13) = happyShift action_6
action_17 (16) = happyShift action_22
action_17 (17) = happyShift action_7
action_17 (18) = happyShift action_8
action_17 (20) = happyShift action_9
action_17 (23) = happyShift action_10
action_17 (28) = happyShift action_23
action_17 (29) = happyShift action_24
action_17 (30) = happyShift action_25
action_17 (31) = happyShift action_26
action_17 (32) = happyShift action_27
action_17 (33) = happyShift action_28
action_17 (34) = happyShift action_11
action_17 (4) = happyGoto action_17
action_17 _ = happyReduce_12

action_18 (6) = happyShift action_2
action_18 (11) = happyShift action_4
action_18 (12) = happyShift action_5
action_18 (13) = happyShift action_6
action_18 (17) = happyShift action_7
action_18 (18) = happyShift action_8
action_18 (20) = happyShift action_9
action_18 (23) = happyShift action_10
action_18 (34) = happyShift action_11
action_18 (4) = happyGoto action_39
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (11) = happyShift action_4
action_19 (12) = happyShift action_5
action_19 (13) = happyShift action_6
action_19 (17) = happyShift action_7
action_19 (18) = happyShift action_8
action_19 (20) = happyShift action_9
action_19 (23) = happyShift action_10
action_19 (34) = happyShift action_11
action_19 (4) = happyGoto action_38
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (11) = happyShift action_4
action_20 (12) = happyShift action_5
action_20 (13) = happyShift action_6
action_20 (17) = happyShift action_7
action_20 (18) = happyShift action_8
action_20 (20) = happyShift action_9
action_20 (23) = happyShift action_10
action_20 (34) = happyShift action_11
action_20 (4) = happyGoto action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (11) = happyShift action_4
action_21 (12) = happyShift action_5
action_21 (13) = happyShift action_6
action_21 (17) = happyShift action_7
action_21 (18) = happyShift action_8
action_21 (20) = happyShift action_9
action_21 (23) = happyShift action_10
action_21 (34) = happyShift action_11
action_21 (4) = happyGoto action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (11) = happyShift action_4
action_22 (12) = happyShift action_5
action_22 (13) = happyShift action_6
action_22 (17) = happyShift action_7
action_22 (18) = happyShift action_8
action_22 (20) = happyShift action_9
action_22 (23) = happyShift action_10
action_22 (34) = happyShift action_11
action_22 (4) = happyGoto action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (11) = happyShift action_4
action_23 (12) = happyShift action_5
action_23 (13) = happyShift action_6
action_23 (17) = happyShift action_7
action_23 (18) = happyShift action_8
action_23 (20) = happyShift action_9
action_23 (23) = happyShift action_10
action_23 (34) = happyShift action_11
action_23 (4) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (11) = happyShift action_4
action_24 (12) = happyShift action_5
action_24 (13) = happyShift action_6
action_24 (17) = happyShift action_7
action_24 (18) = happyShift action_8
action_24 (20) = happyShift action_9
action_24 (23) = happyShift action_10
action_24 (34) = happyShift action_11
action_24 (4) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (11) = happyShift action_4
action_25 (12) = happyShift action_5
action_25 (13) = happyShift action_6
action_25 (17) = happyShift action_7
action_25 (18) = happyShift action_8
action_25 (20) = happyShift action_9
action_25 (23) = happyShift action_10
action_25 (34) = happyShift action_11
action_25 (4) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (11) = happyShift action_4
action_26 (12) = happyShift action_5
action_26 (13) = happyShift action_6
action_26 (17) = happyShift action_7
action_26 (18) = happyShift action_8
action_26 (20) = happyShift action_9
action_26 (23) = happyShift action_10
action_26 (34) = happyShift action_11
action_26 (4) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (11) = happyShift action_4
action_27 (12) = happyShift action_5
action_27 (13) = happyShift action_6
action_27 (17) = happyShift action_7
action_27 (18) = happyShift action_8
action_27 (20) = happyShift action_9
action_27 (23) = happyShift action_10
action_27 (34) = happyShift action_11
action_27 (4) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (11) = happyShift action_4
action_28 (12) = happyShift action_5
action_28 (13) = happyShift action_6
action_28 (17) = happyShift action_7
action_28 (18) = happyShift action_8
action_28 (20) = happyShift action_9
action_28 (23) = happyShift action_10
action_28 (34) = happyShift action_11
action_28 (4) = happyGoto action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_18
action_29 (8) = happyShift action_19
action_29 (9) = happyShift action_20
action_29 (10) = happyShift action_21
action_29 (11) = happyShift action_4
action_29 (12) = happyShift action_5
action_29 (13) = happyShift action_6
action_29 (16) = happyShift action_22
action_29 (17) = happyShift action_7
action_29 (18) = happyShift action_8
action_29 (20) = happyShift action_9
action_29 (23) = happyShift action_10
action_29 (28) = happyShift action_23
action_29 (29) = happyShift action_24
action_29 (30) = happyShift action_25
action_29 (31) = happyShift action_26
action_29 (32) = happyShift action_27
action_29 (33) = happyShift action_28
action_29 (34) = happyShift action_11
action_29 (4) = happyGoto action_17
action_29 _ = happyReduce_20

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_18
action_30 (8) = happyShift action_19
action_30 (9) = happyShift action_20
action_30 (10) = happyShift action_21
action_30 (11) = happyShift action_4
action_30 (12) = happyShift action_5
action_30 (13) = happyShift action_6
action_30 (16) = happyShift action_22
action_30 (17) = happyShift action_7
action_30 (18) = happyShift action_8
action_30 (20) = happyShift action_9
action_30 (23) = happyShift action_10
action_30 (28) = happyShift action_23
action_30 (29) = happyShift action_24
action_30 (30) = happyShift action_25
action_30 (31) = happyShift action_26
action_30 (32) = happyShift action_27
action_30 (33) = happyShift action_28
action_30 (34) = happyShift action_11
action_30 (4) = happyGoto action_17
action_30 _ = happyReduce_19

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_18
action_31 (8) = happyShift action_19
action_31 (9) = happyShift action_20
action_31 (10) = happyShift action_21
action_31 (11) = happyShift action_4
action_31 (12) = happyShift action_5
action_31 (13) = happyShift action_6
action_31 (16) = happyShift action_22
action_31 (17) = happyShift action_7
action_31 (18) = happyShift action_8
action_31 (20) = happyShift action_9
action_31 (23) = happyShift action_10
action_31 (28) = happyShift action_23
action_31 (29) = happyShift action_24
action_31 (30) = happyShift action_25
action_31 (31) = happyShift action_26
action_31 (32) = happyShift action_27
action_31 (33) = happyShift action_28
action_31 (34) = happyShift action_11
action_31 (4) = happyGoto action_17
action_31 _ = happyReduce_18

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_18
action_32 (8) = happyShift action_19
action_32 (9) = happyShift action_20
action_32 (10) = happyShift action_21
action_32 (11) = happyShift action_4
action_32 (12) = happyShift action_5
action_32 (13) = happyShift action_6
action_32 (16) = happyShift action_22
action_32 (17) = happyShift action_7
action_32 (18) = happyShift action_8
action_32 (20) = happyShift action_9
action_32 (23) = happyShift action_10
action_32 (28) = happyShift action_23
action_32 (29) = happyShift action_24
action_32 (30) = happyShift action_25
action_32 (31) = happyShift action_26
action_32 (32) = happyShift action_27
action_32 (33) = happyShift action_28
action_32 (34) = happyShift action_11
action_32 (4) = happyGoto action_17
action_32 _ = happyReduce_17

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_18
action_33 (8) = happyShift action_19
action_33 (9) = happyShift action_20
action_33 (10) = happyShift action_21
action_33 (11) = happyShift action_4
action_33 (12) = happyShift action_5
action_33 (13) = happyShift action_6
action_33 (16) = happyShift action_22
action_33 (17) = happyShift action_7
action_33 (18) = happyShift action_8
action_33 (20) = happyShift action_9
action_33 (23) = happyShift action_10
action_33 (28) = happyShift action_23
action_33 (29) = happyShift action_24
action_33 (30) = happyShift action_25
action_33 (31) = happyShift action_26
action_33 (32) = happyShift action_27
action_33 (33) = happyShift action_28
action_33 (34) = happyShift action_11
action_33 (4) = happyGoto action_17
action_33 _ = happyReduce_16

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_18
action_34 (8) = happyShift action_19
action_34 (9) = happyShift action_20
action_34 (10) = happyShift action_21
action_34 (11) = happyShift action_4
action_34 (12) = happyShift action_5
action_34 (13) = happyShift action_6
action_34 (16) = happyShift action_22
action_34 (17) = happyShift action_7
action_34 (18) = happyShift action_8
action_34 (20) = happyShift action_9
action_34 (23) = happyShift action_10
action_34 (28) = happyShift action_23
action_34 (29) = happyShift action_24
action_34 (30) = happyShift action_25
action_34 (31) = happyShift action_26
action_34 (32) = happyShift action_27
action_34 (33) = happyShift action_28
action_34 (34) = happyShift action_11
action_34 (4) = happyGoto action_17
action_34 _ = happyReduce_15

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_18
action_35 (8) = happyShift action_19
action_35 (9) = happyShift action_20
action_35 (10) = happyShift action_21
action_35 (11) = happyShift action_4
action_35 (12) = happyShift action_5
action_35 (13) = happyShift action_6
action_35 (16) = happyShift action_22
action_35 (17) = happyShift action_7
action_35 (18) = happyShift action_8
action_35 (20) = happyShift action_9
action_35 (23) = happyShift action_10
action_35 (28) = happyShift action_23
action_35 (29) = happyShift action_24
action_35 (30) = happyShift action_25
action_35 (31) = happyShift action_26
action_35 (32) = happyShift action_27
action_35 (33) = happyShift action_28
action_35 (34) = happyShift action_11
action_35 (4) = happyGoto action_17
action_35 _ = happyReduce_9

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_18
action_36 (8) = happyShift action_19
action_36 (9) = happyShift action_20
action_36 (10) = happyShift action_21
action_36 (11) = happyShift action_4
action_36 (12) = happyShift action_5
action_36 (13) = happyShift action_6
action_36 (16) = happyShift action_22
action_36 (17) = happyShift action_7
action_36 (18) = happyShift action_8
action_36 (20) = happyShift action_9
action_36 (23) = happyShift action_10
action_36 (28) = happyShift action_23
action_36 (29) = happyShift action_24
action_36 (30) = happyShift action_25
action_36 (31) = happyShift action_26
action_36 (32) = happyShift action_27
action_36 (33) = happyShift action_28
action_36 (34) = happyShift action_11
action_36 (4) = happyGoto action_17
action_36 _ = happyReduce_7

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_18
action_37 (8) = happyShift action_19
action_37 (9) = happyShift action_20
action_37 (10) = happyShift action_21
action_37 (11) = happyShift action_4
action_37 (12) = happyShift action_5
action_37 (13) = happyShift action_6
action_37 (16) = happyShift action_22
action_37 (17) = happyShift action_7
action_37 (18) = happyShift action_8
action_37 (20) = happyShift action_9
action_37 (23) = happyShift action_10
action_37 (28) = happyShift action_23
action_37 (29) = happyShift action_24
action_37 (30) = happyShift action_25
action_37 (31) = happyShift action_26
action_37 (32) = happyShift action_27
action_37 (33) = happyShift action_28
action_37 (34) = happyShift action_11
action_37 (4) = happyGoto action_17
action_37 _ = happyReduce_6

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_18
action_38 (8) = happyShift action_19
action_38 (9) = happyShift action_20
action_38 (10) = happyShift action_21
action_38 (11) = happyShift action_4
action_38 (12) = happyShift action_5
action_38 (13) = happyShift action_6
action_38 (16) = happyShift action_22
action_38 (17) = happyShift action_7
action_38 (18) = happyShift action_8
action_38 (20) = happyShift action_9
action_38 (23) = happyShift action_10
action_38 (28) = happyShift action_23
action_38 (29) = happyShift action_24
action_38 (30) = happyShift action_25
action_38 (31) = happyShift action_26
action_38 (32) = happyShift action_27
action_38 (33) = happyShift action_28
action_38 (34) = happyShift action_11
action_38 (4) = happyGoto action_17
action_38 _ = happyReduce_5

action_39 (6) = happyShift action_2
action_39 (8) = happyShift action_19
action_39 (9) = happyShift action_20
action_39 (10) = happyShift action_21
action_39 (11) = happyShift action_4
action_39 (12) = happyShift action_5
action_39 (13) = happyShift action_6
action_39 (16) = happyShift action_22
action_39 (17) = happyShift action_7
action_39 (18) = happyShift action_8
action_39 (20) = happyShift action_9
action_39 (23) = happyShift action_10
action_39 (28) = happyShift action_23
action_39 (29) = happyShift action_24
action_39 (30) = happyShift action_25
action_39 (31) = happyShift action_26
action_39 (32) = happyShift action_27
action_39 (33) = happyShift action_28
action_39 (34) = happyShift action_11
action_39 (4) = happyGoto action_17
action_39 _ = happyReduce_4

action_40 (6) = happyShift action_2
action_40 (11) = happyShift action_4
action_40 (12) = happyShift action_5
action_40 (13) = happyShift action_6
action_40 (17) = happyShift action_7
action_40 (18) = happyShift action_8
action_40 (20) = happyShift action_9
action_40 (23) = happyShift action_10
action_40 (34) = happyShift action_11
action_40 (4) = happyGoto action_49
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (20) = happyShift action_46
action_41 (25) = happyShift action_47
action_41 (26) = happyShift action_48
action_41 (5) = happyGoto action_45
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_13

action_43 (6) = happyShift action_2
action_43 (11) = happyShift action_4
action_43 (12) = happyShift action_5
action_43 (13) = happyShift action_6
action_43 (17) = happyShift action_7
action_43 (18) = happyShift action_8
action_43 (20) = happyShift action_9
action_43 (23) = happyShift action_10
action_43 (34) = happyShift action_11
action_43 (4) = happyGoto action_44
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_18
action_44 (8) = happyShift action_19
action_44 (9) = happyShift action_20
action_44 (10) = happyShift action_21
action_44 (11) = happyShift action_4
action_44 (12) = happyShift action_5
action_44 (13) = happyShift action_6
action_44 (16) = happyShift action_22
action_44 (17) = happyShift action_7
action_44 (18) = happyShift action_8
action_44 (20) = happyShift action_9
action_44 (23) = happyShift action_10
action_44 (24) = happyShift action_53
action_44 (28) = happyShift action_23
action_44 (29) = happyShift action_24
action_44 (30) = happyShift action_25
action_44 (31) = happyShift action_26
action_44 (32) = happyShift action_27
action_44 (33) = happyShift action_28
action_44 (34) = happyShift action_11
action_44 (4) = happyGoto action_17
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (19) = happyShift action_52
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (20) = happyShift action_46
action_46 (25) = happyShift action_47
action_46 (26) = happyShift action_48
action_46 (5) = happyGoto action_51
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_22

action_48 _ = happyReduce_23

action_49 (6) = happyShift action_2
action_49 (7) = happyShift action_18
action_49 (8) = happyShift action_19
action_49 (9) = happyShift action_20
action_49 (10) = happyShift action_21
action_49 (11) = happyShift action_4
action_49 (12) = happyShift action_5
action_49 (13) = happyShift action_6
action_49 (15) = happyShift action_50
action_49 (16) = happyShift action_22
action_49 (17) = happyShift action_7
action_49 (18) = happyShift action_8
action_49 (20) = happyShift action_9
action_49 (23) = happyShift action_10
action_49 (28) = happyShift action_23
action_49 (29) = happyShift action_24
action_49 (30) = happyShift action_25
action_49 (31) = happyShift action_26
action_49 (32) = happyShift action_27
action_49 (33) = happyShift action_28
action_49 (34) = happyShift action_11
action_49 (4) = happyGoto action_17
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (11) = happyShift action_4
action_50 (12) = happyShift action_5
action_50 (13) = happyShift action_6
action_50 (17) = happyShift action_7
action_50 (18) = happyShift action_8
action_50 (20) = happyShift action_9
action_50 (23) = happyShift action_10
action_50 (34) = happyShift action_11
action_50 (4) = happyGoto action_57
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (19) = happyShift action_56
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_2
action_52 (11) = happyShift action_4
action_52 (12) = happyShift action_5
action_52 (13) = happyShift action_6
action_52 (17) = happyShift action_7
action_52 (18) = happyShift action_8
action_52 (20) = happyShift action_9
action_52 (23) = happyShift action_10
action_52 (34) = happyShift action_11
action_52 (4) = happyGoto action_55
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_2
action_53 (11) = happyShift action_4
action_53 (12) = happyShift action_5
action_53 (13) = happyShift action_6
action_53 (17) = happyShift action_7
action_53 (18) = happyShift action_8
action_53 (20) = happyShift action_9
action_53 (23) = happyShift action_10
action_53 (34) = happyShift action_11
action_53 (4) = happyGoto action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_18
action_54 (8) = happyShift action_19
action_54 (9) = happyShift action_20
action_54 (10) = happyShift action_21
action_54 (11) = happyShift action_4
action_54 (12) = happyShift action_5
action_54 (13) = happyShift action_6
action_54 (16) = happyShift action_22
action_54 (17) = happyShift action_7
action_54 (18) = happyShift action_8
action_54 (20) = happyShift action_9
action_54 (23) = happyShift action_10
action_54 (28) = happyShift action_23
action_54 (29) = happyShift action_24
action_54 (30) = happyShift action_25
action_54 (31) = happyShift action_26
action_54 (32) = happyShift action_27
action_54 (33) = happyShift action_28
action_54 (34) = happyShift action_11
action_54 (4) = happyGoto action_17
action_54 _ = happyReduce_14

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_18
action_55 (8) = happyShift action_19
action_55 (9) = happyShift action_20
action_55 (10) = happyShift action_21
action_55 (11) = happyShift action_4
action_55 (12) = happyShift action_5
action_55 (13) = happyShift action_6
action_55 (16) = happyShift action_22
action_55 (17) = happyShift action_7
action_55 (18) = happyShift action_8
action_55 (20) = happyShift action_9
action_55 (23) = happyShift action_10
action_55 (28) = happyShift action_23
action_55 (29) = happyShift action_24
action_55 (30) = happyShift action_25
action_55 (31) = happyShift action_26
action_55 (32) = happyShift action_27
action_55 (33) = happyShift action_28
action_55 (34) = happyShift action_11
action_55 (4) = happyGoto action_17
action_55 _ = happyReduce_11

action_56 (20) = happyShift action_46
action_56 (25) = happyShift action_47
action_56 (26) = happyShift action_48
action_56 (5) = happyGoto action_58
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (6) = happyShift action_2
action_57 (7) = happyShift action_18
action_57 (8) = happyShift action_19
action_57 (9) = happyShift action_20
action_57 (10) = happyShift action_21
action_57 (11) = happyShift action_4
action_57 (12) = happyShift action_5
action_57 (13) = happyShift action_6
action_57 (16) = happyShift action_22
action_57 (17) = happyShift action_7
action_57 (18) = happyShift action_8
action_57 (20) = happyShift action_9
action_57 (23) = happyShift action_10
action_57 (28) = happyShift action_23
action_57 (29) = happyShift action_24
action_57 (30) = happyShift action_25
action_57 (31) = happyShift action_26
action_57 (32) = happyShift action_27
action_57 (33) = happyShift action_28
action_57 (34) = happyShift action_11
action_57 (4) = happyGoto action_17
action_57 _ = happyReduce_8

action_58 (21) = happyShift action_59
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_24

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
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 6 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bigger happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Smaller happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreaterEquals happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LeastEqual happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equals happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Different happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_24 = happyReduce 5 5 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSub -> cont 8;
	TokenMul -> cont 9;
	TokenAnd -> cont 10;
	TokenTrue -> cont 11;
	TokenFalse -> cont 12;
	TokenIf -> cont 13;
	TokenThen -> cont 14;
	TokenElse -> cont 15;
	TokenOr -> cont 16;
	TokenVar happy_dollar_dollar -> cont 17;
	TokenLam -> cont 18;
	TokenArrow -> cont 19;
	TokenLParen -> cont 20;
	TokenRParen -> cont 21;
	TokenEq -> cont 22;
	TokenLet -> cont 23;
	TokenIn -> cont 24;
	TokenBoolean -> cont 25;
	TokenNumber -> cont 26;
	TokenColon -> cont 27;
	TokenBigger -> cont 28;
	TokenSmaller -> cont 29;
	TokenGreaterEquals -> cont 30;
	TokenLeastEqual -> cont 31;
	TokenEquals -> cont 32;
	TokenDifferent -> cont 33;
	TokenNot -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
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

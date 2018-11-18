onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /processor_tb/clk
add wave -noupdate /processor_tb/reset
add wave -noupdate -radix hexadecimal /processor_tb/iAddr
add wave -noupdate -radix decimal -childformat {{/processor_tb/i_processor/reg/regs(0) -radix decimal} {/processor_tb/i_processor/reg/regs(1) -radix decimal} {/processor_tb/i_processor/reg/regs(2) -radix decimal} {/processor_tb/i_processor/reg/regs(3) -radix decimal} {/processor_tb/i_processor/reg/regs(4) -radix decimal} {/processor_tb/i_processor/reg/regs(5) -radix decimal} {/processor_tb/i_processor/reg/regs(6) -radix decimal} {/processor_tb/i_processor/reg/regs(7) -radix decimal} {/processor_tb/i_processor/reg/regs(8) -radix decimal} {/processor_tb/i_processor/reg/regs(9) -radix decimal} {/processor_tb/i_processor/reg/regs(10) -radix decimal} {/processor_tb/i_processor/reg/regs(11) -radix decimal} {/processor_tb/i_processor/reg/regs(12) -radix decimal} {/processor_tb/i_processor/reg/regs(13) -radix decimal} {/processor_tb/i_processor/reg/regs(14) -radix decimal} {/processor_tb/i_processor/reg/regs(15) -radix decimal} {/processor_tb/i_processor/reg/regs(16) -radix decimal} {/processor_tb/i_processor/reg/regs(17) -radix decimal} {/processor_tb/i_processor/reg/regs(18) -radix decimal} {/processor_tb/i_processor/reg/regs(19) -radix decimal} {/processor_tb/i_processor/reg/regs(20) -radix decimal} {/processor_tb/i_processor/reg/regs(21) -radix decimal} {/processor_tb/i_processor/reg/regs(22) -radix decimal} {/processor_tb/i_processor/reg/regs(23) -radix decimal} {/processor_tb/i_processor/reg/regs(24) -radix decimal} {/processor_tb/i_processor/reg/regs(25) -radix decimal} {/processor_tb/i_processor/reg/regs(26) -radix decimal} {/processor_tb/i_processor/reg/regs(27) -radix decimal} {/processor_tb/i_processor/reg/regs(28) -radix decimal} {/processor_tb/i_processor/reg/regs(29) -radix decimal} {/processor_tb/i_processor/reg/regs(30) -radix decimal} {/processor_tb/i_processor/reg/regs(31) -radix decimal}} -subitemconfig {/processor_tb/i_processor/reg/regs(0) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(1) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(2) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(3) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(4) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(5) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(6) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(7) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(8) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(9) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(10) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(11) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(12) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(13) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(14) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(15) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(16) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(17) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(18) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(19) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(20) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(21) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(22) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(23) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(24) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(25) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(26) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(27) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(28) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(29) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(30) {-height 15 -radix decimal} /processor_tb/i_processor/reg/regs(31) {-height 15 -radix decimal}} /processor_tb/i_processor/reg/regs
add wave -noupdate -radix decimal -childformat {{/processor_tb/i_data_mem/memo(0) -radix decimal} {/processor_tb/i_data_mem/memo(1) -radix decimal} {/processor_tb/i_data_mem/memo(2) -radix decimal} {/processor_tb/i_data_mem/memo(3) -radix decimal} {/processor_tb/i_data_mem/memo(4) -radix decimal} {/processor_tb/i_data_mem/memo(5) -radix decimal} {/processor_tb/i_data_mem/memo(6) -radix decimal} {/processor_tb/i_data_mem/memo(7) -radix decimal} {/processor_tb/i_data_mem/memo(8) -radix decimal} {/processor_tb/i_data_mem/memo(9) -radix decimal} {/processor_tb/i_data_mem/memo(10) -radix decimal} {/processor_tb/i_data_mem/memo(11) -radix decimal} {/processor_tb/i_data_mem/memo(12) -radix decimal} {/processor_tb/i_data_mem/memo(13) -radix decimal} {/processor_tb/i_data_mem/memo(14) -radix decimal} {/processor_tb/i_data_mem/memo(15) -radix decimal} {/processor_tb/i_data_mem/memo(16) -radix decimal} {/processor_tb/i_data_mem/memo(17) -radix decimal} {/processor_tb/i_data_mem/memo(18) -radix decimal} {/processor_tb/i_data_mem/memo(19) -radix decimal} {/processor_tb/i_data_mem/memo(20) -radix decimal} {/processor_tb/i_data_mem/memo(21) -radix decimal} {/processor_tb/i_data_mem/memo(22) -radix decimal} {/processor_tb/i_data_mem/memo(23) -radix decimal} {/processor_tb/i_data_mem/memo(24) -radix decimal} {/processor_tb/i_data_mem/memo(25) -radix decimal} {/processor_tb/i_data_mem/memo(26) -radix decimal} {/processor_tb/i_data_mem/memo(27) -radix decimal} {/processor_tb/i_data_mem/memo(28) -radix decimal} {/processor_tb/i_data_mem/memo(29) -radix decimal} {/processor_tb/i_data_mem/memo(30) -radix decimal} {/processor_tb/i_data_mem/memo(31) -radix decimal} {/processor_tb/i_data_mem/memo(32) -radix decimal} {/processor_tb/i_data_mem/memo(33) -radix decimal} {/processor_tb/i_data_mem/memo(34) -radix decimal} {/processor_tb/i_data_mem/memo(35) -radix decimal} {/processor_tb/i_data_mem/memo(36) -radix decimal} {/processor_tb/i_data_mem/memo(37) -radix decimal} {/processor_tb/i_data_mem/memo(38) -radix decimal} {/processor_tb/i_data_mem/memo(39) -radix decimal} {/processor_tb/i_data_mem/memo(40) -radix decimal} {/processor_tb/i_data_mem/memo(41) -radix decimal} {/processor_tb/i_data_mem/memo(42) -radix decimal} {/processor_tb/i_data_mem/memo(43) -radix decimal} {/processor_tb/i_data_mem/memo(44) -radix decimal} {/processor_tb/i_data_mem/memo(45) -radix decimal} {/processor_tb/i_data_mem/memo(46) -radix decimal} {/processor_tb/i_data_mem/memo(47) -radix decimal} {/processor_tb/i_data_mem/memo(48) -radix decimal} {/processor_tb/i_data_mem/memo(49) -radix decimal} {/processor_tb/i_data_mem/memo(50) -radix decimal} {/processor_tb/i_data_mem/memo(51) -radix decimal} {/processor_tb/i_data_mem/memo(52) -radix decimal} {/processor_tb/i_data_mem/memo(53) -radix decimal} {/processor_tb/i_data_mem/memo(54) -radix decimal} {/processor_tb/i_data_mem/memo(55) -radix decimal} {/processor_tb/i_data_mem/memo(56) -radix decimal} {/processor_tb/i_data_mem/memo(57) -radix decimal} {/processor_tb/i_data_mem/memo(58) -radix decimal} {/processor_tb/i_data_mem/memo(59) -radix decimal} {/processor_tb/i_data_mem/memo(60) -radix decimal} {/processor_tb/i_data_mem/memo(61) -radix decimal} {/processor_tb/i_data_mem/memo(62) -radix decimal} {/processor_tb/i_data_mem/memo(63) -radix decimal} {/processor_tb/i_data_mem/memo(64) -radix decimal} {/processor_tb/i_data_mem/memo(65) -radix decimal} {/processor_tb/i_data_mem/memo(66) -radix decimal} {/processor_tb/i_data_mem/memo(67) -radix decimal} {/processor_tb/i_data_mem/memo(68) -radix decimal} {/processor_tb/i_data_mem/memo(69) -radix decimal} {/processor_tb/i_data_mem/memo(70) -radix decimal} {/processor_tb/i_data_mem/memo(71) -radix decimal} {/processor_tb/i_data_mem/memo(72) -radix decimal} {/processor_tb/i_data_mem/memo(73) -radix decimal} {/processor_tb/i_data_mem/memo(74) -radix decimal} {/processor_tb/i_data_mem/memo(75) -radix decimal} {/processor_tb/i_data_mem/memo(76) -radix decimal} {/processor_tb/i_data_mem/memo(77) -radix decimal} {/processor_tb/i_data_mem/memo(78) -radix decimal} {/processor_tb/i_data_mem/memo(79) -radix decimal} {/processor_tb/i_data_mem/memo(80) -radix decimal} {/processor_tb/i_data_mem/memo(81) -radix decimal} {/processor_tb/i_data_mem/memo(82) -radix decimal} {/processor_tb/i_data_mem/memo(83) -radix decimal} {/processor_tb/i_data_mem/memo(84) -radix decimal} {/processor_tb/i_data_mem/memo(85) -radix decimal} {/processor_tb/i_data_mem/memo(86) -radix decimal} {/processor_tb/i_data_mem/memo(87) -radix decimal} {/processor_tb/i_data_mem/memo(88) -radix decimal} {/processor_tb/i_data_mem/memo(89) -radix decimal} {/processor_tb/i_data_mem/memo(90) -radix decimal} {/processor_tb/i_data_mem/memo(91) -radix decimal} {/processor_tb/i_data_mem/memo(92) -radix decimal} {/processor_tb/i_data_mem/memo(93) -radix decimal} {/processor_tb/i_data_mem/memo(94) -radix decimal} {/processor_tb/i_data_mem/memo(95) -radix decimal} {/processor_tb/i_data_mem/memo(96) -radix decimal} {/processor_tb/i_data_mem/memo(97) -radix decimal} {/processor_tb/i_data_mem/memo(98) -radix decimal} {/processor_tb/i_data_mem/memo(99) -radix decimal} {/processor_tb/i_data_mem/memo(100) -radix decimal} {/processor_tb/i_data_mem/memo(101) -radix decimal} {/processor_tb/i_data_mem/memo(102) -radix decimal} {/processor_tb/i_data_mem/memo(103) -radix decimal} {/processor_tb/i_data_mem/memo(104) -radix decimal} {/processor_tb/i_data_mem/memo(105) -radix decimal} {/processor_tb/i_data_mem/memo(106) -radix decimal} {/processor_tb/i_data_mem/memo(107) -radix decimal} {/processor_tb/i_data_mem/memo(108) -radix decimal} {/processor_tb/i_data_mem/memo(109) -radix decimal} {/processor_tb/i_data_mem/memo(110) -radix decimal} {/processor_tb/i_data_mem/memo(111) -radix decimal} {/processor_tb/i_data_mem/memo(112) -radix decimal} {/processor_tb/i_data_mem/memo(113) -radix decimal} {/processor_tb/i_data_mem/memo(114) -radix decimal} {/processor_tb/i_data_mem/memo(115) -radix decimal} {/processor_tb/i_data_mem/memo(116) -radix decimal} {/processor_tb/i_data_mem/memo(117) -radix decimal} {/processor_tb/i_data_mem/memo(118) -radix decimal} {/processor_tb/i_data_mem/memo(119) -radix decimal} {/processor_tb/i_data_mem/memo(120) -radix decimal} {/processor_tb/i_data_mem/memo(121) -radix decimal} {/processor_tb/i_data_mem/memo(122) -radix decimal} {/processor_tb/i_data_mem/memo(123) -radix decimal} {/processor_tb/i_data_mem/memo(124) -radix decimal} {/processor_tb/i_data_mem/memo(125) -radix decimal} {/processor_tb/i_data_mem/memo(126) -radix decimal} {/processor_tb/i_data_mem/memo(127) -radix decimal} {/processor_tb/i_data_mem/memo(128) -radix decimal} {/processor_tb/i_data_mem/memo(129) -radix decimal} {/processor_tb/i_data_mem/memo(130) -radix decimal} {/processor_tb/i_data_mem/memo(131) -radix decimal} {/processor_tb/i_data_mem/memo(132) -radix decimal} {/processor_tb/i_data_mem/memo(133) -radix decimal} {/processor_tb/i_data_mem/memo(134) -radix decimal} {/processor_tb/i_data_mem/memo(135) -radix decimal} {/processor_tb/i_data_mem/memo(136) -radix decimal} {/processor_tb/i_data_mem/memo(137) -radix decimal} {/processor_tb/i_data_mem/memo(138) -radix decimal} {/processor_tb/i_data_mem/memo(139) -radix decimal} {/processor_tb/i_data_mem/memo(140) -radix decimal} {/processor_tb/i_data_mem/memo(141) -radix decimal} {/processor_tb/i_data_mem/memo(142) -radix decimal} {/processor_tb/i_data_mem/memo(143) -radix decimal} {/processor_tb/i_data_mem/memo(144) -radix decimal} {/processor_tb/i_data_mem/memo(145) -radix decimal} {/processor_tb/i_data_mem/memo(146) -radix decimal} {/processor_tb/i_data_mem/memo(147) -radix decimal} {/processor_tb/i_data_mem/memo(148) -radix decimal} {/processor_tb/i_data_mem/memo(149) -radix decimal} {/processor_tb/i_data_mem/memo(150) -radix decimal} {/processor_tb/i_data_mem/memo(151) -radix decimal} {/processor_tb/i_data_mem/memo(152) -radix decimal} {/processor_tb/i_data_mem/memo(153) -radix decimal} {/processor_tb/i_data_mem/memo(154) -radix decimal} {/processor_tb/i_data_mem/memo(155) -radix decimal} {/processor_tb/i_data_mem/memo(156) -radix decimal} {/processor_tb/i_data_mem/memo(157) -radix decimal} {/processor_tb/i_data_mem/memo(158) -radix decimal} {/processor_tb/i_data_mem/memo(159) -radix decimal} {/processor_tb/i_data_mem/memo(160) -radix decimal} {/processor_tb/i_data_mem/memo(161) -radix decimal} {/processor_tb/i_data_mem/memo(162) -radix decimal} {/processor_tb/i_data_mem/memo(163) -radix decimal} {/processor_tb/i_data_mem/memo(164) -radix decimal} {/processor_tb/i_data_mem/memo(165) -radix decimal} {/processor_tb/i_data_mem/memo(166) -radix decimal} {/processor_tb/i_data_mem/memo(167) -radix decimal} {/processor_tb/i_data_mem/memo(168) -radix decimal} {/processor_tb/i_data_mem/memo(169) -radix decimal} {/processor_tb/i_data_mem/memo(170) -radix decimal} {/processor_tb/i_data_mem/memo(171) -radix decimal} {/processor_tb/i_data_mem/memo(172) -radix decimal} {/processor_tb/i_data_mem/memo(173) -radix decimal} {/processor_tb/i_data_mem/memo(174) -radix decimal} {/processor_tb/i_data_mem/memo(175) -radix decimal} {/processor_tb/i_data_mem/memo(176) -radix decimal} {/processor_tb/i_data_mem/memo(177) -radix decimal} {/processor_tb/i_data_mem/memo(178) -radix decimal} {/processor_tb/i_data_mem/memo(179) -radix decimal} {/processor_tb/i_data_mem/memo(180) -radix decimal} {/processor_tb/i_data_mem/memo(181) -radix decimal} {/processor_tb/i_data_mem/memo(182) -radix decimal} {/processor_tb/i_data_mem/memo(183) -radix decimal} {/processor_tb/i_data_mem/memo(184) -radix decimal} {/processor_tb/i_data_mem/memo(185) -radix decimal} {/processor_tb/i_data_mem/memo(186) -radix decimal} {/processor_tb/i_data_mem/memo(187) -radix decimal} {/processor_tb/i_data_mem/memo(188) -radix decimal} {/processor_tb/i_data_mem/memo(189) -radix decimal} {/processor_tb/i_data_mem/memo(190) -radix decimal} {/processor_tb/i_data_mem/memo(191) -radix decimal} {/processor_tb/i_data_mem/memo(192) -radix decimal} {/processor_tb/i_data_mem/memo(193) -radix decimal} {/processor_tb/i_data_mem/memo(194) -radix decimal} {/processor_tb/i_data_mem/memo(195) -radix decimal} {/processor_tb/i_data_mem/memo(196) -radix decimal} {/processor_tb/i_data_mem/memo(197) -radix decimal} {/processor_tb/i_data_mem/memo(198) -radix decimal} {/processor_tb/i_data_mem/memo(199) -radix decimal} {/processor_tb/i_data_mem/memo(200) -radix decimal} {/processor_tb/i_data_mem/memo(201) -radix decimal} {/processor_tb/i_data_mem/memo(202) -radix decimal} {/processor_tb/i_data_mem/memo(203) -radix decimal} {/processor_tb/i_data_mem/memo(204) -radix decimal} {/processor_tb/i_data_mem/memo(205) -radix decimal} {/processor_tb/i_data_mem/memo(206) -radix decimal} {/processor_tb/i_data_mem/memo(207) -radix decimal} {/processor_tb/i_data_mem/memo(208) -radix decimal} {/processor_tb/i_data_mem/memo(209) -radix decimal} {/processor_tb/i_data_mem/memo(210) -radix decimal} {/processor_tb/i_data_mem/memo(211) -radix decimal} {/processor_tb/i_data_mem/memo(212) -radix decimal} {/processor_tb/i_data_mem/memo(213) -radix decimal} {/processor_tb/i_data_mem/memo(214) -radix decimal} {/processor_tb/i_data_mem/memo(215) -radix decimal} {/processor_tb/i_data_mem/memo(216) -radix decimal} {/processor_tb/i_data_mem/memo(217) -radix decimal} {/processor_tb/i_data_mem/memo(218) -radix decimal} {/processor_tb/i_data_mem/memo(219) -radix decimal} {/processor_tb/i_data_mem/memo(220) -radix decimal} {/processor_tb/i_data_mem/memo(221) -radix decimal} {/processor_tb/i_data_mem/memo(222) -radix decimal} {/processor_tb/i_data_mem/memo(223) -radix decimal} {/processor_tb/i_data_mem/memo(224) -radix decimal} {/processor_tb/i_data_mem/memo(225) -radix decimal} {/processor_tb/i_data_mem/memo(226) -radix decimal} {/processor_tb/i_data_mem/memo(227) -radix decimal} {/processor_tb/i_data_mem/memo(228) -radix decimal} {/processor_tb/i_data_mem/memo(229) -radix decimal} {/processor_tb/i_data_mem/memo(230) -radix decimal} {/processor_tb/i_data_mem/memo(231) -radix decimal} {/processor_tb/i_data_mem/memo(232) -radix decimal} {/processor_tb/i_data_mem/memo(233) -radix decimal} {/processor_tb/i_data_mem/memo(234) -radix decimal} {/processor_tb/i_data_mem/memo(235) -radix decimal} {/processor_tb/i_data_mem/memo(236) -radix decimal} {/processor_tb/i_data_mem/memo(237) -radix decimal} {/processor_tb/i_data_mem/memo(238) -radix decimal} {/processor_tb/i_data_mem/memo(239) -radix decimal} {/processor_tb/i_data_mem/memo(240) -radix decimal} {/processor_tb/i_data_mem/memo(241) -radix decimal} {/processor_tb/i_data_mem/memo(242) -radix decimal} {/processor_tb/i_data_mem/memo(243) -radix decimal} {/processor_tb/i_data_mem/memo(244) -radix decimal} {/processor_tb/i_data_mem/memo(245) -radix decimal} {/processor_tb/i_data_mem/memo(246) -radix decimal} {/processor_tb/i_data_mem/memo(247) -radix decimal} {/processor_tb/i_data_mem/memo(248) -radix decimal} {/processor_tb/i_data_mem/memo(249) -radix decimal} {/processor_tb/i_data_mem/memo(250) -radix decimal} {/processor_tb/i_data_mem/memo(251) -radix decimal} {/processor_tb/i_data_mem/memo(252) -radix decimal} {/processor_tb/i_data_mem/memo(253) -radix decimal} {/processor_tb/i_data_mem/memo(254) -radix decimal} {/processor_tb/i_data_mem/memo(255) -radix decimal}} -subitemconfig {/processor_tb/i_data_mem/memo(0) {-radix decimal} /processor_tb/i_data_mem/memo(1) {-radix decimal} /processor_tb/i_data_mem/memo(2) {-radix decimal} /processor_tb/i_data_mem/memo(3) {-radix decimal} /processor_tb/i_data_mem/memo(4) {-radix decimal} /processor_tb/i_data_mem/memo(5) {-radix decimal} /processor_tb/i_data_mem/memo(6) {-radix decimal} /processor_tb/i_data_mem/memo(7) {-radix decimal} /processor_tb/i_data_mem/memo(8) {-radix decimal} /processor_tb/i_data_mem/memo(9) {-radix decimal} /processor_tb/i_data_mem/memo(10) {-radix decimal} /processor_tb/i_data_mem/memo(11) {-radix decimal} /processor_tb/i_data_mem/memo(12) {-radix decimal} /processor_tb/i_data_mem/memo(13) {-radix decimal} /processor_tb/i_data_mem/memo(14) {-radix decimal} /processor_tb/i_data_mem/memo(15) {-radix decimal} /processor_tb/i_data_mem/memo(16) {-radix decimal} /processor_tb/i_data_mem/memo(17) {-radix decimal} /processor_tb/i_data_mem/memo(18) {-radix decimal} /processor_tb/i_data_mem/memo(19) {-radix decimal} /processor_tb/i_data_mem/memo(20) {-radix decimal} /processor_tb/i_data_mem/memo(21) {-radix decimal} /processor_tb/i_data_mem/memo(22) {-radix decimal} /processor_tb/i_data_mem/memo(23) {-radix decimal} /processor_tb/i_data_mem/memo(24) {-radix decimal} /processor_tb/i_data_mem/memo(25) {-radix decimal} /processor_tb/i_data_mem/memo(26) {-radix decimal} /processor_tb/i_data_mem/memo(27) {-radix decimal} /processor_tb/i_data_mem/memo(28) {-radix decimal} /processor_tb/i_data_mem/memo(29) {-radix decimal} /processor_tb/i_data_mem/memo(30) {-radix decimal} /processor_tb/i_data_mem/memo(31) {-radix decimal} /processor_tb/i_data_mem/memo(32) {-radix decimal} /processor_tb/i_data_mem/memo(33) {-radix decimal} /processor_tb/i_data_mem/memo(34) {-radix decimal} /processor_tb/i_data_mem/memo(35) {-radix decimal} /processor_tb/i_data_mem/memo(36) {-radix decimal} /processor_tb/i_data_mem/memo(37) {-radix decimal} /processor_tb/i_data_mem/memo(38) {-radix decimal} /processor_tb/i_data_mem/memo(39) {-radix decimal} /processor_tb/i_data_mem/memo(40) {-radix decimal} /processor_tb/i_data_mem/memo(41) {-radix decimal} /processor_tb/i_data_mem/memo(42) {-radix decimal} /processor_tb/i_data_mem/memo(43) {-radix decimal} /processor_tb/i_data_mem/memo(44) {-radix decimal} /processor_tb/i_data_mem/memo(45) {-radix decimal} /processor_tb/i_data_mem/memo(46) {-radix decimal} /processor_tb/i_data_mem/memo(47) {-radix decimal} /processor_tb/i_data_mem/memo(48) {-radix decimal} /processor_tb/i_data_mem/memo(49) {-radix decimal} /processor_tb/i_data_mem/memo(50) {-radix decimal} /processor_tb/i_data_mem/memo(51) {-radix decimal} /processor_tb/i_data_mem/memo(52) {-radix decimal} /processor_tb/i_data_mem/memo(53) {-radix decimal} /processor_tb/i_data_mem/memo(54) {-radix decimal} /processor_tb/i_data_mem/memo(55) {-radix decimal} /processor_tb/i_data_mem/memo(56) {-radix decimal} /processor_tb/i_data_mem/memo(57) {-radix decimal} /processor_tb/i_data_mem/memo(58) {-radix decimal} /processor_tb/i_data_mem/memo(59) {-radix decimal} /processor_tb/i_data_mem/memo(60) {-radix decimal} /processor_tb/i_data_mem/memo(61) {-radix decimal} /processor_tb/i_data_mem/memo(62) {-radix decimal} /processor_tb/i_data_mem/memo(63) {-radix decimal} /processor_tb/i_data_mem/memo(64) {-radix decimal} /processor_tb/i_data_mem/memo(65) {-radix decimal} /processor_tb/i_data_mem/memo(66) {-radix decimal} /processor_tb/i_data_mem/memo(67) {-radix decimal} /processor_tb/i_data_mem/memo(68) {-radix decimal} /processor_tb/i_data_mem/memo(69) {-radix decimal} /processor_tb/i_data_mem/memo(70) {-radix decimal} /processor_tb/i_data_mem/memo(71) {-radix decimal} /processor_tb/i_data_mem/memo(72) {-radix decimal} /processor_tb/i_data_mem/memo(73) {-radix decimal} /processor_tb/i_data_mem/memo(74) {-radix decimal} /processor_tb/i_data_mem/memo(75) {-radix decimal} /processor_tb/i_data_mem/memo(76) {-radix decimal} /processor_tb/i_data_mem/memo(77) {-radix decimal} /processor_tb/i_data_mem/memo(78) {-radix decimal} /processor_tb/i_data_mem/memo(79) {-radix decimal} /processor_tb/i_data_mem/memo(80) {-radix decimal} /processor_tb/i_data_mem/memo(81) {-radix decimal} /processor_tb/i_data_mem/memo(82) {-radix decimal} /processor_tb/i_data_mem/memo(83) {-radix decimal} /processor_tb/i_data_mem/memo(84) {-radix decimal} /processor_tb/i_data_mem/memo(85) {-radix decimal} /processor_tb/i_data_mem/memo(86) {-radix decimal} /processor_tb/i_data_mem/memo(87) {-radix decimal} /processor_tb/i_data_mem/memo(88) {-radix decimal} /processor_tb/i_data_mem/memo(89) {-radix decimal} /processor_tb/i_data_mem/memo(90) {-radix decimal} /processor_tb/i_data_mem/memo(91) {-radix decimal} /processor_tb/i_data_mem/memo(92) {-radix decimal} /processor_tb/i_data_mem/memo(93) {-radix decimal} /processor_tb/i_data_mem/memo(94) {-radix decimal} /processor_tb/i_data_mem/memo(95) {-radix decimal} /processor_tb/i_data_mem/memo(96) {-radix decimal} /processor_tb/i_data_mem/memo(97) {-radix decimal} /processor_tb/i_data_mem/memo(98) {-radix decimal} /processor_tb/i_data_mem/memo(99) {-radix decimal} /processor_tb/i_data_mem/memo(100) {-radix decimal} /processor_tb/i_data_mem/memo(101) {-radix decimal} /processor_tb/i_data_mem/memo(102) {-radix decimal} /processor_tb/i_data_mem/memo(103) {-radix decimal} /processor_tb/i_data_mem/memo(104) {-radix decimal} /processor_tb/i_data_mem/memo(105) {-radix decimal} /processor_tb/i_data_mem/memo(106) {-radix decimal} /processor_tb/i_data_mem/memo(107) {-radix decimal} /processor_tb/i_data_mem/memo(108) {-radix decimal} /processor_tb/i_data_mem/memo(109) {-radix decimal} /processor_tb/i_data_mem/memo(110) {-radix decimal} /processor_tb/i_data_mem/memo(111) {-radix decimal} /processor_tb/i_data_mem/memo(112) {-radix decimal} /processor_tb/i_data_mem/memo(113) {-radix decimal} /processor_tb/i_data_mem/memo(114) {-radix decimal} /processor_tb/i_data_mem/memo(115) {-radix decimal} /processor_tb/i_data_mem/memo(116) {-radix decimal} /processor_tb/i_data_mem/memo(117) {-radix decimal} /processor_tb/i_data_mem/memo(118) {-radix decimal} /processor_tb/i_data_mem/memo(119) {-radix decimal} /processor_tb/i_data_mem/memo(120) {-radix decimal} /processor_tb/i_data_mem/memo(121) {-radix decimal} /processor_tb/i_data_mem/memo(122) {-radix decimal} /processor_tb/i_data_mem/memo(123) {-radix decimal} /processor_tb/i_data_mem/memo(124) {-radix decimal} /processor_tb/i_data_mem/memo(125) {-radix decimal} /processor_tb/i_data_mem/memo(126) {-radix decimal} /processor_tb/i_data_mem/memo(127) {-radix decimal} /processor_tb/i_data_mem/memo(128) {-radix decimal} /processor_tb/i_data_mem/memo(129) {-radix decimal} /processor_tb/i_data_mem/memo(130) {-radix decimal} /processor_tb/i_data_mem/memo(131) {-radix decimal} /processor_tb/i_data_mem/memo(132) {-radix decimal} /processor_tb/i_data_mem/memo(133) {-radix decimal} /processor_tb/i_data_mem/memo(134) {-radix decimal} /processor_tb/i_data_mem/memo(135) {-radix decimal} /processor_tb/i_data_mem/memo(136) {-radix decimal} /processor_tb/i_data_mem/memo(137) {-radix decimal} /processor_tb/i_data_mem/memo(138) {-radix decimal} /processor_tb/i_data_mem/memo(139) {-radix decimal} /processor_tb/i_data_mem/memo(140) {-radix decimal} /processor_tb/i_data_mem/memo(141) {-radix decimal} /processor_tb/i_data_mem/memo(142) {-radix decimal} /processor_tb/i_data_mem/memo(143) {-radix decimal} /processor_tb/i_data_mem/memo(144) {-radix decimal} /processor_tb/i_data_mem/memo(145) {-radix decimal} /processor_tb/i_data_mem/memo(146) {-radix decimal} /processor_tb/i_data_mem/memo(147) {-radix decimal} /processor_tb/i_data_mem/memo(148) {-radix decimal} /processor_tb/i_data_mem/memo(149) {-radix decimal} /processor_tb/i_data_mem/memo(150) {-radix decimal} /processor_tb/i_data_mem/memo(151) {-radix decimal} /processor_tb/i_data_mem/memo(152) {-radix decimal} /processor_tb/i_data_mem/memo(153) {-radix decimal} /processor_tb/i_data_mem/memo(154) {-radix decimal} /processor_tb/i_data_mem/memo(155) {-radix decimal} /processor_tb/i_data_mem/memo(156) {-radix decimal} /processor_tb/i_data_mem/memo(157) {-radix decimal} /processor_tb/i_data_mem/memo(158) {-radix decimal} /processor_tb/i_data_mem/memo(159) {-radix decimal} /processor_tb/i_data_mem/memo(160) {-radix decimal} /processor_tb/i_data_mem/memo(161) {-radix decimal} /processor_tb/i_data_mem/memo(162) {-radix decimal} /processor_tb/i_data_mem/memo(163) {-radix decimal} /processor_tb/i_data_mem/memo(164) {-radix decimal} /processor_tb/i_data_mem/memo(165) {-radix decimal} /processor_tb/i_data_mem/memo(166) {-radix decimal} /processor_tb/i_data_mem/memo(167) {-radix decimal} /processor_tb/i_data_mem/memo(168) {-radix decimal} /processor_tb/i_data_mem/memo(169) {-radix decimal} /processor_tb/i_data_mem/memo(170) {-radix decimal} /processor_tb/i_data_mem/memo(171) {-radix decimal} /processor_tb/i_data_mem/memo(172) {-radix decimal} /processor_tb/i_data_mem/memo(173) {-radix decimal} /processor_tb/i_data_mem/memo(174) {-radix decimal} /processor_tb/i_data_mem/memo(175) {-radix decimal} /processor_tb/i_data_mem/memo(176) {-radix decimal} /processor_tb/i_data_mem/memo(177) {-radix decimal} /processor_tb/i_data_mem/memo(178) {-radix decimal} /processor_tb/i_data_mem/memo(179) {-radix decimal} /processor_tb/i_data_mem/memo(180) {-radix decimal} /processor_tb/i_data_mem/memo(181) {-radix decimal} /processor_tb/i_data_mem/memo(182) {-radix decimal} /processor_tb/i_data_mem/memo(183) {-radix decimal} /processor_tb/i_data_mem/memo(184) {-radix decimal} /processor_tb/i_data_mem/memo(185) {-radix decimal} /processor_tb/i_data_mem/memo(186) {-radix decimal} /processor_tb/i_data_mem/memo(187) {-radix decimal} /processor_tb/i_data_mem/memo(188) {-radix decimal} /processor_tb/i_data_mem/memo(189) {-radix decimal} /processor_tb/i_data_mem/memo(190) {-radix decimal} /processor_tb/i_data_mem/memo(191) {-radix decimal} /processor_tb/i_data_mem/memo(192) {-radix decimal} /processor_tb/i_data_mem/memo(193) {-radix decimal} /processor_tb/i_data_mem/memo(194) {-radix decimal} /processor_tb/i_data_mem/memo(195) {-radix decimal} /processor_tb/i_data_mem/memo(196) {-radix decimal} /processor_tb/i_data_mem/memo(197) {-radix decimal} /processor_tb/i_data_mem/memo(198) {-radix decimal} /processor_tb/i_data_mem/memo(199) {-radix decimal} /processor_tb/i_data_mem/memo(200) {-radix decimal} /processor_tb/i_data_mem/memo(201) {-radix decimal} /processor_tb/i_data_mem/memo(202) {-radix decimal} /processor_tb/i_data_mem/memo(203) {-radix decimal} /processor_tb/i_data_mem/memo(204) {-radix decimal} /processor_tb/i_data_mem/memo(205) {-radix decimal} /processor_tb/i_data_mem/memo(206) {-radix decimal} /processor_tb/i_data_mem/memo(207) {-radix decimal} /processor_tb/i_data_mem/memo(208) {-radix decimal} /processor_tb/i_data_mem/memo(209) {-radix decimal} /processor_tb/i_data_mem/memo(210) {-radix decimal} /processor_tb/i_data_mem/memo(211) {-radix decimal} /processor_tb/i_data_mem/memo(212) {-radix decimal} /processor_tb/i_data_mem/memo(213) {-radix decimal} /processor_tb/i_data_mem/memo(214) {-radix decimal} /processor_tb/i_data_mem/memo(215) {-radix decimal} /processor_tb/i_data_mem/memo(216) {-radix decimal} /processor_tb/i_data_mem/memo(217) {-radix decimal} /processor_tb/i_data_mem/memo(218) {-radix decimal} /processor_tb/i_data_mem/memo(219) {-radix decimal} /processor_tb/i_data_mem/memo(220) {-radix decimal} /processor_tb/i_data_mem/memo(221) {-radix decimal} /processor_tb/i_data_mem/memo(222) {-radix decimal} /processor_tb/i_data_mem/memo(223) {-radix decimal} /processor_tb/i_data_mem/memo(224) {-radix decimal} /processor_tb/i_data_mem/memo(225) {-radix decimal} /processor_tb/i_data_mem/memo(226) {-radix decimal} /processor_tb/i_data_mem/memo(227) {-radix decimal} /processor_tb/i_data_mem/memo(228) {-radix decimal} /processor_tb/i_data_mem/memo(229) {-radix decimal} /processor_tb/i_data_mem/memo(230) {-radix decimal} /processor_tb/i_data_mem/memo(231) {-radix decimal} /processor_tb/i_data_mem/memo(232) {-radix decimal} /processor_tb/i_data_mem/memo(233) {-radix decimal} /processor_tb/i_data_mem/memo(234) {-radix decimal} /processor_tb/i_data_mem/memo(235) {-radix decimal} /processor_tb/i_data_mem/memo(236) {-radix decimal} /processor_tb/i_data_mem/memo(237) {-radix decimal} /processor_tb/i_data_mem/memo(238) {-radix decimal} /processor_tb/i_data_mem/memo(239) {-radix decimal} /processor_tb/i_data_mem/memo(240) {-radix decimal} /processor_tb/i_data_mem/memo(241) {-radix decimal} /processor_tb/i_data_mem/memo(242) {-radix decimal} /processor_tb/i_data_mem/memo(243) {-radix decimal} /processor_tb/i_data_mem/memo(244) {-radix decimal} /processor_tb/i_data_mem/memo(245) {-radix decimal} /processor_tb/i_data_mem/memo(246) {-radix decimal} /processor_tb/i_data_mem/memo(247) {-radix decimal} /processor_tb/i_data_mem/memo(248) {-radix decimal} /processor_tb/i_data_mem/memo(249) {-radix decimal} /processor_tb/i_data_mem/memo(250) {-radix decimal} /processor_tb/i_data_mem/memo(251) {-radix decimal} /processor_tb/i_data_mem/memo(252) {-radix decimal} /processor_tb/i_data_mem/memo(253) {-radix decimal} /processor_tb/i_data_mem/memo(254) {-radix decimal} /processor_tb/i_data_mem/memo(255) {-radix decimal}} /processor_tb/i_data_mem/memo
TreeUpdate [SetDefaultTree]
quietly wave cursor active 1
configure wave -namecolwidth 258
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {92007 ps}

\ Model City Linking
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  30 conn._in_y1_between_0_and_1 + 20 conn._in_y1_between_0_and_2
   + 35 conn._in_y1_between_0_and_3 + 25 conn._in_y1_between_0_and_4
   + 18 conn._in_y1_between_0_and_5 + 30 conn._in_y1_between_0_and_6
   + 28 conn._in_y1_between_1_and_2 + 22 conn._in_y1_between_1_and_3
   + 25 conn._in_y1_between_1_and_4 + 35 conn._in_y1_between_1_and_5
   + 45 conn._in_y1_between_1_and_6 + 32 conn._in_y1_between_2_and_3
   + 36 conn._in_y1_between_2_and_4 + 20 conn._in_y1_between_2_and_5
   + 40 conn._in_y1_between_2_and_6 + 35 conn._in_y1_between_3_and_4
   + 25 conn._in_y1_between_3_and_5 + 38 conn._in_y1_between_3_and_6
   + 30 conn._in_y1_between_4_and_5 + 40 conn._in_y1_between_4_and_6
   + 30 conn._in_y1_between_5_and_6 + 24 conn._in_y2_between_0_and_1
   + 16 conn._in_y2_between_0_and_2 + 28 conn._in_y2_between_0_and_3
   + 20 conn._in_y2_between_0_and_4 + 15 conn._in_y2_between_0_and_5
   + 24 conn._in_y2_between_0_and_6 + 23 conn._in_y2_between_1_and_2
   + 18 conn._in_y2_between_1_and_3 + 20 conn._in_y2_between_1_and_4
   + 28 conn._in_y2_between_1_and_5 + 36 conn._in_y2_between_1_and_6
   + 25 conn._in_y2_between_2_and_3 + 28 conn._in_y2_between_2_and_4
   + 26 conn._in_y2_between_2_and_5 + 32 conn._in_y2_between_2_and_6
   + 28 conn._in_y2_between_3_and_4 + 20 conn._in_y2_between_3_and_5
   + 31 conn._in_y2_between_3_and_6 + 24 conn._in_y2_between_4_and_5
   + 32 conn._in_y2_between_4_and_6 + 24 conn._in_y2_between_5_and_6
   - 100 Linked_in_year_1_between_0_and_1
   - 140 Linked_in_year_1_between_0_and_2
   - 115 Linked_in_year_1_between_0_and_3
   - 130 Linked_in_year_1_between_0_and_4
   - 140 Linked_in_year_1_between_0_and_5
   - 135 Linked_in_year_1_between_0_and_6
   - 105 Linked_in_year_1_between_1_and_2
   - 140 Linked_in_year_1_between_1_and_3
   - 110 Linked_in_year_1_between_1_and_4
   - 125 Linked_in_year_1_between_1_and_5
   - 130 Linked_in_year_1_between_1_and_6
   - 130 Linked_in_year_1_between_2_and_3
   - 145 Linked_in_year_1_between_2_and_4
   - 160 Linked_in_year_1_between_2_and_5
   - 150 Linked_in_year_1_between_2_and_6
   - 135 Linked_in_year_1_between_3_and_4
   - 150 Linked_in_year_1_between_3_and_5
   - 105 Linked_in_year_1_between_3_and_6
   - 120 Linked_in_year_1_between_4_and_5
   - 165 Linked_in_year_1_between_4_and_6
   - 130 Linked_in_year_1_between_5_and_6
   - 100 Linked_in_year_2_between_0_and_1
   - 140 Linked_in_year_2_between_0_and_2
   - 115 Linked_in_year_2_between_0_and_3
   - 130 Linked_in_year_2_between_0_and_4
   - 140 Linked_in_year_2_between_0_and_5
   - 135 Linked_in_year_2_between_0_and_6
   - 105 Linked_in_year_2_between_1_and_2
   - 140 Linked_in_year_2_between_1_and_3
   - 110 Linked_in_year_2_between_1_and_4
   - 125 Linked_in_year_2_between_1_and_5
   - 130 Linked_in_year_2_between_1_and_6
   - 130 Linked_in_year_2_between_2_and_3
   - 145 Linked_in_year_2_between_2_and_4
   - 160 Linked_in_year_2_between_2_and_5
   - 150 Linked_in_year_2_between_2_and_6
   - 135 Linked_in_year_2_between_3_and_4
   - 150 Linked_in_year_2_between_3_and_5
   - 105 Linked_in_year_2_between_3_and_6
   - 120 Linked_in_year_2_between_4_and_5
   - 165 Linked_in_year_2_between_4_and_6
   - 130 Linked_in_year_2_between_5_and_6
Subject To
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_0_and_1
   + Linked_in_year_2_between_0_and_1 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_0_and_2
   + Linked_in_year_2_between_0_and_2 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_0_and_3
   + Linked_in_year_2_between_0_and_3 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_0_and_4
   + Linked_in_year_2_between_0_and_4 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_0_and_5
   + Linked_in_year_2_between_0_and_5 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_0_and_6
   + Linked_in_year_2_between_0_and_6 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_1_and_2
   + Linked_in_year_2_between_1_and_2 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_1_and_3
   + Linked_in_year_2_between_1_and_3 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_1_and_4
   + Linked_in_year_2_between_1_and_4 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_1_and_5
   + Linked_in_year_2_between_1_and_5 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_1_and_6
   + Linked_in_year_2_between_1_and_6 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_2_and_3
   + Linked_in_year_2_between_2_and_3 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_2_and_4
   + Linked_in_year_2_between_2_and_4 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_2_and_5
   + Linked_in_year_2_between_2_and_5 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_2_and_6
   + Linked_in_year_2_between_2_and_6 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_3_and_4
   + Linked_in_year_2_between_3_and_4 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_3_and_5
   + Linked_in_year_2_between_3_and_5 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_3_and_6
   + Linked_in_year_2_between_3_and_6 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_4_and_5
   + Linked_in_year_2_between_4_and_5 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_4_and_6
   + Linked_in_year_2_between_4_and_6 <= 1
 A_link_can_not_be_built_in_2_years: Linked_in_year_1_between_5_and_6
   + Linked_in_year_2_between_5_and_6 <= 1
 Connectivity_at_the_end[0,1]: conn._in_y1_between_0_and_1
   + conn._in_y2_between_0_and_1 >= 1
 Connectivity_at_the_end[0,2]: conn._in_y1_between_0_and_2
   + conn._in_y2_between_0_and_2 >= 1
 Connectivity_at_the_end[0,3]: conn._in_y1_between_0_and_3
   + conn._in_y2_between_0_and_3 >= 1
 Connectivity_at_the_end[0,4]: conn._in_y1_between_0_and_4
   + conn._in_y2_between_0_and_4 >= 1
 Connectivity_at_the_end[0,5]: conn._in_y1_between_0_and_5
   + conn._in_y2_between_0_and_5 >= 1
 Connectivity_at_the_end[0,6]: conn._in_y1_between_0_and_6
   + conn._in_y2_between_0_and_6 >= 1
 Connectivity_at_the_end[1,2]: conn._in_y1_between_1_and_2
   + conn._in_y2_between_1_and_2 >= 1
 Connectivity_at_the_end[1,3]: conn._in_y1_between_1_and_3
   + conn._in_y2_between_1_and_3 >= 1
 Connectivity_at_the_end[1,4]: conn._in_y1_between_1_and_4
   + conn._in_y2_between_1_and_4 >= 1
 Connectivity_at_the_end[1,5]: conn._in_y1_between_1_and_5
   + conn._in_y2_between_1_and_5 >= 1
 Connectivity_at_the_end[1,6]: conn._in_y1_between_1_and_6
   + conn._in_y2_between_1_and_6 >= 1
 Connectivity_at_the_end[2,3]: conn._in_y1_between_2_and_3
   + conn._in_y2_between_2_and_3 >= 1
 Connectivity_at_the_end[2,4]: conn._in_y1_between_2_and_4
   + conn._in_y2_between_2_and_4 >= 1
 Connectivity_at_the_end[2,5]: conn._in_y1_between_2_and_5
   + conn._in_y2_between_2_and_5 >= 1
 Connectivity_at_the_end[2,6]: conn._in_y1_between_2_and_6
   + conn._in_y2_between_2_and_6 >= 1
 Connectivity_at_the_end[3,4]: conn._in_y1_between_3_and_4
   + conn._in_y2_between_3_and_4 >= 1
 Connectivity_at_the_end[3,5]: conn._in_y1_between_3_and_5
   + conn._in_y2_between_3_and_5 >= 1
 Connectivity_at_the_end[3,6]: conn._in_y1_between_3_and_6
   + conn._in_y2_between_3_and_6 >= 1
 Connectivity_at_the_end[4,5]: conn._in_y1_between_4_and_5
   + conn._in_y2_between_4_and_5 >= 1
 Connectivity_at_the_end[4,6]: conn._in_y1_between_4_and_6
   + conn._in_y2_between_4_and_6 >= 1
 Connectivity_at_the_end[5,6]: conn._in_y1_between_5_and_6
   + conn._in_y2_between_5_and_6 >= 1
 Ring_network_1: 2 conn._in_y1_between_0_and_1
   + 2 conn._in_y1_between_0_and_2 + 2 conn._in_y1_between_0_and_3
   + 2 conn._in_y1_between_0_and_4 + 2 conn._in_y1_between_0_and_5
   + 2 conn._in_y1_between_0_and_6 + 2 conn._in_y1_between_1_and_2
   + 2 conn._in_y1_between_1_and_3 + 2 conn._in_y1_between_1_and_4
   + 2 conn._in_y1_between_1_and_5 + 2 conn._in_y1_between_1_and_6
   + 2 conn._in_y1_between_2_and_3 + 2 conn._in_y1_between_2_and_4
   + 2 conn._in_y1_between_2_and_5 + 2 conn._in_y1_between_2_and_6
   + 2 conn._in_y1_between_3_and_4 + 2 conn._in_y1_between_3_and_5
   + 2 conn._in_y1_between_3_and_6 + 2 conn._in_y1_between_4_and_5
   + 2 conn._in_y1_between_4_and_6 + 2 conn._in_y1_between_5_and_6 <= 96
 Ring_network_2: 2 conn._in_y1_between_0_and_1
   + 2 conn._in_y1_between_0_and_2 + 2 conn._in_y1_between_0_and_3
   + 2 conn._in_y1_between_0_and_4 + 2 conn._in_y1_between_0_and_5
   + 2 conn._in_y1_between_0_and_6 + 2 conn._in_y1_between_1_and_2
   + 2 conn._in_y1_between_1_and_3 + 2 conn._in_y1_between_1_and_4
   + 2 conn._in_y1_between_1_and_5 + 2 conn._in_y1_between_1_and_6
   + 2 conn._in_y1_between_2_and_3 + 2 conn._in_y1_between_2_and_4
   + 2 conn._in_y1_between_2_and_5 + 2 conn._in_y1_between_2_and_6
   + 2 conn._in_y1_between_3_and_4 + 2 conn._in_y1_between_3_and_5
   + 2 conn._in_y1_between_3_and_6 + 2 conn._in_y1_between_4_and_5
   + 2 conn._in_y1_between_4_and_6 + 2 conn._in_y1_between_5_and_6 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_0_and_1
   + Linked_in_year_1_between_0_and_1 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_0_and_1
   + Linked_in_year_2_between_0_and_1 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_0_and_2
   + Linked_in_year_1_between_0_and_2 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_0_and_2
   + Linked_in_year_2_between_0_and_2 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_0_and_3
   + Linked_in_year_1_between_0_and_3 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_0_and_3
   + Linked_in_year_2_between_0_and_3 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_0_and_4
   + Linked_in_year_1_between_0_and_4 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_0_and_4
   + Linked_in_year_2_between_0_and_4 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_0_and_5
   + Linked_in_year_1_between_0_and_5 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_0_and_5
   + Linked_in_year_2_between_0_and_5 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_0_and_6
   + Linked_in_year_1_between_0_and_6 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_0_and_6
   + Linked_in_year_2_between_0_and_6 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_1_and_2
   + Linked_in_year_1_between_1_and_2 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_1_and_2
   + Linked_in_year_2_between_1_and_2 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_1_and_3
   + Linked_in_year_1_between_1_and_3 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_1_and_3
   + Linked_in_year_2_between_1_and_3 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_1_and_4
   + Linked_in_year_1_between_1_and_4 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_1_and_4
   + Linked_in_year_2_between_1_and_4 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_1_and_5
   + Linked_in_year_1_between_1_and_5 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_1_and_5
   + Linked_in_year_2_between_1_and_5 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_1_and_6
   + Linked_in_year_1_between_1_and_6 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_1_and_6
   + Linked_in_year_2_between_1_and_6 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_2_and_3
   + Linked_in_year_1_between_2_and_3 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_2_and_3
   + Linked_in_year_2_between_2_and_3 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_2_and_4
   + Linked_in_year_1_between_2_and_4 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_2_and_4
   + Linked_in_year_2_between_2_and_4 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_2_and_5
   + Linked_in_year_1_between_2_and_5 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_2_and_5
   + Linked_in_year_2_between_2_and_5 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_2_and_6
   + Linked_in_year_1_between_2_and_6 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_2_and_6
   + Linked_in_year_2_between_2_and_6 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_3_and_4
   + Linked_in_year_1_between_3_and_4 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_3_and_4
   + Linked_in_year_2_between_3_and_4 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_3_and_5
   + Linked_in_year_1_between_3_and_5 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_3_and_5
   + Linked_in_year_2_between_3_and_5 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_3_and_6
   + Linked_in_year_1_between_3_and_6 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_3_and_6
   + Linked_in_year_2_between_3_and_6 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_4_and_5
   + Linked_in_year_1_between_4_and_5 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_4_and_5
   + Linked_in_year_2_between_4_and_5 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_4_and_6
   + Linked_in_year_1_between_4_and_6 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_4_and_6
   + Linked_in_year_2_between_4_and_6 <= 0
 link_implies_Connectivity[1]: - conn._in_y1_between_5_and_6
   + Linked_in_year_1_between_5_and_6 <= 0
 link_implies_Connectivity[2]: - conn._in_y2_between_5_and_6
   + Linked_in_year_2_between_5_and_6 <= 0
 connector[1]: conn._in_y1_between_0_and_1 - conn._in_y1_between_0_and_2
   + conn._in_y1_between_1_and_2 <= 1
 connector[2]: conn._in_y2_between_0_and_1 - conn._in_y2_between_0_and_2
   + conn._in_y2_between_1_and_2 <= 1
 connector[1]: conn._in_y1_between_0_and_1 - conn._in_y1_between_0_and_3
   + conn._in_y1_between_1_and_3 <= 1
 connector[2]: conn._in_y2_between_0_and_1 - conn._in_y2_between_0_and_3
   + conn._in_y2_between_1_and_3 <= 1
 connector[1]: conn._in_y1_between_0_and_1 - conn._in_y1_between_0_and_4
   + conn._in_y1_between_1_and_4 <= 1
 connector[2]: conn._in_y2_between_0_and_1 - conn._in_y2_between_0_and_4
   + conn._in_y2_between_1_and_4 <= 1
 connector[1]: conn._in_y1_between_0_and_1 - conn._in_y1_between_0_and_5
   + conn._in_y1_between_1_and_5 <= 1
 connector[2]: conn._in_y2_between_0_and_1 - conn._in_y2_between_0_and_5
   + conn._in_y2_between_1_and_5 <= 1
 connector[1]: conn._in_y1_between_0_and_1 - conn._in_y1_between_0_and_6
   + conn._in_y1_between_1_and_6 <= 1
 connector[2]: conn._in_y2_between_0_and_1 - conn._in_y2_between_0_and_6
   + conn._in_y2_between_1_and_6 <= 1
 connector[1]: conn._in_y1_between_0_and_2 - conn._in_y1_between_0_and_3
   + conn._in_y1_between_2_and_3 <= 1
 connector[2]: conn._in_y2_between_0_and_2 - conn._in_y2_between_0_and_3
   + conn._in_y2_between_2_and_3 <= 1
 connector[1]: conn._in_y1_between_0_and_2 - conn._in_y1_between_0_and_4
   + conn._in_y1_between_2_and_4 <= 1
 connector[2]: conn._in_y2_between_0_and_2 - conn._in_y2_between_0_and_4
   + conn._in_y2_between_2_and_4 <= 1
 connector[1]: conn._in_y1_between_0_and_2 - conn._in_y1_between_0_and_5
   + conn._in_y1_between_2_and_5 <= 1
 connector[2]: conn._in_y2_between_0_and_2 - conn._in_y2_between_0_and_5
   + conn._in_y2_between_2_and_5 <= 1
 connector[1]: conn._in_y1_between_0_and_2 - conn._in_y1_between_0_and_6
   + conn._in_y1_between_2_and_6 <= 1
 connector[2]: conn._in_y2_between_0_and_2 - conn._in_y2_between_0_and_6
   + conn._in_y2_between_2_and_6 <= 1
 connector[1]: conn._in_y1_between_0_and_3 - conn._in_y1_between_0_and_4
   + conn._in_y1_between_3_and_4 <= 1
 connector[2]: conn._in_y2_between_0_and_3 - conn._in_y2_between_0_and_4
   + conn._in_y2_between_3_and_4 <= 1
 connector[1]: conn._in_y1_between_0_and_3 - conn._in_y1_between_0_and_5
   + conn._in_y1_between_3_and_5 <= 1
 connector[2]: conn._in_y2_between_0_and_3 - conn._in_y2_between_0_and_5
   + conn._in_y2_between_3_and_5 <= 1
 connector[1]: conn._in_y1_between_0_and_3 - conn._in_y1_between_0_and_6
   + conn._in_y1_between_3_and_6 <= 1
 connector[2]: conn._in_y2_between_0_and_3 - conn._in_y2_between_0_and_6
   + conn._in_y2_between_3_and_6 <= 1
 connector[1]: conn._in_y1_between_0_and_4 - conn._in_y1_between_0_and_5
   + conn._in_y1_between_4_and_5 <= 1
 connector[2]: conn._in_y2_between_0_and_4 - conn._in_y2_between_0_and_5
   + conn._in_y2_between_4_and_5 <= 1
 connector[1]: conn._in_y1_between_0_and_4 - conn._in_y1_between_0_and_6
   + conn._in_y1_between_4_and_6 <= 1
 connector[2]: conn._in_y2_between_0_and_4 - conn._in_y2_between_0_and_6
   + conn._in_y2_between_4_and_6 <= 1
 connector[1]: conn._in_y1_between_0_and_5 - conn._in_y1_between_0_and_6
   + conn._in_y1_between_5_and_6 <= 1
 connector[2]: conn._in_y2_between_0_and_5 - conn._in_y2_between_0_and_6
   + conn._in_y2_between_5_and_6 <= 1
 connector[1]: conn._in_y1_between_1_and_2 - conn._in_y1_between_1_and_3
   + conn._in_y1_between_2_and_3 <= 1
 connector[2]: conn._in_y2_between_1_and_2 - conn._in_y2_between_1_and_3
   + conn._in_y2_between_2_and_3 <= 1
 connector[1]: conn._in_y1_between_1_and_2 - conn._in_y1_between_1_and_4
   + conn._in_y1_between_2_and_4 <= 1
 connector[2]: conn._in_y2_between_1_and_2 - conn._in_y2_between_1_and_4
   + conn._in_y2_between_2_and_4 <= 1
 connector[1]: conn._in_y1_between_1_and_2 - conn._in_y1_between_1_and_5
   + conn._in_y1_between_2_and_5 <= 1
 connector[2]: conn._in_y2_between_1_and_2 - conn._in_y2_between_1_and_5
   + conn._in_y2_between_2_and_5 <= 1
 connector[1]: conn._in_y1_between_1_and_2 - conn._in_y1_between_1_and_6
   + conn._in_y1_between_2_and_6 <= 1
 connector[2]: conn._in_y2_between_1_and_2 - conn._in_y2_between_1_and_6
   + conn._in_y2_between_2_and_6 <= 1
 connector[1]: conn._in_y1_between_1_and_3 - conn._in_y1_between_1_and_4
   + conn._in_y1_between_3_and_4 <= 1
 connector[2]: conn._in_y2_between_1_and_3 - conn._in_y2_between_1_and_4
   + conn._in_y2_between_3_and_4 <= 1
 connector[1]: conn._in_y1_between_1_and_3 - conn._in_y1_between_1_and_5
   + conn._in_y1_between_3_and_5 <= 1
 connector[2]: conn._in_y2_between_1_and_3 - conn._in_y2_between_1_and_5
   + conn._in_y2_between_3_and_5 <= 1
 connector[1]: conn._in_y1_between_1_and_3 - conn._in_y1_between_1_and_6
   + conn._in_y1_between_3_and_6 <= 1
 connector[2]: conn._in_y2_between_1_and_3 - conn._in_y2_between_1_and_6
   + conn._in_y2_between_3_and_6 <= 1
 connector[1]: conn._in_y1_between_1_and_4 - conn._in_y1_between_1_and_5
   + conn._in_y1_between_4_and_5 <= 1
 connector[2]: conn._in_y2_between_1_and_4 - conn._in_y2_between_1_and_5
   + conn._in_y2_between_4_and_5 <= 1
 connector[1]: conn._in_y1_between_1_and_4 - conn._in_y1_between_1_and_6
   + conn._in_y1_between_4_and_6 <= 1
 connector[2]: conn._in_y2_between_1_and_4 - conn._in_y2_between_1_and_6
   + conn._in_y2_between_4_and_6 <= 1
 connector[1]: conn._in_y1_between_1_and_5 - conn._in_y1_between_1_and_6
   + conn._in_y1_between_5_and_6 <= 1
 connector[2]: conn._in_y2_between_1_and_5 - conn._in_y2_between_1_and_6
   + conn._in_y2_between_5_and_6 <= 1
 connector[1]: conn._in_y1_between_2_and_3 - conn._in_y1_between_2_and_4
   + conn._in_y1_between_3_and_4 <= 1
 connector[2]: conn._in_y2_between_2_and_3 - conn._in_y2_between_2_and_4
   + conn._in_y2_between_3_and_4 <= 1
 connector[1]: conn._in_y1_between_2_and_3 - conn._in_y1_between_2_and_5
   + conn._in_y1_between_3_and_5 <= 1
 connector[2]: conn._in_y2_between_2_and_3 - conn._in_y2_between_2_and_5
   + conn._in_y2_between_3_and_5 <= 1
 connector[1]: conn._in_y1_between_2_and_3 - conn._in_y1_between_2_and_6
   + conn._in_y1_between_3_and_6 <= 1
 connector[2]: conn._in_y2_between_2_and_3 - conn._in_y2_between_2_and_6
   + conn._in_y2_between_3_and_6 <= 1
 connector[1]: conn._in_y1_between_2_and_4 - conn._in_y1_between_2_and_5
   + conn._in_y1_between_4_and_5 <= 1
 connector[2]: conn._in_y2_between_2_and_4 - conn._in_y2_between_2_and_5
   + conn._in_y2_between_4_and_5 <= 1
 connector[1]: conn._in_y1_between_2_and_4 - conn._in_y1_between_2_and_6
   + conn._in_y1_between_4_and_6 <= 1
 connector[2]: conn._in_y2_between_2_and_4 - conn._in_y2_between_2_and_6
   + conn._in_y2_between_4_and_6 <= 1
 connector[1]: conn._in_y1_between_2_and_5 - conn._in_y1_between_2_and_6
   + conn._in_y1_between_5_and_6 <= 1
 connector[2]: conn._in_y2_between_2_and_5 - conn._in_y2_between_2_and_6
   + conn._in_y2_between_5_and_6 <= 1
 connector[1]: conn._in_y1_between_3_and_4 - conn._in_y1_between_3_and_5
   + conn._in_y1_between_4_and_5 <= 1
 connector[2]: conn._in_y2_between_3_and_4 - conn._in_y2_between_3_and_5
   + conn._in_y2_between_4_and_5 <= 1
 connector[1]: conn._in_y1_between_3_and_4 - conn._in_y1_between_3_and_6
   + conn._in_y1_between_4_and_6 <= 1
 connector[2]: conn._in_y2_between_3_and_4 - conn._in_y2_between_3_and_6
   + conn._in_y2_between_4_and_6 <= 1
 connector[1]: conn._in_y1_between_3_and_5 - conn._in_y1_between_3_and_6
   + conn._in_y1_between_5_and_6 <= 1
 connector[2]: conn._in_y2_between_3_and_5 - conn._in_y2_between_3_and_6
   + conn._in_y2_between_5_and_6 <= 1
 connector[1]: conn._in_y1_between_4_and_5 - conn._in_y1_between_4_and_6
   + conn._in_y1_between_5_and_6 <= 1
 connector[2]: conn._in_y2_between_4_and_5 - conn._in_y2_between_4_and_6
   + conn._in_y2_between_5_and_6 <= 1
Bounds
End

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:group_button/group_button.dart';
//
// final controller = GroupButtonController();
// class genreChoice extends StatelessWidget {
//   const genreChoice({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: IconButton(
//             icon: const Icon(Icons.menu),
//             color: Colors.black,
//             onPressed: () {
//             }
//         ),
//       ),
//       body: Column(
//         children: <Widget> [
//           const Text(
//             '좋아하는 장르를 선택해 주세요',
//             style: TextStyle(
//                 fontSize:30,
//                 color: Color(0xffCA96FF)
//             ),
//           ),
//           Row(
//             children: const [
//               Text(
//                 '소설',
//                 style: TextStyle(
//                   fontSize:20,
//                   color: Color(0xff5D5FEF),
//                 ),
//               ),
//             ],
//           ),
//           const GroupButton(
//             isRadio: false,
//             //onSelected: (index, isSelected) => print('$index button is selected'),
//             buttons: [
//               "스릴러", "무협", "로맨스", "호러", "액션", "과학 SF","미스터리","역사",
//             ],
//           ),
//           Row(
//             children: const [
//               Text(
//                 '자기계발',
//                 style: TextStyle(
//                   fontSize:20,
//                   color: Color(0xff5D5FEF),
//                 ),
//               ),
//             ],
//           ),
//           const GroupButton(
//             isRadio: false,
//             //onSelected: (index, isSelected) => print('$index button is selected'),
//             buttons: [
//               "성공", "리더십", "행복론", "인간관계", "힐링", "화술","회의","창의적 사고",
//             ],
//           ),
//           Row(
//             children: const [
//               Text(
//                 '인문학',
//                 style: TextStyle(
//                   fontSize:20,
//                   color: Color(0xff5D5FEF),
//                 ),
//               ),
//             ],
//           ),
//           const GroupButton(
//             isRadio: false,
//             //onSelected: (index, isSelected) => print('$index button is selected'),
//             buttons: [
//               "교양 인문학", "서양철학", "동양철학", "심리학", "신학/종교학", "인문 비평","인류학","인문학자",
//             ],
//           ),
//           Row(
//             children: const [
//               Text(
//                 '에세이',
//                 style: TextStyle(
//                   fontSize:20,
//                   color: Color(0xff5D5FEF),
//                 ),
//               ),
//             ],
//           ),
//           const GroupButton(
//             isRadio: false,
//             //onSelected: (index, isSelected) => print('$index button is selected'),
//             buttons: [
//               "한국", "외국", "동물", "명상", "심리치유", "사진/그림","음식","독서","예술","독서","예술","사랑/연애","자연","명언",
//             ],
//           ),
//           TextButton(
//             onPressed: () {},
//             child: Text("NEXT"),
//             style: TextButton.styleFrom(primary:Colors.white,backgroundColor: Colors.blue),
//           ),
//         ],
//       )
//     );
//   }
//
//   Widget makeGrid() {
//     return GridView(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 4,
//           mainAxisSpacing: 4.0,
//           crossAxisSpacing: 8.0,
//           childAspectRatio: 1.0
//       ),
//       children: const [
//         OutlinedButton(
//           onPressed: null,
//           child: Text('스릴러'),
//         ),
//         OutlinedButton(
//           onPressed: null,
//           child: Text('스릴러'),
//         ),
//         OutlinedButton(
//           onPressed: null,
//           child: Text('스릴러'),
//         ),
//         OutlinedButton(
//           onPressed: null,
//           child: Text('스릴러'),
//         ),
//       ],
//     );
//   }
// }
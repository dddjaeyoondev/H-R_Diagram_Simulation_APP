import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astronomy Simulation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AstronomySimulationScreen(),
    );
  }
}

class AstronomySimulationScreen extends StatefulWidget {
  const AstronomySimulationScreen({super.key});

  @override
  _AstronomySimulationScreenState createState() =>
      _AstronomySimulationScreenState();
}

class _AstronomySimulationScreenState extends State<AstronomySimulationScreen> {
  double star1X = 10; // 초기 위치
  double star2X = 60;
  double star3x = 100;
  double star4x = 140;
  double star5x = 160;
  double star6x = 200;
  double star7x = 230;
  double star8x = 300;
  double star9x = 350;
  double star10x = 360;
  double redstar1x = 300;
  double redstar2x = 270;
  double redstar3x = 240;
  double bluestar1x = 40;
  double time = 0; // 시뮬레이션 시간

  void _showStarDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '청색거성',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 18, 144, 247),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  '주계열성 - 분광형 O형',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/Kryptid.jpg',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/Kryptid.jpg',
                    width: 400,
                    height: 300,
                  ),
                ), // 간격 추가

                const SizedBox(height: 10), // 간격 추가
                // 추가 설명 텍스트 또는 위젯 등을 추가할 수 있습니다.
                const Text(
                  '청색거성(Blue SuperGiant) 은 천문학에서 매우 밝고 큰 크기를 갖는 별의 한 유형입니다 .이러한 별들은 대량의 수소와 헬륨을 내부에서 핵 융합하여 에너지를 발생시키며, 이러한 핵 융합 반응으로 인해 매우 높은 온도와 밝기를 가제기 됩니다. ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '청색거성의 특징:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 126, 228),
                  ),
                ),
                const Text(
                  '1.온도와 색깔:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber,
                  ),
                ),
                const Text(
                  '청색거성은 매우 높은 온도로 인해 푸른색에서 청록색, 보라색과 같은 색을 띱니다. 이러한 고온으로 인해 빛이 짧은 파장에서 더 강하게 방출되므로 우리 눈에는 푸른색으로 보입니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '2. 밝기와 크기:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber,
                  ),
                ),
                const Text(
                  '청색거성은 일반적인 별보다 매우 밝으며, 높은 에너지 생산량으로 인해 크기도 큽니다. 몇 백에서 몇 천배 이상의 태양보다 큰 크기를 가질 수 있습니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '3. 질량: ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber,
                  ),
                ),
                const Text(
                  '청색거성은 대량의 질량을 가진 별로, 태양의 수십 배에서 수백 배 이상의 질량을 가질 수 있습니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const Text(
                  '4. 진화: ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber,
                  ),
                ),
                const Text(
                  '청색거성은 상대적으로 짧은 시간 동안 수소 핵융합을 발생시키며, 이로 인해 높은 온도와 에너지를 유지합니다. 그러나 수소 연소가 소진되면 헬륨 핵융합이 시작되며, 이로 인해 별의 진화가 진행됩니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const Text(
                  '5. 종말: ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber,
                  ),
                ),
                const Text(
                  '청색거성은 헬륨 연소가 진행되면서 다양한 핵융합 단계를 거치게 됩니다. 마지막 단계에서는 철핵이 생성되면서 별은 폭발적인 초신성 폭발을 일으키며 종말을 맞이합니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 20), // 간격 추가
                // 모달 창 닫기 버튼
              ],
            ),
          ),
        );
      },
    );
  }

  void _showOstarDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'HD 93129 Aa/Ab (분광형 O형)',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 126, 228),
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/93129.png',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/93129.png',
                    width: 400,
                    height: 300,
                  ),
                ),
                const Text('사진 출처: Stellarium web 스크린샷'),
                const Text(
                  'HD 93129는 카리나 성운에 있는 삼중성계로, 세 구성 요소 모두 은하계에서 가장 밝은 별 중 뜨거운 O등급 별이 됩니다.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '⌗ 삼중성계 : 다중성계 범주안에 속한다. 2개이상의 항성이 하나의 항성계를 이루는 경우를 뜯합니다',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                ),

                // 간격 추가
              ],
            ),
          ),
        );
      },
    );
  }

  void _showBstarInfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '분광형 B',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                // 간격 추가
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/B_type.png',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/B_type.png',
                    width: 400,
                    height: 300,
                  ),
                ),
                const SizedBox(height: 10), // 간격 추가
                // 추가 설명 텍스트 또는 위젯 등을 추가할 수 있습니다.
                const Text(
                  'B형 주계열성 의 특징:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 126, 228),
                  ),
                ),

                const Text(
                  '분광형 B에 속하는 주계열성. 밝기는 태양의 2배~16배이며, 표면온도는 약 10000~30000켈빈 이다. 수명은 약 1억~7억년이다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const Text(
                  '매우 밝고 푸른 빛을 띄며, 밝기는 태양의 25배에서 최대 3만배까지 다양하다. 온도와 압력이 높을수록 수소 핵융합의 효율이 기하급수적으로 증가하기 때문에 각자 밝기 차가 크다. ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 20), // 간격 추가
                // 모달 창 닫기 버튼
              ],
            ),
          ),
        );
      },
    );
  }

  void _showBstarDetails(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '플레이아데스 성단(분광형 B형) 사진',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 126, 228),
                  ),
                ),
                const Text(
                  'B분광형들이 모여 만든 성단.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                // 간격 추가
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/pleyades.jpg',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/pleyades.jpg',
                    width: 400,
                    height: 300,
                  ),
                ),
                const Text(
                  '황소자리에 있는 산개성단.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  '2등급부터 14등급까지 100여개의 별들이 있으며, 육안으로 확인할 수 있는 밝은별이 여섯개라 <육련성> 이라고도 한다. ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showSuninfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '태양 (The Sun)',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 158, 118, 0)),
                ),

                const Text(
                  'Tag: 주계열성 - 분광형 G형',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ), // 간격 추가
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/Sun.jpg',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/Sun.jpg',
                    width: 400,
                    height: 300,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '태양의 특징:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 128, 0),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '1. 수소 연소:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                ),
                const Text(
                  '태양은 수소를 헬륨으로 핵융합시켜 에너지를 생성합니다. 이러한 핵융합 반응은 태양의 중심부에서 엄청난 압력과 온도로 인해 일어납니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '2. 온도와 색깔',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 191, 0),
                  ),
                ),
                const Text(
                  '태양의 표면 온도는 약 5,500°C 정도로, 이 때문에 주로 노란색에 가까운 색깔을 띠게 됩니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '3. 크기와 밝기',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 214, 161, 0),
                  ),
                ),
                const Text(
                  '태양은 대략 지구의 109 배 정도의 지름을 가지며, 대략 지구의 330,000 배나 되는 질량을 갖습니다. 이러한 크기로 인해 태양은 우리 태양계의 중심에 있는 주요 중력원이자, 다른 행성들을 동경하는 중심 별로 작용합니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '4. 압력과 중력의 균형',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 214, 161, 0),
                  ),
                ),
                const Text(
                  '태양은 중력과 내부에서의 압력 간의 균형을 유지하는 주계열성입니다. 중력은 태양의 내부를 수축시키려고 하지만, 내부에서 발생하는 에너지와 압력이 중력을 상쇄시키며 평형을 유지시킵니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  '5. 수명',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 158, 119, 0),
                  ),
                ),
                const Text(
                  '태양은 현재 약 46억 년 정도의 나이를 가지며, 수포화수소 연소를 계속할 수 있는 예상 수명은 약 100억 년 정도입니다. 현재 우리는 태양의 중반 부분에 해당하는 주기를 지나고 있습니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                // 모달 창 닫기 버튼
              ],
            ),
          ),
        );
      },
    );
  }

  void _showAstarinfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '분광형 A형',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 88, 158, 196)),
                ),

                const Text(
                  'Tag: 주계열성 - 분광형 A형',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ), // 간격 추가
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/Sirius.png',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/Sirius.png',
                    width: 400,
                    height: 300,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'A분광형 특징:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 88, 158, 196),
                  ),
                ),

                const Text(
                  '분광형 A형은 주계열성이다. A형 주계열성은 수소 발머 흡수선이 뚜렷하게 나타나는 전자기 스펙트럼을 보인다. 질량은 태양의 1.4~2.1배정도이다. 지구로부터 가깝고 A형인 별은 알타이르, 시리우스(사진), 베가 등이 있다.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showFstarinfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '분광형 F형',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 112, 119, 78)),
                ),

                const Text(
                  'Tag: 주계열성 - 분광형 F형',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ), // 간격 추가
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/Procyon.png',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/Procyon.png',
                    width: 400,
                    height: 300,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'F분광형에 대하여:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 88, 158, 196),
                  ),
                ),

                const Text(
                  'F형 주계열성은 분광형 F에 속하는 항성이다. 질량은 태양의 1~1.4배에 표면온도는 6000~7600 켈빈이다. 이 온도 범위에서 F형 주계열성은 황백색으로 빛난다. 유명한 F형 왜성으로는 프로키온 A(사진), 처녀자리 감마 A/B 등이 있다.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showKstarinfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '분광형 K형',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 112, 119, 78)),
                ),

                const Text(
                  'Tag: 주계열성 - 분광형 K형',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ), // 간격 추가
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/Eridanus.png',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/Eridanus.png',
                    width: 400,
                    height: 300,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'K분광형에 대하여:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 88, 158, 196),
                  ),
                ),

                const Text(
                  'K형 주계열성은 분광형 K에 속하는 주계열성. K형 주계열성의 질량은 태양의 최소 0.5배~ 최대 0.8배 이다. 유명한 K형 주계열성으로는 센타우루스자리알파B, 에리다누스 자리 앱실론(사진) 등이 있다.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  '( !! 외계인 거주 가능성 !!) ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.amber,
                  ),
                ),

                const Text(
                  'K형 왜성들은 외계생명을 찾는데 있어 관심을 특히 많이 받는 대상이다. 그 이유는 이들이 주계열 단계에서 매우 오랫동안 머무를 수 있기 때문이다. K형 왜성은 질량이 작아 오래 살기 때문에 지구과 같은 암석 행성 표면에 생명체가 자라나는 데 충분한 시간을 줄 수 있다. ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showMstarinfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '분광형 M형 - 적색왜성',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 112, 119, 78)),
                ),

                const Text(
                  'Tag: 주계열성 - 분광형 M형',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ), // 간격 추가
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/ProximaCentauri.png',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/ProximaCentauri.png',
                    width: 400,
                    height: 300,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'M분광형(적색왜성)에 대하여:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),

                const Text(
                  '적색왜성은 작고 상대적으로 차가우며 태양의 0.081~0.5배 정도의 질량을 지닌 주계열성을 부르는 말이다. 적색 왜성의 스펙트럼은 어두운 k형 부터 m형 까지이며, 표면 온도는 3800켈빈을 넘지 않는다. 우주에 있는 별들의 약 90%정도가 적색왜성인것으로 알려져있다. 이처럼 적색왜성은 은하계에서 별들중 가장 흔한 별이나, 낮은 광도때문에 개개의 적색왜성을 관측하기는 쉽지 않다. 실제로 지구에서 육안으로 관찰할 수 있는 적색왜성은 없다. ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  '첨부한 사진은 태양에서 가장 가까운 적색왜성인 프록시마 센타우리 이다.(M5형 항성이며 겉보기 광도는 11.05 이다.)',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),

                const Text(
                  'M분광형(적색왜성)의 특징:',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),

                const Text(
                  '적색왜성의 질량은 매우 가벼우며, 태양의 50%정도를 넘지 않는다. 따라서 항성 중심부의 온도가 낮으며, 핵융합 반응의 속도가 상대적으로 느리며, 매우 약한 빛을 발산한다. 적색왜성 중 어떤 별의 경우로, 광도가 태양의 1만분의 1밖에 되지 않는 경우도 있다. 가장 밝은 적색왜성들인 HD179930, HIP12961 등 조차도 태양 밝기의 10%정도이다. (HD179930 == hd1989)사진',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/hd-1989.png',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/hd-1989.png',
                    width: 400,
                    height: 300,
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showRedgiantinfo(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  '적색거성',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 200, 0, 0)),
                ),

                const Text(
                  'Tag: 분광형 - K or M',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ), // 간격 추가
                GestureDetector(
                  onDoubleTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => Dialog(
                        child: Image.asset(
                          'lib/assets/RedGiant.jpg',
                          width: 800,
                          height: 600,
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'lib/assets/RedGiant.jpg',
                    width: 400,
                    height: 300,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '적색거성의 특징:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
                const Text(
                  '적색거성은 중간정도의 질량을 가진 밝고 거대한 별이다. 항성지화의 후기 단계에 존재한다. 바깥 대기의 밀도는 낮다. 반지름은 매우 크지만 표면 온도는 5,000K 보다 낮은 정도이다. 적색거성의 색깔은 누르스름한 오렌지색에서 적색까지로, 분광형은 K형과 M형이지만 S형별과 대부분의 탄소별도 포함된다. ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  '적색거성의 특징:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
                const Text(
                  '적색거성은 중심핵에서 수소가 소진되어, 핵을 둘러싼 껍질에서 수소의 열핵융합이 일어나는 별로, 태양의 수십에서 수백 배 정도의 반지름을 가지고 있다. 그러나 이들의 외각 껍질의 온도는 태양보다 더 낮기 때문에 붉은 오렌지색을 띈다. 껍질의 에너지 밀도는 낮지만, 태양보다 크기가 훨씬 크기 때문에 훨씬 밝다.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  '알데바란(Aldebaran): ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                ),
                const Text(
                  '알데바란: 알데바란은 중심의 수소를 다 써버렸기에 주계열성 단게를 마치고, 적색거성이라고 부르는 단계에 진입한 별입니다. 거성이라는 이름답게, 알데바란의 반지름은, 태양의 45배에 달합니다. 그러나, 질량은 태양과 거의 같다.   ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  '알데바란의 최후:',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 84, 12, 12),
                  ),
                ),
                const Text(
                  '알데바란 속 헬륨은 여전히 중력으로 인해 밀집하면서 중심의 온도를 상승시킵니다. 중심온도가 1억도에 달합니다. 수소에서 헬륨이 만들어지던 것처럼, 이제는 헬륨의 핵융합이 진행될 수 있는 충분한 온도가 확보되었습니다. 중심에 있던 헬륨은 융합되어 탄소와 산소가 만들어지고 에너지가 방출됩니다. 헬륨 융합으로 인한 에너지 방출과 중력수축의 미세한 불균형으로 알데바란의 껍질을 구성하던 물질의 일부는 우주로떨어져 나간다. 이로 인해 바깥에는 행성상성운 이라는 가스층이 형성된다. 밖으로 드러난 별의 핵은 성운의 한 가운데에서 하얗게 빛납니다. 이제 알데바란은 적색거성에서 백색왜성이라 불리는 단게에 들어갔습니다.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  '백색왜성으로 ->',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Color.fromARGB(255, 61, 149, 221),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startSimulation();
  }

  void startSimulation() {
    const simulationInterval = Duration(milliseconds: 50);
    Timer.periodic(simulationInterval, (timer) {
      setState(() {
        // 간단한 시뮬레이션: 시간이 지남에 따라 별들의 위치를 업데이트
        time += 0.05;
        star1X = 10 + 5 * cos(time); // x = x0 + r * cos(θ)
        star2X = 60 + 5 * cos(time + pi);
        star3x = 100 + 5 * cos(time);
        star4x = 140 + 5 * cos(time + pi);
        star5x = 160 + 5 * cos(time);
        star6x = 200 + 5 * cos(time + pi);
        star7x = 230 + 5 * cos(time);
        star8x = 280 + 5 * cos(time);
        star9x = 330 + 5 * cos(time);
        star10x = 360 + 5 * cos(time);
        redstar1x = 300 + 5 * cos(time);
        redstar2x = 270 + 5 * cos(time + pi);
        redstar3x = 240;
        bluestar1x = 40;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'H-R Diagram Simulation',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              //star1x
              left: star1X,
              top: 50,
              child: GestureDetector(
                onDoubleTap: () => _showStarDetails(context),
                child: const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 90,
                      color: Colors.blue,
                    ),
                    Text(
                      'O',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              //star2x
              left: star2X,
              top: 100,
              child: GestureDetector(
                onDoubleTap: () => _showOstarDetails(context),
                child: const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 80,
                      color: Colors.blue,
                    ),
                    Text(
                      'O',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              //star3x
              left: star3x,
              top: 150,
              child: GestureDetector(
                onDoubleTap: () => _showBstarInfo(context),
                child: const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 70,
                      color: Color.fromARGB(255, 100, 165, 218),
                    ),
                    Text(
                      'B',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              //star4x
              left: star4x,
              top: 220,
              child: GestureDetector(
                onDoubleTap: () => _showBstarDetails(context),
                child: const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 60,
                      color: Color.fromARGB(255, 138, 193, 239),
                    ),
                    Text(
                      'B',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              //star5x
              left: star5x,
              top: 300,
              child: GestureDetector(
                onDoubleTap: () => _showAstarinfo(context),
                child: const Column(
                  children: [
                    Icon(Icons.circle,
                        size: 40, color: Color.fromARGB(255, 184, 197, 209)),
                    Text(
                      'A',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              //star6x
              left: star6x,
              top: 340,
              child: GestureDetector(
                onDoubleTap: () => _showFstarinfo(context),
                child: const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 40,
                      color: Color.fromARGB(255, 167, 166, 109),
                    ),
                    Text(
                      'F',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              //star7x
              //-------------태양------------
              left: star7x,
              top: 390,
              child: GestureDetector(
                onDoubleTap: () => _showSuninfo(context),
                child: const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 40,
                      color: Color.fromARGB(255, 245, 243, 95),
                    ),
                    Text(
                      'G',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              //star8x
              left: star8x,
              top: 460,
              child: GestureDetector(
                onDoubleTap: () => _showKstarinfo(context),
                child: const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 35,
                      color: Color.fromARGB(255, 255, 157, 0),
                    ),
                    Text(
                      'K',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              //적색왜성------
              left: star9x,
              top: 530,
              child: GestureDetector(
                onDoubleTap: () => _showMstarinfo(context),
                child: const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 25,
                      color: Colors.red,
                    ),
                    Text(
                      'M',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              //적색왜성------
              left: star10x,
              top: 600,
              child: GestureDetector(
                onDoubleTap: () => _showMstarinfo(context),
                child: const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 18,
                      color: Color.fromARGB(255, 245, 34, 19),
                    ),
                    Text(
                      'M',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              //적색거성 --- - - - -- -- - - - - -
              left: redstar1x,
              top: 50,
              child: GestureDetector(
                onDoubleTap: () => _showRedgiantinfo(context),
                child: const Column(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 120,
                      color: Color.fromARGB(255, 193, 23, 10),
                    ),
                    Text(
                      'Red Giant',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: redstar2x,
              top: 70,
              child: const Icon(
                Icons.circle,
                size: 75,
                color: Color.fromARGB(255, 251, 41, 26),
              ),
            ),
            Positioned(
              left: redstar3x,
              top: 80,
              child: const Icon(
                Icons.circle,
                size: 50,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

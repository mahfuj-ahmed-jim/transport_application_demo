import 'package:flutter/material.dart';
import 'package:transport_application/pages/inspection_screen.dart';
import 'package:transport_application/widgets/custom_appbar.dart';
import 'package:transport_application/widgets/custom_navigationbar.dart';

class LoadBoardScreen extends StatefulWidget {
  static const routeName = 'load-board';
  const LoadBoardScreen({super.key});

  @override
  State<LoadBoardScreen> createState() => _LoadBoardScreenState();
}

class _LoadBoardScreenState extends State<LoadBoardScreen> {
  int _selectedIndex = 0;
  int _selectedButtonIndex = 0;

  final List<Map<String, dynamic>> orders = [
    {
      'orderName': 'Order 1',
      'status': 'In Progress',
      'statusColor': Color(0xFF3AAFFF),
      'pickupLocation': 'Glendale, CA 91020',
      'miles': '51,6',
      'dropoffLocation': 'Anaheim, CA 92801',
      'price': '\$563',
      'timeLeft': '6d. 11h',
    },
    {
      'orderName': 'Order 2',
      'status': 'Completed',
      'statusColor': Color(0xFF4CAF50),
      'pickupLocation': 'Los Angeles, CA 90001',
      'miles': '120,4',
      'dropoffLocation': 'San Diego, CA 92101',
      'price': '\$1,200',
      'timeLeft': '0d. 0h',
    },
    {
      'orderName': 'Order 3',
      'status': 'In Progress',
      'statusColor': Color(0xFF3AAFFF),
      'pickupLocation': 'Glendale, CA 91020',
      'miles': '51,6',
      'dropoffLocation': 'Anaheim, CA 92801',
      'price': '\$563',
      'timeLeft': '6d. 11h',
    },
    {
      'orderName': 'Order 4',
      'status': 'In Progress',
      'statusColor': Color(0xFF3AAFFF),
      'pickupLocation': 'Glendale, CA 91020',
      'miles': '51,6',
      'dropoffLocation': 'Anaheim, CA 92801',
      'price': '\$563',
      'timeLeft': '6d. 11h',
    },
    {
      'orderName': 'Order 5',
      'status': 'In Progress',
      'statusColor': Color(0xFF3AAFFF),
      'pickupLocation': 'Glendale, CA 91020',
      'miles': '51,6',
      'dropoffLocation': 'Anaheim, CA 92801',
      'price': '\$563',
      'timeLeft': '6d. 11h',
    },
    {
      'orderName': 'Order 6',
      'status': 'In Progress',
      'statusColor': Color(0xFF3AAFFF),
      'pickupLocation': 'Glendale, CA 91020',
      'miles': '51,6',
      'dropoffLocation': 'Anaheim, CA 92801',
      'price': '\$563',
      'timeLeft': '6d. 11h',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 80,
                width: 80,
              ),
              const SizedBox(height: 56),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(3, (index) {
                    final isSelected = _selectedButtonIndex == index;
                    final buttonTexts = ['Available', 'Cancel', 'Completed'];
                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedButtonIndex = index;
                          });
                        },
                        child: Container(
                          height: 32,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFF3AAFFF)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            buttonTexts[index],
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              ...orders.map(
                (order) {
                  return GestureDetector(
                    onTap: () => {
                      Navigator.pushNamed(context, InspectionScreen.routeName)
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF14141A),
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                order['orderName'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 16),
                                decoration: BoxDecoration(
                                  color: order['statusColor'],
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.3),
                                    width: 1,
                                  ),
                                ),
                                child: Text(
                                  order['status'],
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                order['pickupLocation'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Miles:  ${order['miles']}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                order['dropoffLocation'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Price  ${order['price']}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/truck.png',
                                    height: 11,
                                    width: 18,
                                  ),
                                  const SizedBox(width: 6),
                                  const Text(
                                    'Left',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF526279),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                order['timeLeft'],
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFA9B1B9),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

//local files

class QuestionsSumary extends StatelessWidget {
  const QuestionsSumary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              final Color numColor =
                  data['user_answer'] == data['correct_answer']
                      ? const Color.fromARGB(255, 28, 255, 59)
                      : const Color.fromARGB(255, 162, 67, 190);
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 70,
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 7.5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: numColor,
                        ),
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 162, 67, 190),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 17, 231, 46),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

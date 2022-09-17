import 'package:flutter/material.dart';
import 'package:indigo/api/indigo_api.dart';
import 'package:indigo/base/routes.dart';
import 'package:indigo/models/feedback/feedback_model.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}
class _FeedBackState extends State<FeedBack> {
  PageController pageController = PageController(initialPage: 0);
  FeedBackModel? feedbackData;
  List<Question> questionsData = [];
  int currentQuestionIndex = 0;
  bool showResult = false;

  // final PageController controller = PageController(initialPage: 0);

  @override
  void initState() {
    getData().then((data) {
      setState(() {
        feedbackData = data;
        questionsData = data.questions;
        pageController.addListener(() => questionsData.indexOf(questionsData[0]));
      });
    });
    super.initState();
  }
  Future<FeedBackModel> getData() async {
    return await IndigoAPI().feedback.getFeedbackData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      appBar: AppBar(
        title: const Text('QUESTIONS'),
      ),
      body: feedbackData == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : showResult
              ? _resultView()
          : _buildContent()

    );
  }
  Widget _buildContent() {
    return Column(
      children: [
        LinearProgressIndicator(

          backgroundColor: Colors.redAccent,
          valueColor: AlwaysStoppedAnimation(Colors.greenAccent),
          value: currentQuestionIndex/questionsData.length,
          semanticsLabel: 'Linear progress indicator',
        ),
        _buildQuestion(
          questionsData[currentQuestionIndex],
        )
      ],
    );
  }
  Widget _buildQuestion(Question questionData) {
    return Expanded(
      child: PageView.builder(
        itemCount: questionsData.length,
          controller: pageController,
          itemBuilder:((context, index){
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questionData.questionText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: questionData.answers
                .map<Widget>(
                  (a) => _answerOption(
                    a,
                    answerPressed,
                  ),
                ).toList(),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }),
    ),
    );
  }
  Widget _answerOption(
    Answer answerData,
    Function(int) onAnswerPressed,
  ) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // _pageView();
// page.animateToPage(++questionsData.length,
//     duration: Duration(seconds: 2),
//     curve: Curves.bounceIn);
          onAnswerPressed(answerData.answerId);
          pageController.animateToPage(currentQuestionIndex,
              duration: Duration(seconds: 2),
              curve: Curves.bounceIn);
        },
        child: Text(answerData.answerText),
      ),
    );
  }
  Widget _resultView() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Colors.indigo.shade400,
            borderRadius: BorderRadius.circular(15,
            )),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Thank you for your feedback'),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.homepage);
              },
              child: Text('Send'),
            )
          ],
        ),
      ),
    );
  }
// Widget _pageView(){
//
//    return PageView.builder(
//      pageSnapping: true,
//      itemCount: questionsData.length,
//        itemBuilder: (context, index) {
//       return _buildQuestion(currentQuestionIndex < questionsData.length -1 ?
//       questionsData[currentQuestionIndex++] : questionsData[currentQuestionIndex--]);
//        }
//     );
// }
  void answerPressed(int answerId) {
    if (currentQuestionIndex == questionsData.length -1) {
      setState(() {
        showResult = true;
      });
    } else {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }
}

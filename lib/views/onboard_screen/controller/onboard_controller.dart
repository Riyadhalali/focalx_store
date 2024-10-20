import 'package:focalx_store/model/onboard_model.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  var currentPage = 0.obs; // observe for current page
// Define the onboard pages data
  final List<OnboardPageModel> onboardPages = [
    OnboardPageModel(
      title: "WELLCOME TO\nBYTE BOUTIQUE",
      subtitle: "",
      buttonText: "Get Started",
    ),
    OnboardPageModel(
      title: "Let's Start Journey",
      subtitle: "Smart, Gorgeous & Fashionable\nCollection Expire Now",
      buttonText: "Next",
    ),
    OnboardPageModel(
      title: "You Have The\nPower To",
      subtitle: "There Are Many Beautiful And Attractive\nPoints To Your Room",
      buttonText: "Next",
    ),
  ];

  // Called when the page is changed
  void onPageChanges(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < onboardPages.length - 1) {
      currentPage.value++;
    } else {
      // Navigate to home or main screen
      Get.offAllNamed('/homeScreen');
    }
  }
}

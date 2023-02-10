import 'package:amardesigner/HomeScreen.dart';
import 'package:amardesigner/Login/BasicInfo.dart';
import 'package:amardesigner/Login/ChooseUserType.dart';
import 'package:amardesigner/Login/resetpassword.dart';
import 'package:amardesigner/Login/signIn.dart';
import 'package:amardesigner/Login/signUp.dart';
import 'package:amardesigner/MainScreen.dart';
import 'package:amardesigner/Middleware/middleware.dart';
import 'package:amardesigner/Screens/BusinessDetailsPageStepTwoAmar.dart';
import 'package:amardesigner/Screens/DesignIdeas1.dart';
import 'package:amardesigner/Screens/DesignIdeas2.dart';
import 'package:amardesigner/Screens/EditPhotoInformation.dart';
import 'package:amardesigner/Screens/EditPhotoInformation2.dart';
import 'package:amardesigner/Screens/ProfileOwner.dart';
import 'package:amardesigner/Screens/UploadContent.dart';
import 'package:amardesigner/Screens/addYourProject.dart';
import 'package:amardesigner/controllers/HomeControlers.dart';
import 'package:get/get.dart';

class Routes {
  Routes._();

  static String getMainScreenRoute() => _Paths.MAIN;
  static String getHomeRoute() => _Paths.HOME;
  static String getSignUpRoute() => _Paths.SIGNUP;
  static String getSignInRoute() => _Paths.SIGNIN;
  static String getProfileRoute() => _Paths.PROFILE;
  static String getChooseUserTypeRoute() => _Paths.COOSEUSER;
  static String getresetpasswordRoute() => _Paths.RESETPASSWORD;
  static String getDesignIdeas1dRoute() => _Paths.DESIGNIDEAS1;
  static String getDesignIdeas2dRoute() => _Paths.DESIGNIDEAS2;
  static String getAddYourProjectdRoute() => _Paths.ADDYOUPROJECTS;
  static String getBusinessDetailsPagedRoute() => _Paths.BUSINESSDETAILS;
  static String getEditPhotoPagedRoute() => _Paths.EDITINFORMATION;
  static String getEditPhoto2PagedRoute() => _Paths.EDITINFORMATION2;
  static String getUploadContentPagedRoute() => _Paths.UPLOADCONTENT;
  static String getProfileOwnerRoute() => _Paths.PROFILEOWNER;

  static List<GetPage> routes = [
    GetPage(
        page: () => const HomeScreen(),
        binding: HomeBinding(),
        middlewares: [Middleware()],
        name: _Paths.HOME),

    GetPage(
      page: () => const MainScreen(), 
      name: _Paths.MAIN),

    GetPage(
      page: () => const SignUpScreen(), 
      name: _Paths.SIGNUP),

    GetPage(
      page: () => const LoginScreen(), 
      name: _Paths.SIGNIN),

    GetPage(
      page: () => const ProfileSettingsScreen(), 
      name: _Paths.PROFILE),

    GetPage(
      page: () => const ChoseUserType(), 
      name: _Paths.COOSEUSER),

    GetPage(
     page: () => const ResetPasswordScreen(), 
     name: _Paths.RESETPASSWORD),

    GetPage(
      page: () => const DesignIdeas1(), 
      name: _Paths.DESIGNIDEAS1),

    GetPage(
      page: () => const DesignIdeas2(), 
      name: _Paths.DESIGNIDEAS2),  

    GetPage(
      page: () => const AddYourProject(), 
      name: _Paths.ADDYOUPROJECTS),

    GetPage(
      page: () => const BusinessDetailsPageStepTwo(), 
      name: _Paths.BUSINESSDETAILS),  

    GetPage(
      page: () => const EditPhoto(), 
      name: _Paths.EDITINFORMATION),

     GetPage(
      page: () => const EditPhoto2(), 
      name: _Paths.EDITINFORMATION2),  

     GetPage(
      page: () => const UploadContent(), 
      name: _Paths.UPLOADCONTENT),   

    GetPage(
      page: () => const ProfileOwner(), 
      name: _Paths.PROFILEOWNER),   

  ];
}

abstract class PageRoutes {
  PageRoutes._();

  static const MAIN = _Paths.MAIN;
  static const HOME = _Paths.HOME;
  static const SIGNIN = _Paths.SIGNIN;
  static const SIGNUP = _Paths.SIGNUP;
  static const PROFILE = _Paths.PROFILE;
  static const COOSEUSER = _Paths.COOSEUSER;
  static const RESETPASSWORD = _Paths.RESETPASSWORD;
  static const DESIGNIDEAS1 = _Paths.DESIGNIDEAS1;
  static const DESIGNIDEAS2 = _Paths.DESIGNIDEAS2;
  static const ADDYOUPROJECTS = _Paths.ADDYOUPROJECTS;
  static const BUSINESSDETAILS = _Paths.BUSINESSDETAILS;
  static const EDITINFORMATION = _Paths.EDITINFORMATION;
  static const EDITINFORMATION2 = _Paths.EDITINFORMATION2;
  static const UPLOADCONTENT = _Paths.UPLOADCONTENT;
  static const PROFILEOWNER = _Paths.PROFILEOWNER;
}

abstract class _Paths {
  static const MAIN = '/main';
  static const HOME = '/home'; //
  static const SIGNIN = '/signIn';//
  static const SIGNUP = '/signUp';//
  static const PROFILE = '/profile';//
  static const COOSEUSER = '/chooseUser';//
  static const RESETPASSWORD = '/resetPassward';//
  static const DESIGNIDEAS1 = '/designIdeas1';//
  static const DESIGNIDEAS2 = '/designIdeas2';//
  static const ADDYOUPROJECTS = '/addYourProjects';//
  static const BUSINESSDETAILS = '/businessDetails';//
  static const EDITINFORMATION = '/editInformation';//
  static const EDITINFORMATION2 = '/editInformation2';//
  static const UPLOADCONTENT = '/uploadContent';
  static const PROFILEOWNER = '/ProfileOwner';
}

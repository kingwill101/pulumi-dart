// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_bundle_response.dart';
import 'file_reference_response.dart';

/// A test of an Android Application with a Test Loop. The intent \ will be implicitly added, since Games is the only user of this api, for the time being.
class AndroidTestLoopResponse {
  /// The APK for the application under test.
  final pulumi.Input<FileReferenceResponse> appApk;
  /// A multi-apk app bundle for the application under test.
  final pulumi.Input<AppBundleResponse> appBundle;
  /// The java package for the application under test. The default is determined by examining the application's manifest.
  final pulumi.Input<String> appPackageId;
  /// The list of scenario labels that should be run during the test. The scenario labels should map to labels defined in the application's manifest. For example, player_experience and com.google.test.loops.player_experience add all of the loops labeled in the manifest with the com.google.test.loops.player_experience name to the execution. Scenarios can also be specified in the scenarios field.
  final pulumi.Input<List<String>> scenarioLabels;
  /// The list of scenarios that should be run during the test. The default is all test loops, derived from the application's manifest.
  final pulumi.Input<List<int>> scenarios;

  /// Creates a new [AndroidTestLoopResponse].
  /// [appApk] The APK for the application under test.
  /// [appBundle] A multi-apk app bundle for the application under test.
  /// [appPackageId] The java package for the application under test. The default is determined by examining the application's manifest.
  /// [scenarioLabels] The list of scenario labels that should be run during the test. The scenario labels should map to labels defined in the application's manifest. For example, player_experience and com.google.test.loops.player_experience add all of the loops labeled in the manifest with the com.google.test.loops.player_experience name to the execution. Scenarios can also be specified in the scenarios field.
  /// [scenarios] The list of scenarios that should be run during the test. The default is all test loops, derived from the application's manifest.
  const AndroidTestLoopResponse({
    required this.appApk,
    required this.appBundle,
    required this.appPackageId,
    required this.scenarioLabels,
    required this.scenarios,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appApk': pulumi.Input.mapInputValue<FileReferenceResponse, Map<String, dynamic>>(appApk, (value) => value.toMap()),
      'appBundle': pulumi.Input.mapInputValue<AppBundleResponse, Map<String, dynamic>>(appBundle, (value) => value.toMap()),
      'appPackageId': appPackageId,
      'scenarioLabels': scenarioLabels,
      'scenarios': scenarios,
    };
  }

  factory AndroidTestLoopResponse.fromMap(Map<String, dynamic> map) {
    return AndroidTestLoopResponse(
      appApk: pulumi.Input.fromValue(FileReferenceResponse.fromMap((map['appApk']! as Map).cast<String, dynamic>())),
      appBundle: pulumi.Input.fromValue(AppBundleResponse.fromMap((map['appBundle']! as Map).cast<String, dynamic>())),
      appPackageId: pulumi.Input.fromValue(map['appPackageId'] as String),
      scenarioLabels: pulumi.Input.fromValue((map['scenarioLabels'] as List).cast<String>()),
      scenarios: pulumi.Input.fromValue((map['scenarios'] as List).cast<int>()),
    );
  }
}


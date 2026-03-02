// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_bundle.dart';
import 'file_reference.dart';

/// A test of an Android Application with a Test Loop. The intent \ will be implicitly added, since Games is the only user of this api, for the time being.
class AndroidTestLoop {
  /// The APK for the application under test.
  final pulumi.Input<FileReference>? appApk;
  /// A multi-apk app bundle for the application under test.
  final pulumi.Input<AppBundle>? appBundle;
  /// The java package for the application under test. The default is determined by examining the application's manifest.
  final pulumi.Input<String>? appPackageId;
  /// The list of scenario labels that should be run during the test. The scenario labels should map to labels defined in the application's manifest. For example, player_experience and com.google.test.loops.player_experience add all of the loops labeled in the manifest with the com.google.test.loops.player_experience name to the execution. Scenarios can also be specified in the scenarios field.
  final pulumi.Input<List<String>>? scenarioLabels;
  /// The list of scenarios that should be run during the test. The default is all test loops, derived from the application's manifest.
  final pulumi.Input<List<int>>? scenarios;

  /// Creates a new [AndroidTestLoop].
  /// [appApk] The APK for the application under test.
  /// [appBundle] A multi-apk app bundle for the application under test.
  /// [appPackageId] The java package for the application under test. The default is determined by examining the application's manifest.
  /// [scenarioLabels] The list of scenario labels that should be run during the test. The scenario labels should map to labels defined in the application's manifest. For example, player_experience and com.google.test.loops.player_experience add all of the loops labeled in the manifest with the com.google.test.loops.player_experience name to the execution. Scenarios can also be specified in the scenarios field.
  /// [scenarios] The list of scenarios that should be run during the test. The default is all test loops, derived from the application's manifest.
  AndroidTestLoop({
    this.appApk,
    this.appBundle,
    this.appPackageId,
    this.scenarioLabels,
    this.scenarios,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appApk': ?pulumi.Input.mapOptionalInputValue<FileReference, Map<String, dynamic>>(appApk, (value) => value.toMap()),
      'appBundle': ?pulumi.Input.mapOptionalInputValue<AppBundle, Map<String, dynamic>>(appBundle, (value) => value.toMap()),
      'appPackageId': ?appPackageId,
      'scenarioLabels': ?scenarioLabels,
      'scenarios': ?scenarios,
    };
  }

  factory AndroidTestLoop.fromMap(Map<String, dynamic> map) {
    return AndroidTestLoop(
      appApk: map['appApk'] == null ? null : (FileReference.fromMap((map['appApk'] as Map).cast<String, dynamic>())).input(),
      appBundle: map['appBundle'] == null ? null : (AppBundle.fromMap((map['appBundle'] as Map).cast<String, dynamic>())).input(),
      appPackageId: map['appPackageId'] == null ? null : (map['appPackageId'] as String).input(),
      scenarioLabels: map['scenarioLabels'] == null ? null : ((map['scenarioLabels'] as List).cast<String>()).input(),
      scenarios: map['scenarios'] == null ? null : ((map['scenarios'] as List).cast<int>()).input(),
    );
  }
}


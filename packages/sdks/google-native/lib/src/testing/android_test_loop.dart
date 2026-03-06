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
  const AndroidTestLoop({
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
      appApk: (() { final guardedValue = map['appApk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appBundle: (() { final guardedValue = map['appBundle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppBundle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appPackageId: (() { final guardedValue = map['appPackageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scenarioLabels: (() { final guardedValue = map['scenarioLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scenarios: (() { final guardedValue = map['scenarios']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}


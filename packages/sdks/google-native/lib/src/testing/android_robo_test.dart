// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_robo_test_robo_mode.dart';
import 'app_bundle.dart';
import 'file_reference.dart';
import 'robo_directive.dart';
import 'robo_starting_intent.dart';

/// A test of an android application that explores the application on a virtual or physical Android Device, finding culprits and crashes as it goes.
class AndroidRoboTest {
  /// The APK for the application under test.
  final pulumi.Input<FileReference>? appApk;
  /// A multi-apk app bundle for the application under test.
  final pulumi.Input<AppBundle>? appBundle;
  /// The initial activity that should be used to start the app.
  final pulumi.Input<String>? appInitialActivity;
  /// The java package for the application under test. The default value is determined by examining the application's manifest.
  final pulumi.Input<String>? appPackageId;
  /// The max depth of the traversal stack Robo can explore. Needs to be at least 2 to make Robo explore the app beyond the first activity. Default is 50.
  final pulumi.Input<int>? maxDepth;
  /// The max number of steps Robo can execute. Default is no limit.
  final pulumi.Input<int>? maxSteps;
  /// A set of directives Robo should apply during the crawl. This allows users to customize the crawl. For example, the username and password for a test account can be provided.
  final pulumi.Input<List<RoboDirective>>? roboDirectives;
  /// The mode in which Robo should run. Most clients should allow the server to populate this field automatically.
  final pulumi.Input<AndroidRoboTestRoboMode>? roboMode;
  /// A JSON file with a sequence of actions Robo should perform as a prologue for the crawl.
  final pulumi.Input<FileReference>? roboScript;
  /// The intents used to launch the app for the crawl. If none are provided, then the main launcher activity is launched. If some are provided, then only those provided are launched (the main launcher activity must be provided explicitly).
  final pulumi.Input<List<RoboStartingIntent>>? startingIntents;

  /// Creates a new [AndroidRoboTest].
  /// [appApk] The APK for the application under test.
  /// [appBundle] A multi-apk app bundle for the application under test.
  /// [appInitialActivity] The initial activity that should be used to start the app.
  /// [appPackageId] The java package for the application under test. The default value is determined by examining the application's manifest.
  /// [maxDepth] The max depth of the traversal stack Robo can explore. Needs to be at least 2 to make Robo explore the app beyond the first activity. Default is 50.
  /// [maxSteps] The max number of steps Robo can execute. Default is no limit.
  /// [roboDirectives] A set of directives Robo should apply during the crawl. This allows users to customize the crawl. For example, the username and password for a test account can be provided.
  /// [roboMode] The mode in which Robo should run. Most clients should allow the server to populate this field automatically.
  /// [roboScript] A JSON file with a sequence of actions Robo should perform as a prologue for the crawl.
  /// [startingIntents] The intents used to launch the app for the crawl. If none are provided, then the main launcher activity is launched. If some are provided, then only those provided are launched (the main launcher activity must be provided explicitly).
  const AndroidRoboTest({
    this.appApk,
    this.appBundle,
    this.appInitialActivity,
    this.appPackageId,
    this.maxDepth,
    this.maxSteps,
    this.roboDirectives,
    this.roboMode,
    this.roboScript,
    this.startingIntents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appApk': ?pulumi.Input.mapOptionalInputValue<FileReference, Map<String, dynamic>>(appApk, (value) => value.toMap()),
      'appBundle': ?pulumi.Input.mapOptionalInputValue<AppBundle, Map<String, dynamic>>(appBundle, (value) => value.toMap()),
      'appInitialActivity': ?appInitialActivity,
      'appPackageId': ?appPackageId,
      'maxDepth': ?maxDepth,
      'maxSteps': ?maxSteps,
      'roboDirectives': ?pulumi.Input.mapOptionalInputValue<List<RoboDirective>, List<Map<String, dynamic>>>(roboDirectives, (value) => pulumi.Input.encodeList<RoboDirective, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roboMode': ?pulumi.Input.mapOptionalInputValue<AndroidRoboTestRoboMode, String>(roboMode, (value) => value.wireValue),
      'roboScript': ?pulumi.Input.mapOptionalInputValue<FileReference, Map<String, dynamic>>(roboScript, (value) => value.toMap()),
      'startingIntents': ?pulumi.Input.mapOptionalInputValue<List<RoboStartingIntent>, List<Map<String, dynamic>>>(startingIntents, (value) => pulumi.Input.encodeList<RoboStartingIntent, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AndroidRoboTest.fromMap(Map<String, dynamic> map) {
    return AndroidRoboTest(
      appApk: (() { final guardedValue = map['appApk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appBundle: (() { final guardedValue = map['appBundle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppBundle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appInitialActivity: (() { final guardedValue = map['appInitialActivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appPackageId: (() { final guardedValue = map['appPackageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDepth: (() { final guardedValue = map['maxDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxSteps: (() { final guardedValue = map['maxSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      roboDirectives: (() { final guardedValue = map['roboDirectives']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoboDirective>(guardedValue, (value) => RoboDirective.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roboMode: (() { final guardedValue = map['roboMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AndroidRoboTestRoboMode.fromValue(guardedValue as String)); })(),
      roboScript: (() { final guardedValue = map['roboScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startingIntents: (() { final guardedValue = map['startingIntents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RoboStartingIntent>(guardedValue, (value) => RoboStartingIntent.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


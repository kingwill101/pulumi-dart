// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_bundle_response.dart';
import 'file_reference_response.dart';
import 'robo_directive_response.dart';
import 'robo_starting_intent_response.dart';

/// A test of an android application that explores the application on a virtual or physical Android Device, finding culprits and crashes as it goes.
class AndroidRoboTestResponse {
  /// The APK for the application under test.
  final pulumi.Input<FileReferenceResponse> appApk;
  /// A multi-apk app bundle for the application under test.
  final pulumi.Input<AppBundleResponse> appBundle;
  /// The initial activity that should be used to start the app.
  final pulumi.Input<String> appInitialActivity;
  /// The java package for the application under test. The default value is determined by examining the application's manifest.
  final pulumi.Input<String> appPackageId;
  /// The max depth of the traversal stack Robo can explore. Needs to be at least 2 to make Robo explore the app beyond the first activity. Default is 50.
  final pulumi.Input<int> maxDepth;
  /// The max number of steps Robo can execute. Default is no limit.
  final pulumi.Input<int> maxSteps;
  /// A set of directives Robo should apply during the crawl. This allows users to customize the crawl. For example, the username and password for a test account can be provided.
  final pulumi.Input<List<RoboDirectiveResponse>> roboDirectives;
  /// The mode in which Robo should run. Most clients should allow the server to populate this field automatically.
  final pulumi.Input<String> roboMode;
  /// A JSON file with a sequence of actions Robo should perform as a prologue for the crawl.
  final pulumi.Input<FileReferenceResponse> roboScript;
  /// The intents used to launch the app for the crawl. If none are provided, then the main launcher activity is launched. If some are provided, then only those provided are launched (the main launcher activity must be provided explicitly).
  final pulumi.Input<List<RoboStartingIntentResponse>> startingIntents;

  /// Creates a new [AndroidRoboTestResponse].
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
  const AndroidRoboTestResponse({
    required this.appApk,
    required this.appBundle,
    required this.appInitialActivity,
    required this.appPackageId,
    required this.maxDepth,
    required this.maxSteps,
    required this.roboDirectives,
    required this.roboMode,
    required this.roboScript,
    required this.startingIntents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appApk': pulumi.Input.mapInputValue<FileReferenceResponse, Map<String, dynamic>>(appApk, (value) => value.toMap()),
      'appBundle': pulumi.Input.mapInputValue<AppBundleResponse, Map<String, dynamic>>(appBundle, (value) => value.toMap()),
      'appInitialActivity': appInitialActivity,
      'appPackageId': appPackageId,
      'maxDepth': maxDepth,
      'maxSteps': maxSteps,
      'roboDirectives': pulumi.Input.mapInputValue<List<RoboDirectiveResponse>, List<Map<String, dynamic>>>(roboDirectives, (value) => pulumi.Input.encodeList<RoboDirectiveResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roboMode': roboMode,
      'roboScript': pulumi.Input.mapInputValue<FileReferenceResponse, Map<String, dynamic>>(roboScript, (value) => value.toMap()),
      'startingIntents': pulumi.Input.mapInputValue<List<RoboStartingIntentResponse>, List<Map<String, dynamic>>>(startingIntents, (value) => pulumi.Input.encodeList<RoboStartingIntentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AndroidRoboTestResponse.fromMap(Map<String, dynamic> map) {
    return AndroidRoboTestResponse(
      appApk: pulumi.Input.fromValue(FileReferenceResponse.fromMap((map['appApk']! as Map).cast<String, dynamic>())),
      appBundle: pulumi.Input.fromValue(AppBundleResponse.fromMap((map['appBundle']! as Map).cast<String, dynamic>())),
      appInitialActivity: pulumi.Input.fromValue(map['appInitialActivity'] as String),
      appPackageId: pulumi.Input.fromValue(map['appPackageId'] as String),
      maxDepth: pulumi.Input.fromValue(map['maxDepth'] as int),
      maxSteps: pulumi.Input.fromValue(map['maxSteps'] as int),
      roboDirectives: pulumi.Input.fromValue(pulumi.Input.decodeList<RoboDirectiveResponse>(map['roboDirectives']!, (value) => RoboDirectiveResponse.fromMap((value as Map).cast<String, dynamic>()))),
      roboMode: pulumi.Input.fromValue(map['roboMode'] as String),
      roboScript: pulumi.Input.fromValue(FileReferenceResponse.fromMap((map['roboScript']! as Map).cast<String, dynamic>())),
      startingIntents: pulumi.Input.fromValue(pulumi.Input.decodeList<RoboStartingIntentResponse>(map['startingIntents']!, (value) => RoboStartingIntentResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

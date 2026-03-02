// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A test of an android application that explores the application on a virtual or physical Android device, finding culprits and crashes as it goes.
class AndroidRoboTestResponse {
  /// The initial activity that should be used to start the app. Optional
  final pulumi.Input<String> appInitialActivity;
  /// The java package for the bootstrap. Optional
  final pulumi.Input<String> bootstrapPackageId;
  /// The runner class for the bootstrap. Optional
  final pulumi.Input<String> bootstrapRunnerClass;
  /// The max depth of the traversal stack Robo can explore. Optional
  final pulumi.Input<int> maxDepth;
  /// The max number of steps/actions Robo can execute. Default is no limit (0). Optional
  final pulumi.Input<int> maxSteps;

  /// Creates a new [AndroidRoboTestResponse].
  /// [appInitialActivity] The initial activity that should be used to start the app. Optional
  /// [bootstrapPackageId] The java package for the bootstrap. Optional
  /// [bootstrapRunnerClass] The runner class for the bootstrap. Optional
  /// [maxDepth] The max depth of the traversal stack Robo can explore. Optional
  /// [maxSteps] The max number of steps/actions Robo can execute. Default is no limit (0). Optional
  AndroidRoboTestResponse({
    required this.appInitialActivity,
    required this.bootstrapPackageId,
    required this.bootstrapRunnerClass,
    required this.maxDepth,
    required this.maxSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInitialActivity': appInitialActivity,
      'bootstrapPackageId': bootstrapPackageId,
      'bootstrapRunnerClass': bootstrapRunnerClass,
      'maxDepth': maxDepth,
      'maxSteps': maxSteps,
    };
  }

  factory AndroidRoboTestResponse.fromMap(Map<String, dynamic> map) {
    return AndroidRoboTestResponse(
      appInitialActivity: (map['appInitialActivity'] as String).input(),
      bootstrapPackageId: (map['bootstrapPackageId'] as String).input(),
      bootstrapRunnerClass: (map['bootstrapRunnerClass'] as String).input(),
      maxDepth: (map['maxDepth'] as int).input(),
      maxSteps: (map['maxSteps'] as int).input(),
    );
  }
}


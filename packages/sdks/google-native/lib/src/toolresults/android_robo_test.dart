// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A test of an android application that explores the application on a virtual or physical Android device, finding culprits and crashes as it goes.
class AndroidRoboTest {
  /// The initial activity that should be used to start the app. Optional
  final pulumi.Input<String>? appInitialActivity;
  /// The java package for the bootstrap. Optional
  final pulumi.Input<String>? bootstrapPackageId;
  /// The runner class for the bootstrap. Optional
  final pulumi.Input<String>? bootstrapRunnerClass;
  /// The max depth of the traversal stack Robo can explore. Optional
  final pulumi.Input<int>? maxDepth;
  /// The max number of steps/actions Robo can execute. Default is no limit (0). Optional
  final pulumi.Input<int>? maxSteps;

  /// Creates a new [AndroidRoboTest].
  /// [appInitialActivity] The initial activity that should be used to start the app. Optional
  /// [bootstrapPackageId] The java package for the bootstrap. Optional
  /// [bootstrapRunnerClass] The runner class for the bootstrap. Optional
  /// [maxDepth] The max depth of the traversal stack Robo can explore. Optional
  /// [maxSteps] The max number of steps/actions Robo can execute. Default is no limit (0). Optional
  AndroidRoboTest({
    this.appInitialActivity,
    this.bootstrapPackageId,
    this.bootstrapRunnerClass,
    this.maxDepth,
    this.maxSteps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appInitialActivity': ?appInitialActivity,
      'bootstrapPackageId': ?bootstrapPackageId,
      'bootstrapRunnerClass': ?bootstrapRunnerClass,
      'maxDepth': ?maxDepth,
      'maxSteps': ?maxSteps,
    };
  }

  factory AndroidRoboTest.fromMap(Map<String, dynamic> map) {
    return AndroidRoboTest(
      appInitialActivity: map['appInitialActivity'] == null ? null : (map['appInitialActivity'] as String).input(),
      bootstrapPackageId: map['bootstrapPackageId'] == null ? null : (map['bootstrapPackageId'] as String).input(),
      bootstrapRunnerClass: map['bootstrapRunnerClass'] == null ? null : (map['bootstrapRunnerClass'] as String).input(),
      maxDepth: map['maxDepth'] == null ? null : (map['maxDepth'] as int).input(),
      maxSteps: map['maxSteps'] == null ? null : (map['maxSteps'] as int).input(),
    );
  }
}


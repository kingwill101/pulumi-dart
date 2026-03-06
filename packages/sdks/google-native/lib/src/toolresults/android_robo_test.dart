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
  const AndroidRoboTest({
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
      appInitialActivity: (() { final guardedValue = map['appInitialActivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapPackageId: (() { final guardedValue = map['bootstrapPackageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootstrapRunnerClass: (() { final guardedValue = map['bootstrapRunnerClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDepth: (() { final guardedValue = map['maxDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxSteps: (() { final guardedValue = map['maxSteps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


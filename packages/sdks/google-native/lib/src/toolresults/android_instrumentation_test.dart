// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A test of an Android application that can control an Android component independently of its normal lifecycle. See for more information on types of Android tests.
class AndroidInstrumentationTest {
  /// The java package for the test to be executed. Required
  final pulumi.Input<String>? testPackageId;
  /// The InstrumentationTestRunner class. Required
  final pulumi.Input<String>? testRunnerClass;
  /// Each target must be fully qualified with the package name or class name, in one of these formats: - "package package_name" - "class package_name.class_name" - "class package_name.class_name#method_name" If empty, all targets in the module will be run.
  final pulumi.Input<List<String>>? testTargets;
  /// The flag indicates whether Android Test Orchestrator will be used to run test or not.
  final pulumi.Input<bool>? useOrchestrator;

  /// Creates a new [AndroidInstrumentationTest].
  /// [testPackageId] The java package for the test to be executed. Required
  /// [testRunnerClass] The InstrumentationTestRunner class. Required
  /// [testTargets] Each target must be fully qualified with the package name or class name, in one of these formats: - "package package_name" - "class package_name.class_name" - "class package_name.class_name#method_name" If empty, all targets in the module will be run.
  /// [useOrchestrator] The flag indicates whether Android Test Orchestrator will be used to run test or not.
  const AndroidInstrumentationTest({
    this.testPackageId,
    this.testRunnerClass,
    this.testTargets,
    this.useOrchestrator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testPackageId': ?testPackageId,
      'testRunnerClass': ?testRunnerClass,
      'testTargets': ?testTargets,
      'useOrchestrator': ?useOrchestrator,
    };
  }

  factory AndroidInstrumentationTest.fromMap(Map<String, dynamic> map) {
    return AndroidInstrumentationTest(
      testPackageId: (() { final guardedValue = map['testPackageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testRunnerClass: (() { final guardedValue = map['testRunnerClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testTargets: (() { final guardedValue = map['testTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      useOrchestrator: (() { final guardedValue = map['useOrchestrator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


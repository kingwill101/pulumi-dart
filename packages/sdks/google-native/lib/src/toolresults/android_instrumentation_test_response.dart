// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A test of an Android application that can control an Android component independently of its normal lifecycle. See for more information on types of Android tests.
class AndroidInstrumentationTestResponse {
  /// The java package for the test to be executed. Required
  final pulumi.Input<String> testPackageId;

  /// The InstrumentationTestRunner class. Required
  final pulumi.Input<String> testRunnerClass;

  /// Each target must be fully qualified with the package name or class name, in one of these formats: - "package package_name" - "class package_name.class_name" - "class package_name.class_name#method_name" If empty, all targets in the module will be run.
  final pulumi.Input<List<String>> testTargets;

  /// The flag indicates whether Android Test Orchestrator will be used to run test or not.
  final pulumi.Input<bool> useOrchestrator;

  /// Creates a new [AndroidInstrumentationTestResponse].
  /// [testPackageId] The java package for the test to be executed. Required
  /// [testRunnerClass] The InstrumentationTestRunner class. Required
  /// [testTargets] Each target must be fully qualified with the package name or class name, in one of these formats: - "package package_name" - "class package_name.class_name" - "class package_name.class_name#method_name" If empty, all targets in the module will be run.
  /// [useOrchestrator] The flag indicates whether Android Test Orchestrator will be used to run test or not.
  AndroidInstrumentationTestResponse({
    required this.testPackageId,
    required this.testRunnerClass,
    required this.testTargets,
    required this.useOrchestrator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testPackageId': testPackageId,
      'testRunnerClass': testRunnerClass,
      'testTargets': testTargets,
      'useOrchestrator': useOrchestrator,
    };
  }

  factory AndroidInstrumentationTestResponse.fromMap(Map<String, dynamic> map) {
    return AndroidInstrumentationTestResponse(
      testPackageId: pulumi.Input.fromValue(map['testPackageId'] as String),
      testRunnerClass: pulumi.Input.fromValue(map['testRunnerClass'] as String),
      testTargets: pulumi.Input.fromValue(
        (map['testTargets'] as List).cast<String>(),
      ),
      useOrchestrator: pulumi.Input.fromValue(map['useOrchestrator'] as bool),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a test case. Test case references are canonically ordered lexicographically by these three factors: * First, by test_suite_name. * Second, by class_name. * Third, by name.
class TestCaseReferenceResponse {
  /// The name of the class.
  final pulumi.Input<String> className;

  /// The name of the test case. Required.
  final pulumi.Input<String> name;

  /// The name of the test suite to which this test case belongs.
  final pulumi.Input<String> testSuiteName;

  /// Creates a new [TestCaseReferenceResponse].
  /// [className] The name of the class.
  /// [name] The name of the test case. Required.
  /// [testSuiteName] The name of the test suite to which this test case belongs.
  TestCaseReferenceResponse({
    required this.className,
    required this.name,
    required this.testSuiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'className': className,
      'name': name,
      'testSuiteName': testSuiteName,
    };
  }

  factory TestCaseReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TestCaseReferenceResponse(
      className: pulumi.Input.fromValue(map['className'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      testSuiteName: pulumi.Input.fromValue(map['testSuiteName'] as String),
    );
  }
}

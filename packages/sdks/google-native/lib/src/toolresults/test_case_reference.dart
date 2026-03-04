// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a test case. Test case references are canonically ordered lexicographically by these three factors: * First, by test_suite_name. * Second, by class_name. * Third, by name.
class TestCaseReference {
  /// The name of the class.
  final pulumi.Input<String>? className;

  /// The name of the test case. Required.
  final pulumi.Input<String>? name;

  /// The name of the test suite to which this test case belongs.
  final pulumi.Input<String>? testSuiteName;

  /// Creates a new [TestCaseReference].
  /// [className] The name of the class.
  /// [name] The name of the test case. Required.
  /// [testSuiteName] The name of the test suite to which this test case belongs.
  TestCaseReference({this.className, this.name, this.testSuiteName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'className': ?className,
      'name': ?name,
      'testSuiteName': ?testSuiteName,
    };
  }

  factory TestCaseReference.fromMap(Map<String, dynamic> map) {
    return TestCaseReference(
      className: (() {
        final guardedValue = map['className'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      testSuiteName: (() {
        final guardedValue = map['testSuiteName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

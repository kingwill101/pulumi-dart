// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_test.dart';
import 'ios_test.dart';

/// The details about how to run the execution.
class Specification {
  /// An Android mobile test execution specification.
  final pulumi.Input<AndroidTest>? androidTest;
  /// An iOS mobile test execution specification.
  final pulumi.Input<IosTest>? iosTest;

  /// Creates a new [Specification].
  /// [androidTest] An Android mobile test execution specification.
  /// [iosTest] An iOS mobile test execution specification.
  Specification({
    this.androidTest,
    this.iosTest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'androidTest': ?pulumi.Input.mapOptionalInputValue<AndroidTest, Map<String, dynamic>>(androidTest, (value) => value.toMap()),
      'iosTest': ?pulumi.Input.mapOptionalInputValue<IosTest, Map<String, dynamic>>(iosTest, (value) => value.toMap()),
    };
  }

  factory Specification.fromMap(Map<String, dynamic> map) {
    return Specification(
      androidTest: map['androidTest'] == null ? null : (AndroidTest.fromMap((map['androidTest']! as Map).cast<String, dynamic>())).input(),
      iosTest: map['iosTest'] == null ? null : (IosTest.fromMap((map['iosTest']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


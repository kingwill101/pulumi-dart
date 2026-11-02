// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectBuildImageAutoUpgrade {
  /// The retired build image major version the project is set to.
  final pulumi.Input<int?>? fromVersion;
  /// The build image major version the project's builds run on.
  final pulumi.Input<int?>? toVersion;

  /// Creates a new [PagesProjectBuildImageAutoUpgrade].
  /// [fromVersion] The retired build image major version the project is set to.
  /// [toVersion] The build image major version the project's builds run on.
  const PagesProjectBuildImageAutoUpgrade({
    this.fromVersion,
    this.toVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromVersion': ?fromVersion,
      'toVersion': ?toVersion,
    };
  }

  factory PagesProjectBuildImageAutoUpgrade.fromMap(Map<String, dynamic> map) {
    return PagesProjectBuildImageAutoUpgrade(
      fromVersion: (() { final guardedValue = map['fromVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      toVersion: (() { final guardedValue = map['toVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

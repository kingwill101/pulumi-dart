// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultBuildImageAutoUpgrade {
  /// The retired build image major version the project is set to.
  final pulumi.Input<int> fromVersion;
  /// The build image major version the project's builds run on.
  final pulumi.Input<int> toVersion;

  /// Creates a new [GetPagesProjectsResultBuildImageAutoUpgrade].
  /// [fromVersion] The retired build image major version the project is set to.
  /// [toVersion] The build image major version the project's builds run on.
  const GetPagesProjectsResultBuildImageAutoUpgrade({
    required this.fromVersion,
    required this.toVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromVersion': fromVersion,
      'toVersion': toVersion,
    };
  }

  factory GetPagesProjectsResultBuildImageAutoUpgrade.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultBuildImageAutoUpgrade(
      fromVersion: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['fromVersion'])),
      toVersion: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['toVersion'])),
    );
  }
}

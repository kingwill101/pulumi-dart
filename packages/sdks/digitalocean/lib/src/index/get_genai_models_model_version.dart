// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiModelsModelVersion {
  /// Major version of the model
  final pulumi.Input<int> major;
  /// Minor version of the model
  final pulumi.Input<int> minor;
  /// Patch version of the model
  final pulumi.Input<int> patch;

  /// Creates a new [GetGenaiModelsModelVersion].
  /// [major] Major version of the model
  /// [minor] Minor version of the model
  /// [patch] Patch version of the model
  const GetGenaiModelsModelVersion({
    required this.major,
    required this.minor,
    required this.patch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'major': major,
      'minor': minor,
      'patch': patch,
    };
  }

  factory GetGenaiModelsModelVersion.fromMap(Map<String, dynamic> map) {
    return GetGenaiModelsModelVersion(
      major: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['major'])),
      minor: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minor'])),
      patch: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['patch'])),
    );
  }
}

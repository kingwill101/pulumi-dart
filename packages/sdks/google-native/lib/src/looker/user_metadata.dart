// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata about users for a Looker instance.
class UserMetadata {
  /// Optional. The number of additional developer users the instance owner has purchased.
  final pulumi.Input<int?>? additionalDeveloperUserCount;
  /// Optional. The number of additional standard users the instance owner has purchased.
  final pulumi.Input<int?>? additionalStandardUserCount;
  /// Optional. The number of additional viewer users the instance owner has purchased.
  final pulumi.Input<int?>? additionalViewerUserCount;

  /// Creates a new [UserMetadata].
  /// [additionalDeveloperUserCount] Optional. The number of additional developer users the instance owner has purchased.
  /// [additionalStandardUserCount] Optional. The number of additional standard users the instance owner has purchased.
  /// [additionalViewerUserCount] Optional. The number of additional viewer users the instance owner has purchased.
  const UserMetadata({
    this.additionalDeveloperUserCount,
    this.additionalStandardUserCount,
    this.additionalViewerUserCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDeveloperUserCount': ?additionalDeveloperUserCount,
      'additionalStandardUserCount': ?additionalStandardUserCount,
      'additionalViewerUserCount': ?additionalViewerUserCount,
    };
  }

  factory UserMetadata.fromMap(Map<String, dynamic> map) {
    return UserMetadata(
      additionalDeveloperUserCount: (() { final guardedValue = map['additionalDeveloperUserCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      additionalStandardUserCount: (() { final guardedValue = map['additionalStandardUserCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      additionalViewerUserCount: (() { final guardedValue = map['additionalViewerUserCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

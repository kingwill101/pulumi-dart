// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata about users for a Looker instance.
class UserMetadataResponse {
  /// Optional. The number of additional developer users the instance owner has purchased.
  final pulumi.Input<int> additionalDeveloperUserCount;
  /// Optional. The number of additional standard users the instance owner has purchased.
  final pulumi.Input<int> additionalStandardUserCount;
  /// Optional. The number of additional viewer users the instance owner has purchased.
  final pulumi.Input<int> additionalViewerUserCount;

  /// Creates a new [UserMetadataResponse].
  /// [additionalDeveloperUserCount] Optional. The number of additional developer users the instance owner has purchased.
  /// [additionalStandardUserCount] Optional. The number of additional standard users the instance owner has purchased.
  /// [additionalViewerUserCount] Optional. The number of additional viewer users the instance owner has purchased.
  const UserMetadataResponse({
    required this.additionalDeveloperUserCount,
    required this.additionalStandardUserCount,
    required this.additionalViewerUserCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDeveloperUserCount': additionalDeveloperUserCount,
      'additionalStandardUserCount': additionalStandardUserCount,
      'additionalViewerUserCount': additionalViewerUserCount,
    };
  }

  factory UserMetadataResponse.fromMap(Map<String, dynamic> map) {
    return UserMetadataResponse(
      additionalDeveloperUserCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['additionalDeveloperUserCount'])),
      additionalStandardUserCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['additionalStandardUserCount'])),
      additionalViewerUserCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['additionalViewerUserCount'])),
    );
  }
}

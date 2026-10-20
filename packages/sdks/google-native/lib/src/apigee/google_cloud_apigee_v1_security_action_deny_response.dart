// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message that should be set in case of a Deny Action.
class GoogleCloudApigeeV1SecurityActionDenyResponse {
  /// Optional. The HTTP response code if the Action = DENY.
  final pulumi.Input<int> responseCode;

  /// Creates a new [GoogleCloudApigeeV1SecurityActionDenyResponse].
  /// [responseCode] Optional. The HTTP response code if the Action = DENY.
  const GoogleCloudApigeeV1SecurityActionDenyResponse({
    required this.responseCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseCode': responseCode,
    };
  }

  factory GoogleCloudApigeeV1SecurityActionDenyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityActionDenyResponse(
      responseCode: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['responseCode'])),
    );
  }
}

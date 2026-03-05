// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Security policy status of the asset. Data security policy, i.e., readers, writers & owners, should be specified in the lake/zone/asset IAM policy.
class GoogleCloudDataplexV1AssetSecurityStatusResponse {
  /// Additional information about the current state.
  final pulumi.Input<String> message;
  /// The current state of the security policy applied to the attached resource.
  final pulumi.Input<String> state;
  /// Last update time of the status.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudDataplexV1AssetSecurityStatusResponse].
  /// [message] Additional information about the current state.
  /// [state] The current state of the security policy applied to the attached resource.
  /// [updateTime] Last update time of the status.
  GoogleCloudDataplexV1AssetSecurityStatusResponse({
    required this.message,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudDataplexV1AssetSecurityStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetSecurityStatusResponse(
      message: pulumi.Input.fromValue(map['message'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}


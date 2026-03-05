// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the resource referenced by an asset.
class GoogleCloudDataplexV1AssetResourceStatusResponse {
  /// Service account associated with the BigQuery Connection.
  final pulumi.Input<String> managedAccessIdentity;
  /// Additional information about the current state.
  final pulumi.Input<String> message;
  /// The current state of the managed resource.
  final pulumi.Input<String> state;
  /// Last update time of the status.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GoogleCloudDataplexV1AssetResourceStatusResponse].
  /// [managedAccessIdentity] Service account associated with the BigQuery Connection.
  /// [message] Additional information about the current state.
  /// [state] The current state of the managed resource.
  /// [updateTime] Last update time of the status.
  GoogleCloudDataplexV1AssetResourceStatusResponse({
    required this.managedAccessIdentity,
    required this.message,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedAccessIdentity': managedAccessIdentity,
      'message': message,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudDataplexV1AssetResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetResourceStatusResponse(
      managedAccessIdentity: pulumi.Input.fromValue(map['managedAccessIdentity'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}


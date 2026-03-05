// ignore_for_file: unused_element, unnecessary_cast

import 'error_response.dart';
import 'vpc_peering_config_response.dart';

/// Result data returned by getPrivateConnection.
class GetPrivateConnectionResult {
  /// The create time of the resource.
  final String createTime;
  /// Display name.
  final String displayName;
  /// In case of error, the details of the error in a user-friendly format.
  final ErrorResponse error;
  /// Labels.
  final Map<String, String> labels;
  /// The resource's name.
  final String name;
  /// The state of the Private Connection.
  final String state;
  /// The update time of the resource.
  final String updateTime;
  /// VPC Peering Config.
  final VpcPeeringConfigResponse vpcPeeringConfig;

  /// Creates a new [GetPrivateConnectionResult].
  /// [createTime] The create time of the resource.
  /// [displayName] Display name.
  /// [error] In case of error, the details of the error in a user-friendly format.
  /// [labels] Labels.
  /// [name] The resource's name.
  /// [state] The state of the Private Connection.
  /// [updateTime] The update time of the resource.
  /// [vpcPeeringConfig] VPC Peering Config.
  GetPrivateConnectionResult({
    required this.createTime,
    required this.displayName,
    required this.error,
    required this.labels,
    required this.name,
    required this.state,
    required this.updateTime,
    required this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'error': error.toMap(),
      'labels': labels,
      'name': name,
      'state': state,
      'updateTime': updateTime,
      'vpcPeeringConfig': vpcPeeringConfig.toMap(),
    };
  }

  factory GetPrivateConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionResult(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      error: ErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      vpcPeeringConfig: VpcPeeringConfigResponse.fromMap((map['vpcPeeringConfig']! as Map).cast<String, dynamic>()),
    );
  }
}


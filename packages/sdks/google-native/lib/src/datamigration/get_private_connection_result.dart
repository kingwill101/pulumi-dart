// ignore_for_file: unused_element, unnecessary_cast

import 'status_response.dart';
import 'vpc_peering_config_response.dart';

/// Result data returned by getPrivateConnection.
class GetPrivateConnectionResult {
  /// The create time of the resource.
  final String? createTime;
  /// The private connection display name.
  final String? displayName;
  /// The error details in case of state FAILED.
  final StatusResponse? error;
  /// The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final Map<String, String>? labels;
  /// The name of the resource.
  final String? name;
  /// The state of the private connection.
  final String? state;
  /// The last update time of the resource.
  final String? updateTime;
  /// VPC peering configuration.
  final VpcPeeringConfigResponse? vpcPeeringConfig;

  /// Creates a new [GetPrivateConnectionResult].
  /// [createTime] The create time of the resource.
  /// [displayName] The private connection display name.
  /// [error] The error details in case of state FAILED.
  /// [labels] The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  /// [name] The name of the resource.
  /// [state] The state of the private connection.
  /// [updateTime] The last update time of the resource.
  /// [vpcPeeringConfig] VPC peering configuration.
  const GetPrivateConnectionResult({
    this.createTime,
    this.displayName,
    this.error,
    this.labels,
    this.name,
    this.state,
    this.updateTime,
    this.vpcPeeringConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'error': ?error?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'updateTime': ?updateTime,
      'vpcPeeringConfig': ?vpcPeeringConfig?.toMap(),
    };
  }

  factory GetPrivateConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcPeeringConfig: (() { final guardedValue = map['vpcPeeringConfig']; if (guardedValue == null) return null; return VpcPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

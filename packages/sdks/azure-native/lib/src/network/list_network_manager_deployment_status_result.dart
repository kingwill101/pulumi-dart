// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_deployment_status_response.dart';

/// Result data returned by listNetworkManagerDeploymentStatus.
class ListNetworkManagerDeploymentStatusResult {
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final String? skipToken;
  /// Gets a page of Network Manager Deployment Status
  final List<NetworkManagerDeploymentStatusResponse>? value;

  /// Creates a new [ListNetworkManagerDeploymentStatusResult].
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  /// [value] Gets a page of Network Manager Deployment Status
  const ListNetworkManagerDeploymentStatusResult({
    this.skipToken,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'skipToken': ?skipToken,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkManagerDeploymentStatusResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListNetworkManagerDeploymentStatusResult.fromMap(Map<String, dynamic> map) {
    return ListNetworkManagerDeploymentStatusResult(
      skipToken: (() { final guardedValue = map['skipToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkManagerDeploymentStatusResponse>(guardedValue, (value) => NetworkManagerDeploymentStatusResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

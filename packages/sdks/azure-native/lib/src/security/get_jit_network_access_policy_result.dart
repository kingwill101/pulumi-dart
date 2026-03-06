// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_policy_virtual_machine_response.dart';
import 'jit_network_access_request_response.dart';

/// Result data returned by getJitNetworkAccessPolicy.
class GetJitNetworkAccessPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Kind of the resource
  final String? kind;
  /// Location where the resource is stored
  final String location;
  /// Resource name
  final String name;
  /// Gets the provisioning state of the Just-in-Time policy.
  final String provisioningState;
  final List<JitNetworkAccessRequestResponse>? requests;
  /// Resource type
  final String type;
  /// Configurations for Microsoft.Compute/virtualMachines resource type.
  final List<JitNetworkAccessPolicyVirtualMachineResponse> virtualMachines;

  /// Creates a new [GetJitNetworkAccessPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [kind] Kind of the resource
  /// [location] Location where the resource is stored
  /// [name] Resource name
  /// [provisioningState] Gets the provisioning state of the Just-in-Time policy.
  /// [requests] Optional.
  /// [type] Resource type
  /// [virtualMachines] Configurations for Microsoft.Compute/virtualMachines resource type.
  const GetJitNetworkAccessPolicyResult({
    required this.azureApiVersion,
    required this.id,
    this.kind,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.requests,
    required this.type,
    required this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': ?kind,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'requests': ?(() { final guardedValue = requests; if (guardedValue == null) return null; return pulumi.Input.encodeList<JitNetworkAccessRequestResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
      'virtualMachines': pulumi.Input.encodeList<JitNetworkAccessPolicyVirtualMachineResponse, Map<String, dynamic>>(virtualMachines, (value) => value.toMap()),
    };
  }

  factory GetJitNetworkAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetJitNetworkAccessPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<JitNetworkAccessRequestResponse>(guardedValue, (value) => JitNetworkAccessRequestResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
      virtualMachines: pulumi.Input.decodeList<JitNetworkAccessPolicyVirtualMachineResponse>(map['virtualMachines']!, (value) => JitNetworkAccessPolicyVirtualMachineResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


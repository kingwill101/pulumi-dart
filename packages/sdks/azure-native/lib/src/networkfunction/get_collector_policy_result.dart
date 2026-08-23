// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'emission_policies_properties_format_response.dart';
import 'ingestion_policy_properties_format_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCollectorPolicy.
class GetCollectorPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Emission policies.
  final List<EmissionPoliciesPropertiesFormatResponse>? emissionPolicies;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Ingestion policies.
  final IngestionPolicyPropertiesFormatResponse? ingestionPolicy;
  /// Resource location.
  final String location;
  /// The name of the resource
  final String name;
  /// The provisioning state.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCollectorPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [emissionPolicies] Emission policies.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [ingestionPolicy] Ingestion policies.
  /// [location] Resource location.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCollectorPolicyResult({
    required this.azureApiVersion,
    this.emissionPolicies,
    required this.etag,
    required this.id,
    this.ingestionPolicy,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'emissionPolicies': ?(() { final guardedValue = emissionPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<EmissionPoliciesPropertiesFormatResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': etag,
      'id': id,
      'ingestionPolicy': ?ingestionPolicy?.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetCollectorPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetCollectorPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      emissionPolicies: (() { final guardedValue = map['emissionPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmissionPoliciesPropertiesFormatResponse>(guardedValue, (value) => EmissionPoliciesPropertiesFormatResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      ingestionPolicy: (() { final guardedValue = map['ingestionPolicy']; if (guardedValue == null) return null; return IngestionPolicyPropertiesFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

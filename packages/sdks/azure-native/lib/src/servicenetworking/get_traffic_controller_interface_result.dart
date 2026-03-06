// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id_response.dart';
import 'security_policy_configurations_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTrafficControllerInterface.
class GetTrafficControllerInterfaceResult {
  /// Associations References List
  final List<ResourceIdResponse> associations;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration Endpoints.
  final List<String> configurationEndpoints;
  /// Frontends References List
  final List<ResourceIdResponse> frontends;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Security Policies References List
  final List<ResourceIdResponse> securityPolicies;
  /// Security Policy Configuration
  final SecurityPolicyConfigurationsResponse? securityPolicyConfigurations;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetTrafficControllerInterfaceResult].
  /// [associations] Associations References List
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationEndpoints] Configuration Endpoints.
  /// [frontends] Frontends References List
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [securityPolicies] Security Policies References List
  /// [securityPolicyConfigurations] Security Policy Configuration
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetTrafficControllerInterfaceResult({
    required this.associations,
    required this.azureApiVersion,
    required this.configurationEndpoints,
    required this.frontends,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.securityPolicies,
    this.securityPolicyConfigurations,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(associations, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'configurationEndpoints': configurationEndpoints,
      'frontends': pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(frontends, (value) => value.toMap()),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'securityPolicies': pulumi.Input.encodeList<ResourceIdResponse, Map<String, dynamic>>(securityPolicies, (value) => value.toMap()),
      'securityPolicyConfigurations': ?securityPolicyConfigurations?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetTrafficControllerInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficControllerInterfaceResult(
      associations: pulumi.Input.decodeList<ResourceIdResponse>(map['associations']!, (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      configurationEndpoints: (map['configurationEndpoints'] as List).cast<String>(),
      frontends: pulumi.Input.decodeList<ResourceIdResponse>(map['frontends']!, (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      securityPolicies: pulumi.Input.decodeList<ResourceIdResponse>(map['securityPolicies']!, (value) => ResourceIdResponse.fromMap((value as Map).cast<String, dynamic>())),
      securityPolicyConfigurations: (() { final guardedValue = map['securityPolicyConfigurations']; if (guardedValue == null) return null; return SecurityPolicyConfigurationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}


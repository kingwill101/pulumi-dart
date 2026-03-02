// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSecurityAdminConfiguration.
class GetSecurityAdminConfigurationResult {
  /// Enum list of network intent policy based services.
  final List<String>? applyOnNetworkIntentPolicyBasedServices;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description of the security configuration.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Determine update behavior for changes to network groups referenced within the rules in this configuration.
  final String? networkGroupAddressSpaceAggregationOption;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Unique identifier for this resource.
  final String resourceGuid;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

  /// Creates a new [GetSecurityAdminConfigurationResult].
  /// [applyOnNetworkIntentPolicyBasedServices] Enum list of network intent policy based services.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description of the security configuration.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [networkGroupAddressSpaceAggregationOption] Determine update behavior for changes to network groups referenced within the rules in this configuration.
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  GetSecurityAdminConfigurationResult({
    this.applyOnNetworkIntentPolicyBasedServices,
    required this.azureApiVersion,
    this.description,
    required this.etag,
    required this.id,
    required this.name,
    this.networkGroupAddressSpaceAggregationOption,
    required this.provisioningState,
    required this.resourceGuid,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOnNetworkIntentPolicyBasedServices': ?applyOnNetworkIntentPolicyBasedServices,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': etag,
      'id': id,
      'name': name,
      'networkGroupAddressSpaceAggregationOption': ?networkGroupAddressSpaceAggregationOption,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSecurityAdminConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityAdminConfigurationResult(
      applyOnNetworkIntentPolicyBasedServices: map['applyOnNetworkIntentPolicyBasedServices'] == null ? null : (map['applyOnNetworkIntentPolicyBasedServices']! as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      networkGroupAddressSpaceAggregationOption: map['networkGroupAddressSpaceAggregationOption'] == null ? null : map['networkGroupAddressSpaceAggregationOption']! as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


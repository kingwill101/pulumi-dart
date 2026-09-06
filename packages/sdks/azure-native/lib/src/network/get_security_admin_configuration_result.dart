// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSecurityAdminConfiguration.
class GetSecurityAdminConfigurationResult {
  /// Enum list of network intent policy based services.
  final List<String>? applyOnNetworkIntentPolicyBasedServices;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A description of the security configuration.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Determine update behavior for changes to network groups referenced within the rules in this configuration.
  final String? networkGroupAddressSpaceAggregationOption;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Unique identifier for this resource.
  final String? resourceGuid;
  /// The system metadata related to this resource.
  final SystemDataResponse? systemData;
  /// Resource type.
  final String? type;

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
  const GetSecurityAdminConfigurationResult({
    this.applyOnNetworkIntentPolicyBasedServices,
    this.azureApiVersion,
    this.description,
    this.etag,
    this.id,
    this.name,
    this.networkGroupAddressSpaceAggregationOption,
    this.provisioningState,
    this.resourceGuid,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOnNetworkIntentPolicyBasedServices': ?applyOnNetworkIntentPolicyBasedServices,
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'networkGroupAddressSpaceAggregationOption': ?networkGroupAddressSpaceAggregationOption,
      'provisioningState': ?provisioningState,
      'resourceGuid': ?resourceGuid,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSecurityAdminConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityAdminConfigurationResult(
      applyOnNetworkIntentPolicyBasedServices: (() { final guardedValue = map['applyOnNetworkIntentPolicyBasedServices']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkGroupAddressSpaceAggregationOption: (() { final guardedValue = map['networkGroupAddressSpaceAggregationOption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

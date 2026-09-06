// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_policy_identity_response.dart';
import 'properties_encryption_response.dart';
import 'properties_lockbox_response.dart';
import 'properties_network_injection_response.dart';
import 'system_data_response.dart';

/// Result data returned by getEnterprisePolicy.
class GetEnterprisePolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The encryption settings for a configuration store.
  final PropertiesEncryptionResponse? encryption;
  /// The health status of the resource.
  final String? healthStatus;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The identity of the EnterprisePolicy.
  final EnterprisePolicyIdentityResponse? identity;
  /// The kind (type) of Enterprise Policy.
  final String? kind;
  /// The geo-location where the resource lives
  final String? location;
  /// Settings concerning lockbox.
  final PropertiesLockboxResponse? lockbox;
  /// The name of the resource
  final String? name;
  /// Settings concerning network injection.
  final PropertiesNetworkInjectionResponse? networkInjection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The internally assigned unique identifier of the resource.
  final String? systemId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetEnterprisePolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [encryption] The encryption settings for a configuration store.
  /// [healthStatus] The health status of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the EnterprisePolicy.
  /// [kind] The kind (type) of Enterprise Policy.
  /// [location] The geo-location where the resource lives
  /// [lockbox] Settings concerning lockbox.
  /// [name] The name of the resource
  /// [networkInjection] Settings concerning network injection.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [systemId] The internally assigned unique identifier of the resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetEnterprisePolicyResult({
    this.azureApiVersion,
    this.encryption,
    this.healthStatus,
    this.id,
    this.identity,
    this.kind,
    this.location,
    this.lockbox,
    this.name,
    this.networkInjection,
    this.systemData,
    this.systemId,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'encryption': ?encryption?.toMap(),
      'healthStatus': ?healthStatus,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'location': ?location,
      'lockbox': ?lockbox?.toMap(),
      'name': ?name,
      'networkInjection': ?networkInjection?.toMap(),
      'systemData': ?systemData?.toMap(),
      'systemId': ?systemId,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetEnterprisePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetEnterprisePolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return PropertiesEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      healthStatus: (() { final guardedValue = map['healthStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return EnterprisePolicyIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lockbox: (() { final guardedValue = map['lockbox']; if (guardedValue == null) return null; return PropertiesLockboxResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInjection: (() { final guardedValue = map['networkInjection']; if (guardedValue == null) return null; return PropertiesNetworkInjectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemId: (() { final guardedValue = map['systemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

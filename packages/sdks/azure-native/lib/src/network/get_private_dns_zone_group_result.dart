// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_dns_zone_config_response.dart';

/// Result data returned by getPrivateDnsZoneGroup.
class GetPrivateDnsZoneGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// A collection of private dns zone configurations of the private dns zone group.
  final List<PrivateDnsZoneConfigResponse>? privateDnsZoneConfigs;
  /// The provisioning state of the private dns zone group resource.
  final String provisioningState;

  /// Creates a new [GetPrivateDnsZoneGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateDnsZoneConfigs] A collection of private dns zone configurations of the private dns zone group.
  /// [provisioningState] The provisioning state of the private dns zone group resource.
  const GetPrivateDnsZoneGroupResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.name,
    this.privateDnsZoneConfigs,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'privateDnsZoneConfigs': ?(() { final guardedValue = privateDnsZoneConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateDnsZoneConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': provisioningState,
    };
  }

  factory GetPrivateDnsZoneGroupResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateDnsZoneGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsZoneConfigs: (() { final guardedValue = map['privateDnsZoneConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateDnsZoneConfigResponse>(guardedValue, (value) => PrivateDnsZoneConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: map['provisioningState'] as String,
    );
  }
}


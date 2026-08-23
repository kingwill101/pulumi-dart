// ignore_for_file: unused_element, unnecessary_cast

import 'office365_policy_properties_response.dart';

/// Result data returned by getVirtualApplianceSite.
class GetVirtualApplianceSiteResult {
  /// Address Prefix.
  final String? addressPrefix;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the virtual appliance site.
  final String? name;
  /// Office 365 Policy.
  final Office365PolicyPropertiesResponse? o365Policy;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Site type.
  final String type;

  /// Creates a new [GetVirtualApplianceSiteResult].
  /// [addressPrefix] Address Prefix.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the virtual appliance site.
  /// [o365Policy] Office 365 Policy.
  /// [provisioningState] The provisioning state of the resource.
  /// [type] Site type.
  const GetVirtualApplianceSiteResult({
    this.addressPrefix,
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.name,
    this.o365Policy,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'o365Policy': ?o365Policy?.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory GetVirtualApplianceSiteResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualApplianceSiteResult(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      o365Policy: (() { final guardedValue = map['o365Policy']; if (guardedValue == null) return null; return Office365PolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

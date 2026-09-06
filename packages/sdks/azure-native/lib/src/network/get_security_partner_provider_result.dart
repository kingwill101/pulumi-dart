// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Result data returned by getSecurityPartnerProvider.
class GetSecurityPartnerProviderResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The connection status with the Security Partner Provider.
  final String? connectionStatus;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The provisioning state of the Security Partner Provider resource.
  final String? provisioningState;
  /// The security provider name.
  final String? securityProviderName;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// The virtualHub to which the Security Partner Provider belongs.
  final SubResourceResponse? virtualHub;

  /// Creates a new [GetSecurityPartnerProviderResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [connectionStatus] The connection status with the Security Partner Provider.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the Security Partner Provider resource.
  /// [securityProviderName] The security provider name.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [virtualHub] The virtualHub to which the Security Partner Provider belongs.
  const GetSecurityPartnerProviderResult({
    this.azureApiVersion,
    this.connectionStatus,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.securityProviderName,
    this.tags,
    this.type,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'connectionStatus': ?connectionStatus,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'securityProviderName': ?securityProviderName,
      'tags': ?tags,
      'type': ?type,
      'virtualHub': ?virtualHub?.toMap(),
    };
  }

  factory GetSecurityPartnerProviderResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityPartnerProviderResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionStatus: (() { final guardedValue = map['connectionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityProviderName: (() { final guardedValue = map['securityProviderName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualHub: (() { final guardedValue = map['virtualHub']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

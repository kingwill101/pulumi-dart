// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Result data returned by getSecurityPartnerProvider.
class GetSecurityPartnerProviderResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The connection status with the Security Partner Provider.
  final String connectionStatus;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The provisioning state of the Security Partner Provider resource.
  final String provisioningState;
  /// The security provider name.
  final String? securityProviderName;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
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
  GetSecurityPartnerProviderResult({
    required this.azureApiVersion,
    required this.connectionStatus,
    required this.etag,
    this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    this.securityProviderName,
    this.tags,
    required this.type,
    this.virtualHub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'connectionStatus': connectionStatus,
      'etag': etag,
      'id': ?id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'securityProviderName': ?securityProviderName,
      'tags': ?tags,
      'type': type,
      'virtualHub': ?virtualHub == null ? null : virtualHub!.toMap(),
    };
  }

  factory GetSecurityPartnerProviderResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityPartnerProviderResult(
      azureApiVersion: map['azureApiVersion'] as String,
      connectionStatus: map['connectionStatus'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      securityProviderName: map['securityProviderName'] == null ? null : map['securityProviderName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualHub: map['virtualHub'] == null ? null : SubResourceResponse.fromMap((map['virtualHub'] as Map).cast<String, dynamic>()),
    );
  }
}


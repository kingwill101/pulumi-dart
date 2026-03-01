// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Result data returned by getNetworkSecurityPerimeterAssociation.
class GetNetworkSecurityPerimeterAssociationResult {
  /// Access mode on the association.
  final String? accessMode;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies if there are provisioning issues
  final String hasProvisioningIssues;
  /// Resource ID.
  final String id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The PaaS resource to be associated.
  final SubResourceResponse? privateLinkResource;
  /// Profile id to which the PaaS resource is associated.
  final SubResourceResponse? profile;
  /// The provisioning state of the resource  association resource.
  final String provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetNetworkSecurityPerimeterAssociationResult].
  /// [accessMode] Access mode on the association.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hasProvisioningIssues] Specifies if there are provisioning issues
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [privateLinkResource] The PaaS resource to be associated.
  /// [profile] Profile id to which the PaaS resource is associated.
  /// [provisioningState] The provisioning state of the resource  association resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetNetworkSecurityPerimeterAssociationResult({
    this.accessMode,
    required this.azureApiVersion,
    required this.hasProvisioningIssues,
    required this.id,
    this.location,
    required this.name,
    this.privateLinkResource,
    this.profile,
    required this.provisioningState,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'azureApiVersion': azureApiVersion,
      'hasProvisioningIssues': hasProvisioningIssues,
      'id': id,
      'location': ?location,
      'name': name,
      'privateLinkResource': ?privateLinkResource == null ? null : privateLinkResource!.toMap(),
      'profile': ?profile == null ? null : profile!.toMap(),
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNetworkSecurityPerimeterAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterAssociationResult(
      accessMode: map['accessMode'] == null ? null : map['accessMode'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      hasProvisioningIssues: map['hasProvisioningIssues'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      privateLinkResource: map['privateLinkResource'] == null ? null : SubResourceResponse.fromMap((map['privateLinkResource'] as Map).cast<String, dynamic>()),
      profile: map['profile'] == null ? null : SubResourceResponse.fromMap((map['profile'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}


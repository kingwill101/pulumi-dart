// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Result data returned by getNspAssociation.
class GetNspAssociationResult {
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

  /// Creates a new [GetNspAssociationResult].
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
  GetNspAssociationResult({
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
      'privateLinkResource': ?privateLinkResource?.toMap(),
      'profile': ?profile?.toMap(),
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNspAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetNspAssociationResult(
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      hasProvisioningIssues: map['hasProvisioningIssues'] as String,
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      privateLinkResource: (() { final guardedValue = map['privateLinkResource']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}


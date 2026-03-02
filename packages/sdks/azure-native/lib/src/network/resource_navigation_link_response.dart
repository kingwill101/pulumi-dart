// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceNavigationLink resource.
class ResourceNavigationLinkResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String> id;
  /// Link to the external resource.
  final pulumi.Input<String>? link;
  /// Resource type of the linked resource.
  final pulumi.Input<String>? linkedResourceType;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the resource navigation link resource.
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [ResourceNavigationLinkResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [link] Link to the external resource.
  /// [linkedResourceType] Resource type of the linked resource.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the resource navigation link resource.
  /// [type] Resource type.
  ResourceNavigationLinkResponse({
    required this.etag,
    required this.id,
    this.link,
    this.linkedResourceType,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'link': ?link,
      'linkedResourceType': ?linkedResourceType,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ResourceNavigationLinkResponse.fromMap(Map<String, dynamic> map) {
    return ResourceNavigationLinkResponse(
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      link: map['link'] == null ? null : (map['link'] as String).input(),
      linkedResourceType: map['linkedResourceType'] == null ? null : (map['linkedResourceType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}


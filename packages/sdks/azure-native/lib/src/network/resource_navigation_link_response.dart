// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceNavigationLink resource.
class ResourceNavigationLinkResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String> id;
  /// Link to the external resource.
  final pulumi.Input<String?>? link;
  /// Resource type of the linked resource.
  final pulumi.Input<String?>? linkedResourceType;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
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
  const ResourceNavigationLinkResponse({
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
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      link: (() { final guardedValue = map['link']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedResourceType: (() { final guardedValue = map['linkedResourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

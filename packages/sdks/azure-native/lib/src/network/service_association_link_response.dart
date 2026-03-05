// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceAssociationLink resource.
class ServiceAssociationLinkResponse {
  /// If true, the resource can be deleted.
  final pulumi.Input<bool>? allowDelete;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Link to the external resource.
  final pulumi.Input<String>? link;
  /// Resource type of the linked resource.
  final pulumi.Input<String>? linkedResourceType;
  /// A list of locations.
  final pulumi.Input<List<String>>? locations;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the service association link resource.
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceAssociationLinkResponse].
  /// [allowDelete] If true, the resource can be deleted.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [link] Link to the external resource.
  /// [linkedResourceType] Resource type of the linked resource.
  /// [locations] A list of locations.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the service association link resource.
  /// [type] Resource type.
  ServiceAssociationLinkResponse({
    this.allowDelete,
    required this.etag,
    this.id,
    this.link,
    this.linkedResourceType,
    this.locations,
    this.name,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDelete': ?allowDelete,
      'etag': etag,
      'id': ?id,
      'link': ?link,
      'linkedResourceType': ?linkedResourceType,
      'locations': ?locations,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ServiceAssociationLinkResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAssociationLinkResponse(
      allowDelete: (() { final guardedValue = map['allowDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      link: (() { final guardedValue = map['link']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedResourceType: (() { final guardedValue = map['linkedResourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


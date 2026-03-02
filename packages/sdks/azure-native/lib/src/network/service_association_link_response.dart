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
      allowDelete: map['allowDelete'] == null ? null : (map['allowDelete'] as bool).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      link: map['link'] == null ? null : (map['link'] as String).input(),
      linkedResourceType: map['linkedResourceType'] == null ? null : (map['linkedResourceType'] as String).input(),
      locations: map['locations'] == null ? null : ((map['locations'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}


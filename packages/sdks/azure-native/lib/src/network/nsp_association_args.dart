// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_network_nsp_association_args_doc}
/// The set of arguments for NspAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_nsp_association_args_doc}
class NspAssociationArgs {
  /// Access mode on the association.
  final pulumi.Input<String>? accessMode;
  /// The name of the NSP association.
  final pulumi.Input<String>? associationName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The PaaS resource to be associated.
  final pulumi.Input<SubResource>? privateLinkResource;
  /// Profile id to which the PaaS resource is associated.
  final pulumi.Input<SubResource>? profile;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NspAssociationArgs].
  /// [accessMode] Access mode on the association.
  /// [associationName] The name of the NSP association.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [privateLinkResource] The PaaS resource to be associated.
  /// [profile] Profile id to which the PaaS resource is associated.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  NspAssociationArgs({
    pulumi.Output<String>? accessMode,
    pulumi.Output<String>? associationName,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkSecurityPerimeterName,
    pulumi.Output<SubResource>? privateLinkResource,
    pulumi.Output<SubResource>? profile,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessMode = pulumi.Input.asOptionalInput<String>(accessMode),
      associationName = pulumi.Input.asOptionalInput<String>(associationName),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSecurityPerimeterName = pulumi.Input.asInput<String>(networkSecurityPerimeterName),
      privateLinkResource = pulumi.Input.asOptionalInput<SubResource>(privateLinkResource),
      profile = pulumi.Input.asOptionalInput<SubResource>(profile),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'associationName': ?associationName,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'privateLinkResource': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(privateLinkResource, (value) => value.toMap()),
      'profile': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(profile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NspAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NspAssociationArgs(
      accessMode: map['accessMode'] == null ? null : pulumi.Output.create<String>(map['accessMode'] as String),
      associationName: map['associationName'] == null ? null : pulumi.Output.create<String>(map['associationName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkSecurityPerimeterName: pulumi.Output.create<String>(map['networkSecurityPerimeterName'] as String),
      privateLinkResource: map['privateLinkResource'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['privateLinkResource'] as Map).cast<String, dynamic>())),
      profile: map['profile'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['profile'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


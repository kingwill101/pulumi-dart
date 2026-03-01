// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_member_relationship_properties.dart';

/// {@template pulumi_relationships_service_group_member_relationship_args_doc}
/// The set of arguments for ServiceGroupMemberRelationship.
/// {@endtemplate}
/// {@macro pulumi_relationships_service_group_member_relationship_args_doc}
class ServiceGroupMemberRelationshipArgs {
  /// Name of ServiceGroupMember relationship.
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ServiceGroupMemberRelationshipProperties>? properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [ServiceGroupMemberRelationshipArgs].
  /// [name] Name of ServiceGroupMember relationship.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  ServiceGroupMemberRelationshipArgs({
    pulumi.Output<String>? name,
    pulumi.Output<ServiceGroupMemberRelationshipProperties>? properties,
    required pulumi.Output<String> resourceUri,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<ServiceGroupMemberRelationshipProperties>(properties),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<ServiceGroupMemberRelationshipProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory ServiceGroupMemberRelationshipArgs.fromMap(Map<String, dynamic> map) {
    return ServiceGroupMemberRelationshipArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ServiceGroupMemberRelationshipProperties>(ServiceGroupMemberRelationshipProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}


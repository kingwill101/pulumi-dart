// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relationships_get_service_group_member_relationship_args_doc}
/// Arguments for getServiceGroupMemberRelationship.
/// {@endtemplate}
/// {@macro pulumi_relationships_get_service_group_member_relationship_args_doc}
class GetServiceGroupMemberRelationshipArgs {
  /// Name of ServiceGroupMember relationship.
  final pulumi.Input<String> name;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetServiceGroupMemberRelationshipArgs].
  /// [name] Name of ServiceGroupMember relationship.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetServiceGroupMemberRelationshipArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceUri,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceUri': resourceUri,
    };
  }

  factory GetServiceGroupMemberRelationshipArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceGroupMemberRelationshipArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}


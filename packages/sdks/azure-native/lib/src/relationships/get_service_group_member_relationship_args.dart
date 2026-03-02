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
    required this.name,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceUri': resourceUri,
    };
  }

  factory GetServiceGroupMemberRelationshipArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceGroupMemberRelationshipArgs(
      name: (map['name'] as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
    );
  }
}


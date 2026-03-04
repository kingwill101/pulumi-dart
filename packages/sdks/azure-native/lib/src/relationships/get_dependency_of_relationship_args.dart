// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relationships_get_dependency_of_relationship_args_doc}
/// Arguments for getDependencyOfRelationship.
/// {@endtemplate}
/// {@macro pulumi_relationships_get_dependency_of_relationship_args_doc}
class GetDependencyOfRelationshipArgs {
  /// Name of dependencyOf relationship.
  final pulumi.Input<String> name;

  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetDependencyOfRelationshipArgs].
  /// [name] Name of dependencyOf relationship.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  GetDependencyOfRelationshipArgs({
    required this.name,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'resourceUri': resourceUri};
  }

  factory GetDependencyOfRelationshipArgs.fromMap(Map<String, dynamic> map) {
    return GetDependencyOfRelationshipArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

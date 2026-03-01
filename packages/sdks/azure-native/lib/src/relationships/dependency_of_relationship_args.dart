// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dependency_of_relationship_properties.dart';

/// {@template pulumi_relationships_dependency_of_relationship_args_doc}
/// The set of arguments for DependencyOfRelationship.
/// {@endtemplate}
/// {@macro pulumi_relationships_dependency_of_relationship_args_doc}
class DependencyOfRelationshipArgs {
  /// Name of dependencyOf relationship.
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DependencyOfRelationshipProperties>? properties;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [DependencyOfRelationshipArgs].
  /// [name] Name of dependencyOf relationship.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  DependencyOfRelationshipArgs({
    pulumi.Output<String>? name,
    pulumi.Output<DependencyOfRelationshipProperties>? properties,
    required pulumi.Output<String> resourceUri,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<DependencyOfRelationshipProperties>(properties),
      resourceUri = pulumi.Input.asInput<String>(resourceUri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<DependencyOfRelationshipProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory DependencyOfRelationshipArgs.fromMap(Map<String, dynamic> map) {
    return DependencyOfRelationshipArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DependencyOfRelationshipProperties>(DependencyOfRelationshipProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
    );
  }
}


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
    this.name,
    this.properties,
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            DependencyOfRelationshipProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceUri': resourceUri,
    };
  }

  factory DependencyOfRelationshipArgs.fromMap(Map<String, dynamic> map) {
    return DependencyOfRelationshipArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DependencyOfRelationshipProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}

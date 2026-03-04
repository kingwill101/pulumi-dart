// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tags.dart';

/// {@template pulumi_resources_tag_at_scope_args_doc}
/// The set of arguments for TagAtScope.
/// {@endtemplate}
/// {@macro pulumi_resources_tag_at_scope_args_doc}
class TagAtScopeArgs {
  /// The set of tags.
  final pulumi.Input<Tags> properties;

  /// The resource scope.
  final pulumi.Input<String> scope;

  /// Creates a new [TagAtScopeArgs].
  /// [properties] The set of tags.
  /// [scope] The resource scope.
  TagAtScopeArgs({required this.properties, required this.scope});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<Tags, Map<String, dynamic>>(
        properties,
        (value) => value.toMap(),
      ),
      'scope': scope,
    };
  }

  factory TagAtScopeArgs.fromMap(Map<String, dynamic> map) {
    return TagAtScopeArgs(
      properties: pulumi.Input.fromValue(
        Tags.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      ),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

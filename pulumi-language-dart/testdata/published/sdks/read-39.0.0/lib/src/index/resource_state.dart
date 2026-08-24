// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Resource resources.
class ResourceState {
  final pulumi.Input<String> lookup;

  /// Creates a new [ResourceState].
  /// [lookup] Required.
  const ResourceState({
    required this.lookup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lookup': lookup,
    };
  }

  factory ResourceState.fromMap(Map<String, dynamic> map) {
    return ResourceState(
      lookup: pulumi.Input.fromValue(map['lookup'] as String),
    );
  }
}

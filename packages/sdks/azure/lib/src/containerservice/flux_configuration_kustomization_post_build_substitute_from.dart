// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FluxConfigurationKustomizationPostBuildSubstituteFrom {
  /// Specifies the source kind to hold the variables to be used in substitution. Possible values are `ConfigMap` and `Secret`.
  final pulumi.Input<String> kind;

  /// Specifies the name of the ConfigMap/Secret that holds the variables to be used in substitution.
  final pulumi.Input<String> name;

  /// Whether to proceed without ConfigMap/Secret if it is not present. Defaults to `false`.
  final pulumi.Input<bool>? optional;

  /// Creates a new [FluxConfigurationKustomizationPostBuildSubstituteFrom].
  /// [kind] Specifies the source kind to hold the variables to be used in substitution. Possible values are `ConfigMap` and `Secret`.
  /// [name] Specifies the name of the ConfigMap/Secret that holds the variables to be used in substitution.
  /// [optional] Whether to proceed without ConfigMap/Secret if it is not present. Defaults to `false`.
  FluxConfigurationKustomizationPostBuildSubstituteFrom({
    required this.kind,
    required this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kind': kind, 'name': name, 'optional': ?optional};
  }

  factory FluxConfigurationKustomizationPostBuildSubstituteFrom.fromMap(
    Map<String, dynamic> map,
  ) {
    return FluxConfigurationKustomizationPostBuildSubstituteFrom(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      optional: (() {
        final guardedValue = map['optional'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_orgpolicy_v2_get_custom_constraint_args_doc}
/// Arguments for getCustomConstraint.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_v2_get_custom_constraint_args_doc}
class GetCustomConstraintArgs {
  final pulumi.Input<String> customConstraintId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetCustomConstraintArgs].
  /// [customConstraintId] Required.
  /// [organizationId] Required.
  const GetCustomConstraintArgs({
    required this.customConstraintId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConstraintId': customConstraintId,
      'organizationId': organizationId,
    };
  }

  factory GetCustomConstraintArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomConstraintArgs(
      customConstraintId: pulumi.Input.fromValue(map['customConstraintId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_override_args_doc}
/// Arguments for getOverride.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_override_args_doc}
class GetOverrideArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> overrideId;

  /// Creates a new [GetOverrideArgs].
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [overrideId] Required.
  const GetOverrideArgs({
    required this.environmentId,
    required this.organizationId,
    required this.overrideId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'overrideId': overrideId,
    };
  }

  factory GetOverrideArgs.fromMap(Map<String, dynamic> map) {
    return GetOverrideArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      overrideId: pulumi.Input.fromValue(map['overrideId'] as String),
    );
  }
}

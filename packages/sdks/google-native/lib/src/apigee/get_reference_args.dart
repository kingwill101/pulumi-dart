// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_reference_args_doc}
/// Arguments for getReference.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_reference_args_doc}
class GetReferenceArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> referenceId;

  /// Creates a new [GetReferenceArgs].
  /// [environmentId] Required.
  /// [organizationId] Required.
  /// [referenceId] Required.
  GetReferenceArgs({
    required this.environmentId,
    required this.organizationId,
    required this.referenceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'referenceId': referenceId,
    };
  }

  factory GetReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetReferenceArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      referenceId: pulumi.Input.fromValue(map['referenceId'] as String),
    );
  }
}

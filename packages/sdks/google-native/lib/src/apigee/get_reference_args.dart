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
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> referenceId,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      referenceId = pulumi.Input.asInput<String>(referenceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'organizationId': organizationId,
      'referenceId': referenceId,
    };
  }

  factory GetReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetReferenceArgs(
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      referenceId: pulumi.Output.create<String>(map['referenceId'] as String),
    );
  }
}


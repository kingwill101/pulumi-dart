// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_environment_entry_args_doc}
/// Arguments for getEnvironmentEntry.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_environment_entry_args_doc}
class GetEnvironmentEntryArgs {
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keyvaluemapId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetEnvironmentEntryArgs].
  /// [entryId] Required.
  /// [environmentId] Required.
  /// [keyvaluemapId] Required.
  /// [organizationId] Required.
  GetEnvironmentEntryArgs({
    required pulumi.Output<String> entryId,
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> keyvaluemapId,
    required pulumi.Output<String> organizationId,
  }) :
      entryId = pulumi.Input.asInput<String>(entryId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      keyvaluemapId = pulumi.Input.asInput<String>(keyvaluemapId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryId': entryId,
      'environmentId': environmentId,
      'keyvaluemapId': keyvaluemapId,
      'organizationId': organizationId,
    };
  }

  factory GetEnvironmentEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentEntryArgs(
      entryId: pulumi.Output.create<String>(map['entryId'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      keyvaluemapId: pulumi.Output.create<String>(map['keyvaluemapId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}


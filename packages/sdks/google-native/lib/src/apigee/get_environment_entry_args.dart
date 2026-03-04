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
    required this.entryId,
    required this.environmentId,
    required this.keyvaluemapId,
    required this.organizationId,
  });

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
      entryId: pulumi.Input.fromValue(map['entryId'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      keyvaluemapId: pulumi.Input.fromValue(map['keyvaluemapId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

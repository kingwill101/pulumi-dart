// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_entry_args_doc}
/// Arguments for getEntry.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_entry_args_doc}
class GetEntryArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> keyvaluemapId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetEntryArgs].
  /// [apiId] Required.
  /// [entryId] Required.
  /// [keyvaluemapId] Required.
  /// [organizationId] Required.
  GetEntryArgs({
    required this.apiId,
    required this.entryId,
    required this.keyvaluemapId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'entryId': entryId,
      'keyvaluemapId': keyvaluemapId,
      'organizationId': organizationId,
    };
  }

  factory GetEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      entryId: pulumi.Input.fromValue(map['entryId'] as String),
      keyvaluemapId: pulumi.Input.fromValue(map['keyvaluemapId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

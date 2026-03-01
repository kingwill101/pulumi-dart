// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_export_args_doc}
/// Arguments for getExport.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_export_args_doc}
class GetExportArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> exportId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetExportArgs].
  /// [environmentId] Required.
  /// [exportId] Required.
  /// [organizationId] Required.
  GetExportArgs({
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> exportId,
    required pulumi.Output<String> organizationId,
  }) :
      environmentId = pulumi.Input.asInput<String>(environmentId),
      exportId = pulumi.Input.asInput<String>(exportId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'exportId': exportId,
      'organizationId': organizationId,
    };
  }

  factory GetExportArgs.fromMap(Map<String, dynamic> map) {
    return GetExportArgs(
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      exportId: pulumi.Output.create<String>(map['exportId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}


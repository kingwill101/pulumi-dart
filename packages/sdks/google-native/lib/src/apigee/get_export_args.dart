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
  const GetExportArgs({
    required this.environmentId,
    required this.exportId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'exportId': exportId,
      'organizationId': organizationId,
    };
  }

  factory GetExportArgs.fromMap(Map<String, dynamic> map) {
    return GetExportArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      exportId: pulumi.Input.fromValue(map['exportId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}


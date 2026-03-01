// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_websecurityscanner_v1alpha_get_scan_config_websecurityscanner_v1alpha_args_doc}
/// Arguments for getScanConfig.
/// {@endtemplate}
/// {@macro pulumi_websecurityscanner_v1alpha_get_scan_config_websecurityscanner_v1alpha_args_doc}
class GetScanConfigWebsecurityscannerV1alphaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scanConfigId;

  /// Creates a new [GetScanConfigWebsecurityscannerV1alphaArgs].
  /// [project] Optional.
  /// [scanConfigId] Required.
  GetScanConfigWebsecurityscannerV1alphaArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> scanConfigId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      scanConfigId = pulumi.Input.asInput<String>(scanConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'scanConfigId': scanConfigId,
    };
  }

  factory GetScanConfigWebsecurityscannerV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetScanConfigWebsecurityscannerV1alphaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scanConfigId: pulumi.Output.create<String>(map['scanConfigId'] as String),
    );
  }
}


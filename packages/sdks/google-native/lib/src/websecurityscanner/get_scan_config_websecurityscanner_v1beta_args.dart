// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_websecurityscanner_v1beta_get_scan_config_websecurityscanner_v1beta_args_doc}
/// Arguments for getScanConfig.
/// {@endtemplate}
/// {@macro pulumi_websecurityscanner_v1beta_get_scan_config_websecurityscanner_v1beta_args_doc}
class GetScanConfigWebsecurityscannerV1betaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scanConfigId;

  /// Creates a new [GetScanConfigWebsecurityscannerV1betaArgs].
  /// [project] Optional.
  /// [scanConfigId] Required.
  const GetScanConfigWebsecurityscannerV1betaArgs({
    this.project,
    required this.scanConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'scanConfigId': scanConfigId,
    };
  }

  factory GetScanConfigWebsecurityscannerV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetScanConfigWebsecurityscannerV1betaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanConfigId: pulumi.Input.fromValue(map['scanConfigId'] as String),
    );
  }
}


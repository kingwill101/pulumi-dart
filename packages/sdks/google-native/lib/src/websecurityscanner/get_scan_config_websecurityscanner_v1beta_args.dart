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
  GetScanConfigWebsecurityscannerV1betaArgs({
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
      project: map['project'] == null ? null : (map['project']! as String).input(),
      scanConfigId: (map['scanConfigId'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_websecurityscanner_v1_get_scan_config_args_doc}
/// Arguments for getScanConfig.
/// {@endtemplate}
/// {@macro pulumi_websecurityscanner_v1_get_scan_config_args_doc}
class GetScanConfigArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> scanConfigId;

  /// Creates a new [GetScanConfigArgs].
  /// [project] Optional.
  /// [scanConfigId] Required.
  const GetScanConfigArgs({
    this.project,
    required this.scanConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'scanConfigId': scanConfigId,
    };
  }

  factory GetScanConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetScanConfigArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanConfigId: pulumi.Input.fromValue(map['scanConfigId'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_data_scan_args_doc}
/// Arguments for getDataScan.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_data_scan_args_doc}
class GetDataScanArgs {
  final pulumi.Input<String> dataScanId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetDataScanArgs].
  /// [dataScanId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  const GetDataScanArgs({
    required this.dataScanId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataScanId': dataScanId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetDataScanArgs.fromMap(Map<String, dynamic> map) {
    return GetDataScanArgs(
      dataScanId: pulumi.Input.fromValue(map['dataScanId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      view: (() { final guardedValue = map['view']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

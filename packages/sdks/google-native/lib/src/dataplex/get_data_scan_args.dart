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
  GetDataScanArgs({
    required pulumi.Output<String> dataScanId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? view,
  }) :
      dataScanId = pulumi.Input.asInput<String>(dataScanId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

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
      dataScanId: pulumi.Output.create<String>(map['dataScanId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_export_ingestion_label.dart';

/// {@template pulumi_chronicle_data_export_data_export_args_doc}
/// The set of arguments for DataExport.
/// {@endtemplate}
/// {@macro pulumi_chronicle_data_export_data_export_args_doc}
class DataExportArgs {
  /// Last, exclusive time from the range.
  final pulumi.Input<String> endTime;
  /// Link to the destination Cloud Storage bucket.
  final pulumi.Input<String> gcsBucket;
  /// The specific log types to include in the Data Export request.
  final pulumi.Input<List<String>?>? includeLogTypes;
  /// The ingestion labels used to filter the export.
  /// Structure is documented below.
  final pulumi.Input<List<DataExportIngestionLabel>?>? ingestionLabels;
  /// The unique identifier for the Chronicle instance.
  final pulumi.Input<String> instance;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The namespaces used to filter the export.
  final pulumi.Input<List<String>?>? namespaces;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Start, inclusive time from the range.
  final pulumi.Input<String> startTime;

  /// Creates a new [DataExportArgs].
  /// [endTime] Last, exclusive time from the range.
  /// [gcsBucket] Link to the destination Cloud Storage bucket.
  /// [includeLogTypes] The specific log types to include in the Data Export request.
  /// [ingestionLabels] The ingestion labels used to filter the export.
  /// [instance] The unique identifier for the Chronicle instance.
  /// [location] The location of the resource.
  /// [namespaces] The namespaces used to filter the export.
  /// [project] The ID of the project in which the resource belongs.
  /// [startTime] Start, inclusive time from the range.
  const DataExportArgs({
    required this.endTime,
    required this.gcsBucket,
    this.includeLogTypes,
    this.ingestionLabels,
    required this.instance,
    required this.location,
    this.namespaces,
    this.project,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'gcsBucket': gcsBucket,
      'includeLogTypes': ?includeLogTypes,
      'ingestionLabels': ?pulumi.Input.mapOptionalInputValue<List<DataExportIngestionLabel>, List<Map<String, dynamic>>>(ingestionLabels, (value) => pulumi.Input.encodeList<DataExportIngestionLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instance': instance,
      'location': location,
      'namespaces': ?namespaces,
      'project': ?project,
      'startTime': startTime,
    };
  }

  factory DataExportArgs.fromMap(Map<String, dynamic> map) {
    return DataExportArgs(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      gcsBucket: pulumi.Input.fromValue(map['gcsBucket'] as String),
      includeLogTypes: (() { final guardedValue = map['includeLogTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ingestionLabels: (() { final guardedValue = map['ingestionLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataExportIngestionLabel>(guardedValue, (value) => DataExportIngestionLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      namespaces: (() { final guardedValue = map['namespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_export_data_export_status.dart';
import 'data_export_ingestion_label.dart';

/// Input properties used for looking up and filtering DataExport resources.
class DataExportState {
  /// Timestamp indicating when the DataExport resource was created.
  final pulumi.Input<String>? createTime;
  /// The unique identifier for the data export.
  final pulumi.Input<String>? dataExportId;
  /// Status of the current export.
  /// Structure is documented below.
  final pulumi.Input<List<DataExportDataExportStatus>>? dataExportStatuses;
  /// Last, exclusive time from the range.
  final pulumi.Input<String>? endTime;
  /// The estimated export volume in bytes.
  final pulumi.Input<int>? estimatedVolume;
  /// Actual volume of data exported.
  final pulumi.Input<int>? exportedVolume;
  /// Link to the destination Cloud Storage bucket.
  final pulumi.Input<String>? gcsBucket;
  /// The specific log types to include in the Data Export request.
  final pulumi.Input<List<String>>? includeLogTypes;
  /// The ingestion labels used to filter the export.
  /// Structure is documented below.
  final pulumi.Input<List<DataExportIngestionLabel>>? ingestionLabels;
  /// The unique identifier for the Chronicle instance.
  final pulumi.Input<String>? instance;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The resource name of the data export.
  final pulumi.Input<String>? name;
  /// The namespaces used to filter the export.
  final pulumi.Input<List<String>>? namespaces;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Start, inclusive time from the range.
  final pulumi.Input<String>? startTime;
  /// Timestamp indicating the last time the DataExport resource was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DataExportState].
  /// [createTime] Timestamp indicating when the DataExport resource was created.
  /// [dataExportId] The unique identifier for the data export.
  /// [dataExportStatuses] Status of the current export.
  /// [endTime] Last, exclusive time from the range.
  /// [estimatedVolume] The estimated export volume in bytes.
  /// [exportedVolume] Actual volume of data exported.
  /// [gcsBucket] Link to the destination Cloud Storage bucket.
  /// [includeLogTypes] The specific log types to include in the Data Export request.
  /// [ingestionLabels] The ingestion labels used to filter the export.
  /// [instance] The unique identifier for the Chronicle instance.
  /// [location] The location of the resource.
  /// [name] The resource name of the data export.
  /// [namespaces] The namespaces used to filter the export.
  /// [project] The ID of the project in which the resource belongs.
  /// [startTime] Start, inclusive time from the range.
  /// [updateTime] Timestamp indicating the last time the DataExport resource was updated.
  const DataExportState({
    this.createTime,
    this.dataExportId,
    this.dataExportStatuses,
    this.endTime,
    this.estimatedVolume,
    this.exportedVolume,
    this.gcsBucket,
    this.includeLogTypes,
    this.ingestionLabels,
    this.instance,
    this.location,
    this.name,
    this.namespaces,
    this.project,
    this.startTime,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataExportId': ?dataExportId,
      'dataExportStatuses': ?pulumi.Input.mapOptionalInputValue<List<DataExportDataExportStatus>, List<Map<String, dynamic>>>(dataExportStatuses, (value) => pulumi.Input.encodeList<DataExportDataExportStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endTime': ?endTime,
      'estimatedVolume': ?estimatedVolume,
      'exportedVolume': ?exportedVolume,
      'gcsBucket': ?gcsBucket,
      'includeLogTypes': ?includeLogTypes,
      'ingestionLabels': ?pulumi.Input.mapOptionalInputValue<List<DataExportIngestionLabel>, List<Map<String, dynamic>>>(ingestionLabels, (value) => pulumi.Input.encodeList<DataExportIngestionLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'namespaces': ?namespaces,
      'project': ?project,
      'startTime': ?startTime,
      'updateTime': ?updateTime,
    };
  }

  factory DataExportState.fromMap(Map<String, dynamic> map) {
    return DataExportState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataExportId: (() { final guardedValue = map['dataExportId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataExportStatuses: (() { final guardedValue = map['dataExportStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataExportDataExportStatus>(guardedValue, (value) => DataExportDataExportStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      estimatedVolume: (() { final guardedValue = map['estimatedVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      exportedVolume: (() { final guardedValue = map['exportedVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gcsBucket: (() { final guardedValue = map['gcsBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeLogTypes: (() { final guardedValue = map['includeLogTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ingestionLabels: (() { final guardedValue = map['ingestionLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataExportIngestionLabel>(guardedValue, (value) => DataExportIngestionLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaces: (() { final guardedValue = map['namespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

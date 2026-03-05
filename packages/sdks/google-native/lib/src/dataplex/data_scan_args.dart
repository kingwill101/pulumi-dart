// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_data_profile_spec.dart';
import 'google_cloud_dataplex_v1_data_quality_spec.dart';
import 'google_cloud_dataplex_v1_data_scan_execution_spec.dart';
import 'google_cloud_dataplex_v1_data_source.dart';

/// {@template pulumi_dataplex_v1_data_scan_args_doc}
/// The set of arguments for DataScan.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_data_scan_args_doc}
class DataScanArgs {
  /// The data source for DataScan.
  final pulumi.Input<GoogleCloudDataplexV1DataSource> data;
  /// DataProfileScan related setting.
  final pulumi.Input<GoogleCloudDataplexV1DataProfileSpec>? dataProfileSpec;
  /// DataQualityScan related setting.
  final pulumi.Input<GoogleCloudDataplexV1DataQualitySpec>? dataQualitySpec;
  /// Required. DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter. Must be between 1-63 characters. Must be unique within the customer project / location.
  final pulumi.Input<String> dataScanId;
  /// Optional. Description of the scan. Must be between 1-1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. User friendly display name. Must be between 1-256 characters.
  final pulumi.Input<String>? displayName;
  /// Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  final pulumi.Input<GoogleCloudDataplexV1DataScanExecutionSpec>? executionSpec;
  /// Optional. User-defined labels for the scan.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Creates a new [DataScanArgs].
  /// [data] The data source for DataScan.
  /// [dataProfileSpec] DataProfileScan related setting.
  /// [dataQualitySpec] DataQualityScan related setting.
  /// [dataScanId] Required. DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter. Must be between 1-63 characters. Must be unique within the customer project / location.
  /// [description] Optional. Description of the scan. Must be between 1-1024 characters.
  /// [displayName] Optional. User friendly display name. Must be between 1-256 characters.
  /// [executionSpec] Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  /// [labels] Optional. User-defined labels for the scan.
  /// [location] Optional.
  /// [project] Optional.
  DataScanArgs({
    required this.data,
    this.dataProfileSpec,
    this.dataQualitySpec,
    required this.dataScanId,
    this.description,
    this.displayName,
    this.executionSpec,
    this.labels,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': pulumi.Input.mapInputValue<GoogleCloudDataplexV1DataSource, Map<String, dynamic>>(data, (value) => value.toMap()),
      'dataProfileSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataProfileSpec, Map<String, dynamic>>(dataProfileSpec, (value) => value.toMap()),
      'dataQualitySpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataQualitySpec, Map<String, dynamic>>(dataQualitySpec, (value) => value.toMap()),
      'dataScanId': dataScanId,
      'description': ?description,
      'displayName': ?displayName,
      'executionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1DataScanExecutionSpec, Map<String, dynamic>>(executionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
    };
  }

  factory DataScanArgs.fromMap(Map<String, dynamic> map) {
    return DataScanArgs(
      data: pulumi.Input.fromValue(GoogleCloudDataplexV1DataSource.fromMap((map['data']! as Map).cast<String, dynamic>())),
      dataProfileSpec: (() { final guardedValue = map['dataProfileSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataProfileSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataQualitySpec: (() { final guardedValue = map['dataQualitySpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataQualitySpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataScanId: pulumi.Input.fromValue(map['dataScanId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionSpec: (() { final guardedValue = map['executionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDataplexV1DataScanExecutionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_profile_result_response.dart';
import 'google_cloud_dataplex_v1_data_profile_spec_response.dart';
import 'google_cloud_dataplex_v1_data_quality_result_response.dart';
import 'google_cloud_dataplex_v1_data_quality_spec_response.dart';
import 'google_cloud_dataplex_v1_data_scan_execution_spec_response.dart';
import 'google_cloud_dataplex_v1_data_scan_execution_status_response.dart';
import 'google_cloud_dataplex_v1_data_source_response.dart';

/// Result data returned by getDataScan.
class GetDataScanResult {
  /// The time when the scan was created.
  final String? createTime;
  /// The data source for DataScan.
  final GoogleCloudDataplexV1DataSourceResponse? data;
  /// The result of the data profile scan.
  final GoogleCloudDataplexV1DataProfileResultResponse? dataProfileResult;
  /// DataProfileScan related setting.
  final GoogleCloudDataplexV1DataProfileSpecResponse? dataProfileSpec;
  /// The result of the data quality scan.
  final GoogleCloudDataplexV1DataQualityResultResponse? dataQualityResult;
  /// DataQualityScan related setting.
  final GoogleCloudDataplexV1DataQualitySpecResponse? dataQualitySpec;
  /// Optional. Description of the scan. Must be between 1-1024 characters.
  final String? description;
  /// Optional. User friendly display name. Must be between 1-256 characters.
  final String? displayName;
  /// Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  final GoogleCloudDataplexV1DataScanExecutionSpecResponse? executionSpec;
  /// Status of the data scan execution.
  final GoogleCloudDataplexV1DataScanExecutionStatusResponse? executionStatus;
  /// Optional. User-defined labels for the scan.
  final Map<String, String>? labels;
  /// The relative resource name of the scan, of the form: projects/{project}/locations/{location_id}/dataScans/{datascan_id}, where project refers to a project_id or project_number and location_id refers to a GCP region.
  final String? name;
  /// Current state of the DataScan.
  final String? state;
  /// The type of DataScan.
  final String? type;
  /// System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  final String? uid;
  /// The time when the scan was last updated.
  final String? updateTime;

  /// Creates a new [GetDataScanResult].
  /// [createTime] The time when the scan was created.
  /// [data] The data source for DataScan.
  /// [dataProfileResult] The result of the data profile scan.
  /// [dataProfileSpec] DataProfileScan related setting.
  /// [dataQualityResult] The result of the data quality scan.
  /// [dataQualitySpec] DataQualityScan related setting.
  /// [description] Optional. Description of the scan. Must be between 1-1024 characters.
  /// [displayName] Optional. User friendly display name. Must be between 1-256 characters.
  /// [executionSpec] Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  /// [executionStatus] Status of the data scan execution.
  /// [labels] Optional. User-defined labels for the scan.
  /// [name] The relative resource name of the scan, of the form: projects/{project}/locations/{location_id}/dataScans/{datascan_id}, where project refers to a project_id or project_number and location_id refers to a GCP region.
  /// [state] Current state of the DataScan.
  /// [type] The type of DataScan.
  /// [uid] System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  /// [updateTime] The time when the scan was last updated.
  const GetDataScanResult({
    this.createTime,
    this.data,
    this.dataProfileResult,
    this.dataProfileSpec,
    this.dataQualityResult,
    this.dataQualitySpec,
    this.description,
    this.displayName,
    this.executionSpec,
    this.executionStatus,
    this.labels,
    this.name,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'data': ?data?.toMap(),
      'dataProfileResult': ?dataProfileResult?.toMap(),
      'dataProfileSpec': ?dataProfileSpec?.toMap(),
      'dataQualityResult': ?dataQualityResult?.toMap(),
      'dataQualitySpec': ?dataQualitySpec?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'executionSpec': ?executionSpec?.toMap(),
      'executionStatus': ?executionStatus?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetDataScanResult.fromMap(Map<String, dynamic> map) {
    return GetDataScanResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return GoogleCloudDataplexV1DataSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataProfileResult: (() { final guardedValue = map['dataProfileResult']; if (guardedValue == null) return null; return GoogleCloudDataplexV1DataProfileResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataProfileSpec: (() { final guardedValue = map['dataProfileSpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1DataProfileSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataQualityResult: (() { final guardedValue = map['dataQualityResult']; if (guardedValue == null) return null; return GoogleCloudDataplexV1DataQualityResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataQualitySpec: (() { final guardedValue = map['dataQualitySpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1DataQualitySpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionSpec: (() { final guardedValue = map['executionSpec']; if (guardedValue == null) return null; return GoogleCloudDataplexV1DataScanExecutionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      executionStatus: (() { final guardedValue = map['executionStatus']; if (guardedValue == null) return null; return GoogleCloudDataplexV1DataScanExecutionStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

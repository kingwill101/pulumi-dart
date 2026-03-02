// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data.dart';
import 'datascan_data_discovery_spec.dart';
import 'datascan_data_profile_spec.dart';
import 'datascan_data_quality_spec.dart';
import 'datascan_execution_spec.dart';
import 'datascan_execution_status.dart';

/// Input properties used for looking up and filtering Datascan resources.
class DatascanState {
  /// The time when the scan was created.
  final pulumi.Input<String>? createTime;
  /// The data source for DataScan.
  /// Structure is documented below.
  final pulumi.Input<DatascanData>? data;
  /// DataDiscoveryScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataDiscoverySpec>? dataDiscoverySpec;
  /// DataDocumentationScan related setting.
  final pulumi.Input<Map<String, dynamic>>? dataDocumentationSpec;
  /// DataProfileScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataProfileSpec>? dataProfileSpec;
  /// DataQualityScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpec>? dataQualitySpec;
  /// DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  final pulumi.Input<String>? dataScanId;
  /// Description of the scan.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// DataScan execution settings.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionSpec>? executionSpec;
  /// Status of the data scan execution.
  /// Structure is documented below.
  final pulumi.Input<List<DatascanExecutionStatus>>? executionStatuses;
  /// User-defined labels for the scan. A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the data scan should reside.
  final pulumi.Input<String>? location;
  /// The relative resource name of the scan, of the form: projects/{project}/locations/{locationId}/dataScans/{datascan_id}, where project refers to a project_id or project_number and locationId refers to a GCP region.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Current state of the DataScan.
  final pulumi.Input<String>? state;
  /// The type of DataScan.
  final pulumi.Input<String>? type;
  /// System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  final pulumi.Input<String>? uid;
  /// The time when the scan was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DatascanState].
  /// [createTime] The time when the scan was created.
  /// [data] The data source for DataScan.
  /// [dataDiscoverySpec] DataDiscoveryScan related setting.
  /// [dataDocumentationSpec] DataDocumentationScan related setting.
  /// [dataProfileSpec] DataProfileScan related setting.
  /// [dataQualitySpec] DataQualityScan related setting.
  /// [dataScanId] DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  /// [description] Description of the scan.
  /// [displayName] User friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [executionSpec] DataScan execution settings.
  /// [executionStatuses] Status of the data scan execution.
  /// [labels] User-defined labels for the scan. A list of key->value pairs.
  /// [location] The location where the data scan should reside.
  /// [name] The relative resource name of the scan, of the form: projects/{project}/locations/{locationId}/dataScans/{datascan_id}, where project refers to a project_id or project_number and locationId refers to a GCP region.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] Current state of the DataScan.
  /// [type] The type of DataScan.
  /// [uid] System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  /// [updateTime] The time when the scan was last updated.
  DatascanState({
    this.createTime,
    this.data,
    this.dataDiscoverySpec,
    this.dataDocumentationSpec,
    this.dataProfileSpec,
    this.dataQualitySpec,
    this.dataScanId,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.executionSpec,
    this.executionStatuses,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.state,
    this.type,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'data': ?pulumi.Input.mapOptionalInputValue<DatascanData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'dataDiscoverySpec': ?pulumi.Input.mapOptionalInputValue<DatascanDataDiscoverySpec, Map<String, dynamic>>(dataDiscoverySpec, (value) => value.toMap()),
      'dataDocumentationSpec': ?dataDocumentationSpec,
      'dataProfileSpec': ?pulumi.Input.mapOptionalInputValue<DatascanDataProfileSpec, Map<String, dynamic>>(dataProfileSpec, (value) => value.toMap()),
      'dataQualitySpec': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpec, Map<String, dynamic>>(dataQualitySpec, (value) => value.toMap()),
      'dataScanId': ?dataScanId,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'executionSpec': ?pulumi.Input.mapOptionalInputValue<DatascanExecutionSpec, Map<String, dynamic>>(executionSpec, (value) => value.toMap()),
      'executionStatuses': ?pulumi.Input.mapOptionalInputValue<List<DatascanExecutionStatus>, List<Map<String, dynamic>>>(executionStatuses, (value) => pulumi.Input.encodeList<DatascanExecutionStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory DatascanState.fromMap(Map<String, dynamic> map) {
    return DatascanState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      data: map['data'] == null ? null : (DatascanData.fromMap((map['data']! as Map).cast<String, dynamic>())).input(),
      dataDiscoverySpec: map['dataDiscoverySpec'] == null ? null : (DatascanDataDiscoverySpec.fromMap((map['dataDiscoverySpec']! as Map).cast<String, dynamic>())).input(),
      dataDocumentationSpec: map['dataDocumentationSpec'] == null ? null : ((map['dataDocumentationSpec']! as Map).cast<String, dynamic>()).input(),
      dataProfileSpec: map['dataProfileSpec'] == null ? null : (DatascanDataProfileSpec.fromMap((map['dataProfileSpec']! as Map).cast<String, dynamic>())).input(),
      dataQualitySpec: map['dataQualitySpec'] == null ? null : (DatascanDataQualitySpec.fromMap((map['dataQualitySpec']! as Map).cast<String, dynamic>())).input(),
      dataScanId: map['dataScanId'] == null ? null : (map['dataScanId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      executionSpec: map['executionSpec'] == null ? null : (DatascanExecutionSpec.fromMap((map['executionSpec']! as Map).cast<String, dynamic>())).input(),
      executionStatuses: map['executionStatuses'] == null ? null : (pulumi.Input.decodeList<DatascanExecutionStatus>(map['executionStatuses']!, (value) => DatascanExecutionStatus.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}


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
    pulumi.Output<String>? createTime,
    pulumi.Output<DatascanData>? data,
    pulumi.Output<DatascanDataDiscoverySpec>? dataDiscoverySpec,
    pulumi.Output<Map<String, dynamic>>? dataDocumentationSpec,
    pulumi.Output<DatascanDataProfileSpec>? dataProfileSpec,
    pulumi.Output<DatascanDataQualitySpec>? dataQualitySpec,
    pulumi.Output<String>? dataScanId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<DatascanExecutionSpec>? executionSpec,
    pulumi.Output<List<DatascanExecutionStatus>>? executionStatuses,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<String>? type,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      data = pulumi.Input.asOptionalInput<DatascanData>(data),
      dataDiscoverySpec = pulumi.Input.asOptionalInput<DatascanDataDiscoverySpec>(dataDiscoverySpec),
      dataDocumentationSpec = pulumi.Input.asOptionalInput<Map<String, dynamic>>(dataDocumentationSpec),
      dataProfileSpec = pulumi.Input.asOptionalInput<DatascanDataProfileSpec>(dataProfileSpec),
      dataQualitySpec = pulumi.Input.asOptionalInput<DatascanDataQualitySpec>(dataQualitySpec),
      dataScanId = pulumi.Input.asOptionalInput<String>(dataScanId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      executionSpec = pulumi.Input.asOptionalInput<DatascanExecutionSpec>(executionSpec),
      executionStatuses = pulumi.Input.asOptionalInput<List<DatascanExecutionStatus>>(executionStatuses),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      type = pulumi.Input.asOptionalInput<String>(type),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      data: map['data'] == null ? null : pulumi.Output.create<DatascanData>(DatascanData.fromMap((map['data'] as Map).cast<String, dynamic>())),
      dataDiscoverySpec: map['dataDiscoverySpec'] == null ? null : pulumi.Output.create<DatascanDataDiscoverySpec>(DatascanDataDiscoverySpec.fromMap((map['dataDiscoverySpec'] as Map).cast<String, dynamic>())),
      dataDocumentationSpec: map['dataDocumentationSpec'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['dataDocumentationSpec'] as Map).cast<String, dynamic>()),
      dataProfileSpec: map['dataProfileSpec'] == null ? null : pulumi.Output.create<DatascanDataProfileSpec>(DatascanDataProfileSpec.fromMap((map['dataProfileSpec'] as Map).cast<String, dynamic>())),
      dataQualitySpec: map['dataQualitySpec'] == null ? null : pulumi.Output.create<DatascanDataQualitySpec>(DatascanDataQualitySpec.fromMap((map['dataQualitySpec'] as Map).cast<String, dynamic>())),
      dataScanId: map['dataScanId'] == null ? null : pulumi.Output.create<String>(map['dataScanId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      executionSpec: map['executionSpec'] == null ? null : pulumi.Output.create<DatascanExecutionSpec>(DatascanExecutionSpec.fromMap((map['executionSpec'] as Map).cast<String, dynamic>())),
      executionStatuses: map['executionStatuses'] == null ? null : pulumi.Output.create<List<DatascanExecutionStatus>>(pulumi.Input.decodeList<DatascanExecutionStatus>(map['executionStatuses'], (value) => DatascanExecutionStatus.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


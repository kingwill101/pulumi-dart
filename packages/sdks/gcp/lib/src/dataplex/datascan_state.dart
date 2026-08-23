// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data.dart';
import 'datascan_data_discovery_spec.dart';
import 'datascan_data_documentation_spec.dart';
import 'datascan_data_profile_spec.dart';
import 'datascan_data_quality_spec.dart';
import 'datascan_execution_identity.dart';
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
  /// Structure is documented below.
  final pulumi.Input<DatascanDataDocumentationSpec>? dataDocumentationSpec;
  /// DataProfileScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataProfileSpec>? dataProfileSpec;
  /// DataQualityScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpec>? dataQualitySpec;
  /// DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  final pulumi.Input<String>? dataScanId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Description of the scan.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The identity to run the datascan. If not specified, defaults to the Dataplex Service Agent.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionIdentity>? executionIdentity;
  /// DataScan execution settings.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionSpec>? executionSpec;
  /// Status of the data scan execution.
  /// Structure is documented below.
  final pulumi.Input<List<DatascanExecutionStatus>>? executionStatuses;
  /// User-defined labels for the scan. A list of key-&gt;value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the data scan should reside.
  final pulumi.Input<String>? location;
  /// The relative resource name of the scan, of the form: projects/{project}/locations/{locationId}/dataScans/{datascan_id}, where project refers to a projectId or projectNumber and locationId refers to a GCP region.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the scan.
  /// [displayName] User friendly display name.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [executionIdentity] The identity to run the datascan. If not specified, defaults to the Dataplex Service Agent.
  /// [executionSpec] DataScan execution settings.
  /// [executionStatuses] Status of the data scan execution.
  /// [labels] User-defined labels for the scan. A list of key-&gt;value pairs.
  /// [location] The location where the data scan should reside.
  /// [name] The relative resource name of the scan, of the form: projects/{project}/locations/{locationId}/dataScans/{datascan_id}, where project refers to a projectId or projectNumber and locationId refers to a GCP region.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] Current state of the DataScan.
  /// [type] The type of DataScan.
  /// [uid] System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  /// [updateTime] The time when the scan was last updated.
  const DatascanState({
    this.createTime,
    this.data,
    this.dataDiscoverySpec,
    this.dataDocumentationSpec,
    this.dataProfileSpec,
    this.dataQualitySpec,
    this.dataScanId,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.effectiveLabels,
    this.executionIdentity,
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
      'dataDocumentationSpec': ?pulumi.Input.mapOptionalInputValue<DatascanDataDocumentationSpec, Map<String, dynamic>>(dataDocumentationSpec, (value) => value.toMap()),
      'dataProfileSpec': ?pulumi.Input.mapOptionalInputValue<DatascanDataProfileSpec, Map<String, dynamic>>(dataProfileSpec, (value) => value.toMap()),
      'dataQualitySpec': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpec, Map<String, dynamic>>(dataQualitySpec, (value) => value.toMap()),
      'dataScanId': ?dataScanId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'executionIdentity': ?pulumi.Input.mapOptionalInputValue<DatascanExecutionIdentity, Map<String, dynamic>>(executionIdentity, (value) => value.toMap()),
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDiscoverySpec: (() { final guardedValue = map['dataDiscoverySpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataDiscoverySpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDocumentationSpec: (() { final guardedValue = map['dataDocumentationSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataDocumentationSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataProfileSpec: (() { final guardedValue = map['dataProfileSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataProfileSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataQualitySpec: (() { final guardedValue = map['dataQualitySpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanDataQualitySpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataScanId: (() { final guardedValue = map['dataScanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      executionIdentity: (() { final guardedValue = map['executionIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanExecutionIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionSpec: (() { final guardedValue = map['executionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatascanExecutionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionStatuses: (() { final guardedValue = map['executionStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatascanExecutionStatus>(guardedValue, (value) => DatascanExecutionStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

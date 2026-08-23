// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assets_export_job_condition.dart';
import 'assets_export_job_performance_data.dart';
import 'assets_export_job_recent_execution.dart';
import 'assets_export_job_signed_uri_destination.dart';

/// Input properties used for looking up and filtering AssetsExportJob resources.
class AssetsExportJobState {
  /// The ID to use for the asset export job.
  final pulumi.Input<String>? assetsExportJobId;
  /// Conditions for selecting assets to export.
  /// Structure is documented below.
  final pulumi.Input<AssetsExportJobCondition>? condition;
  /// Resource creation time.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Configuration for asset inventory details exports.
  final pulumi.Input<List<Map<String, dynamic>>>? inventories;
  /// Labels as key value pairs.
  /// Labels must meet the following constraints:
  /// * Keys and values can contain only lowercase letters, numeric characters,
  /// underscores, and dashes.
  /// * All characters must use UTF-8 encoding, and international characters are
  /// allowed.
  /// * Keys must start with a lowercase letter or international character.
  /// * Each resource is limited to a maximum of 64 labels.
  /// Both keys and values are additionally constrained to be &lt;= 128 bytes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. Resource name.
  final pulumi.Input<String>? name;
  /// Configuration for network dependencies exports.
  final pulumi.Input<List<Map<String, dynamic>>>? networkDependencies;
  /// Configuration for performance data exports.
  /// Structure is documented below.
  final pulumi.Input<AssetsExportJobPerformanceData>? performanceData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Recent non expired executions of the job.
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecution>>? recentExecutions;
  /// When this value is set to 'true' the response will include all assets,
  /// including those that are hidden.
  final pulumi.Input<bool>? showHidden;
  /// Signed URI destination configuration.
  /// Structure is documented below.
  final pulumi.Input<AssetsExportJobSignedUriDestination>? signedUriDestination;
  /// Resource update time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AssetsExportJobState].
  /// [assetsExportJobId] The ID to use for the asset export job.
  /// [condition] Conditions for selecting assets to export.
  /// [createTime] Resource creation time.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [inventories] Configuration for asset inventory details exports.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. Resource name.
  /// [networkDependencies] Configuration for network dependencies exports.
  /// [performanceData] Configuration for performance data exports.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [recentExecutions] Recent non expired executions of the job.
  /// [showHidden] When this value is set to 'true' the response will include all assets,
  /// [signedUriDestination] Signed URI destination configuration.
  /// [updateTime] Resource update time.
  const AssetsExportJobState({
    this.assetsExportJobId,
    this.condition,
    this.createTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.inventories,
    this.labels,
    this.location,
    this.name,
    this.networkDependencies,
    this.performanceData,
    this.project,
    this.pulumiLabels,
    this.recentExecutions,
    this.showHidden,
    this.signedUriDestination,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetsExportJobId': ?assetsExportJobId,
      'condition': ?pulumi.Input.mapOptionalInputValue<AssetsExportJobCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'inventories': ?inventories,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'networkDependencies': ?networkDependencies,
      'performanceData': ?pulumi.Input.mapOptionalInputValue<AssetsExportJobPerformanceData, Map<String, dynamic>>(performanceData, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'recentExecutions': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecution>, List<Map<String, dynamic>>>(recentExecutions, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecution, Map<String, dynamic>>(value, (value) => value.toMap())),
      'showHidden': ?showHidden,
      'signedUriDestination': ?pulumi.Input.mapOptionalInputValue<AssetsExportJobSignedUriDestination, Map<String, dynamic>>(signedUriDestination, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory AssetsExportJobState.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobState(
      assetsExportJobId: (() { final guardedValue = map['assetsExportJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetsExportJobCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      inventories: (() { final guardedValue = map['inventories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkDependencies: (() { final guardedValue = map['networkDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
      performanceData: (() { final guardedValue = map['performanceData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetsExportJobPerformanceData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      recentExecutions: (() { final guardedValue = map['recentExecutions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecution>(guardedValue, (value) => AssetsExportJobRecentExecution.fromMap((value as Map).cast<String, dynamic>()))); })(),
      showHidden: (() { final guardedValue = map['showHidden']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      signedUriDestination: (() { final guardedValue = map['signedUriDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssetsExportJobSignedUriDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

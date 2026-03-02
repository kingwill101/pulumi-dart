// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_config_artifact_config.dart';
import 'insights_config_error.dart';
import 'insights_config_runtime_config.dart';

/// Input properties used for looking up and filtering InsightsConfig resources.
class InsightsConfigState {
  /// User specified annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The name of the App Hub Application.
  /// Format:
  /// projects/{project}/locations/{location}/applications/{application}
  final pulumi.Input<String>? appHubApplication;
  /// The artifact configurations of the artifacts that are deployed.
  /// Structure is documented below.
  final pulumi.Input<List<InsightsConfigArtifactConfig>>? artifactConfigs;
  /// [Output only] Create timestamp
  final pulumi.Input<String>? createTime;
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Any errors that occurred while setting up the InsightsConfig.
  /// Each error will be in the format: `field_name: error_message`, e.g.
  /// GetAppHubApplication: Permission denied while getting App Hub
  /// application. Please grant permissions to the P4SA.
  /// Structure is documented below.
  final pulumi.Input<List<InsightsConfigError>>? errors;
  /// ID of the requesting InsightsConfig.
  final pulumi.Input<String>? insightsConfigId;
  /// Set of labels associated with an InsightsConfig.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the InsightsConfig.
  /// Format:
  /// projects/{project}/locations/{location}/insightsConfigs/{insightsConfig}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Reconciling (https://google.aip.dev/128#reconciliation).
  /// Set to true if the current state of InsightsConfig does not match the
  /// user's intended state, and the service is actively updating the resource to
  /// reconcile them. This can happen due to user-triggered updates or
  /// system actions like failover or maintenance.
  final pulumi.Input<bool>? reconciling;
  /// The runtime configurations where the application is deployed.
  /// Structure is documented below.
  final pulumi.Input<List<InsightsConfigRuntimeConfig>>? runtimeConfigs;
  /// (Output)
  /// The state of the Runtime.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// LINKED
  /// UNLINKED
  final pulumi.Input<String>? state;
  /// [Output only] Update timestamp
  final pulumi.Input<String>? updateTime;

  /// Creates a new [InsightsConfigState].
  /// [annotations] User specified annotations. See https://google.aip.dev/148#annotations
  /// [appHubApplication] The name of the App Hub Application.
  /// [artifactConfigs] The artifact configurations of the artifacts that are deployed.
  /// [createTime] [Output only] Create timestamp
  /// [effectiveAnnotations] Optional.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [errors] Any errors that occurred while setting up the InsightsConfig.
  /// [insightsConfigId] ID of the requesting InsightsConfig.
  /// [labels] Set of labels associated with an InsightsConfig.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The name of the InsightsConfig.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Reconciling (https://google.aip.dev/128#reconciliation).
  /// [runtimeConfigs] The runtime configurations where the application is deployed.
  /// [state] (Output)
  /// [updateTime] [Output only] Update timestamp
  InsightsConfigState({
    this.annotations,
    this.appHubApplication,
    this.artifactConfigs,
    this.createTime,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.errors,
    this.insightsConfigId,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.runtimeConfigs,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appHubApplication': ?appHubApplication,
      'artifactConfigs': ?pulumi.Input.mapOptionalInputValue<List<InsightsConfigArtifactConfig>, List<Map<String, dynamic>>>(artifactConfigs, (value) => pulumi.Input.encodeList<InsightsConfigArtifactConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<InsightsConfigError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<InsightsConfigError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'insightsConfigId': ?insightsConfigId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'runtimeConfigs': ?pulumi.Input.mapOptionalInputValue<List<InsightsConfigRuntimeConfig>, List<Map<String, dynamic>>>(runtimeConfigs, (value) => pulumi.Input.encodeList<InsightsConfigRuntimeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory InsightsConfigState.fromMap(Map<String, dynamic> map) {
    return InsightsConfigState(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      appHubApplication: map['appHubApplication'] == null ? null : (map['appHubApplication']! as String).input(),
      artifactConfigs: map['artifactConfigs'] == null ? null : (pulumi.Input.decodeList<InsightsConfigArtifactConfig>(map['artifactConfigs']!, (value) => InsightsConfigArtifactConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      effectiveAnnotations: map['effectiveAnnotations'] == null ? null : ((map['effectiveAnnotations']! as Map).cast<String, String>()).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<InsightsConfigError>(map['errors']!, (value) => InsightsConfigError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      insightsConfigId: map['insightsConfigId'] == null ? null : (map['insightsConfigId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      runtimeConfigs: map['runtimeConfigs'] == null ? null : (pulumi.Input.decodeList<InsightsConfigRuntimeConfig>(map['runtimeConfigs']!, (value) => InsightsConfigRuntimeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}


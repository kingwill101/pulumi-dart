// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_config_artifact_config.dart';
import 'insights_config_error.dart';
import 'insights_config_runtime_config.dart';
import 'insights_config_target_projects.dart';

/// Input properties used for looking up and filtering InsightsConfig resources.
class InsightsConfigState {
  /// User specified annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Any errors that occurred while setting up the InsightsConfig.
  /// Each error will be in the format: `field_name: errorMessage`, e.g.
  /// GetAppHubApplication: Permission denied while getting App Hub
  /// application. Please grant permissions to the P4SA.
  /// Structure is documented below.
  final pulumi.Input<List<InsightsConfigError>>? errors;
  /// ID of the requesting InsightsConfig.
  final pulumi.Input<String>? insightsConfigId;
  /// Set of labels associated with an InsightsConfig.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// The projects to track with the InsightsConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsConfigTargetProjects>? targetProjects;
  /// [Output only] Update timestamp
  final pulumi.Input<String>? updateTime;

  /// Creates a new [InsightsConfigState].
  /// [annotations] User specified annotations. See https://google.aip.dev/148#annotations
  /// [appHubApplication] The name of the App Hub Application.
  /// [artifactConfigs] The artifact configurations of the artifacts that are deployed.
  /// [createTime] [Output only] Create timestamp
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
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
  /// [targetProjects] The projects to track with the InsightsConfig.
  /// [updateTime] [Output only] Update timestamp
  const InsightsConfigState({
    this.annotations,
    this.appHubApplication,
    this.artifactConfigs,
    this.createTime,
    this.deletionPolicy,
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
    this.targetProjects,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appHubApplication': ?appHubApplication,
      'artifactConfigs': ?pulumi.Input.mapOptionalInputValue<List<InsightsConfigArtifactConfig>, List<Map<String, dynamic>>>(artifactConfigs, (value) => pulumi.Input.encodeList<InsightsConfigArtifactConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
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
      'targetProjects': ?pulumi.Input.mapOptionalInputValue<InsightsConfigTargetProjects, Map<String, dynamic>>(targetProjects, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory InsightsConfigState.fromMap(Map<String, dynamic> map) {
    return InsightsConfigState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      appHubApplication: (() { final guardedValue = map['appHubApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactConfigs: (() { final guardedValue = map['artifactConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InsightsConfigArtifactConfig>(guardedValue, (value) => InsightsConfigArtifactConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InsightsConfigError>(guardedValue, (value) => InsightsConfigError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      insightsConfigId: (() { final guardedValue = map['insightsConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      runtimeConfigs: (() { final guardedValue = map['runtimeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InsightsConfigRuntimeConfig>(guardedValue, (value) => InsightsConfigRuntimeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetProjects: (() { final guardedValue = map['targetProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsConfigTargetProjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

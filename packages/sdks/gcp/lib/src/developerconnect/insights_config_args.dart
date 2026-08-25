// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_config_artifact_config.dart';
import 'insights_config_target_projects.dart';

/// {@template pulumi_developerconnect_insights_config_insights_config_args_doc}
/// The set of arguments for InsightsConfig.
/// {@endtemplate}
/// {@macro pulumi_developerconnect_insights_config_insights_config_args_doc}
class InsightsConfigArgs {
  /// User specified annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// The name of the App Hub Application.
  /// Format:
  /// projects/{project}/locations/{location}/applications/{application}
  final pulumi.Input<String?>? appHubApplication;
  /// The artifact configurations of the artifacts that are deployed.
  /// Structure is documented below.
  final pulumi.Input<List<InsightsConfigArtifactConfig>?>? artifactConfigs;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// ID of the requesting InsightsConfig.
  final pulumi.Input<String> insightsConfigId;
  /// Set of labels associated with an InsightsConfig.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The projects to track with the InsightsConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsConfigTargetProjects?>? targetProjects;

  /// Creates a new [InsightsConfigArgs].
  /// [annotations] User specified annotations. See https://google.aip.dev/148#annotations
  /// [appHubApplication] The name of the App Hub Application.
  /// [artifactConfigs] The artifact configurations of the artifacts that are deployed.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [insightsConfigId] ID of the requesting InsightsConfig.
  /// [labels] Set of labels associated with an InsightsConfig.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [targetProjects] The projects to track with the InsightsConfig.
  const InsightsConfigArgs({
    this.annotations,
    this.appHubApplication,
    this.artifactConfigs,
    this.deletionPolicy,
    required this.insightsConfigId,
    this.labels,
    required this.location,
    this.project,
    this.targetProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appHubApplication': ?appHubApplication,
      'artifactConfigs': ?pulumi.Input.mapOptionalInputValue<List<InsightsConfigArtifactConfig>, List<Map<String, dynamic>>>(artifactConfigs, (value) => pulumi.Input.encodeList<InsightsConfigArtifactConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'insightsConfigId': insightsConfigId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'targetProjects': ?pulumi.Input.mapOptionalInputValue<InsightsConfigTargetProjects, Map<String, dynamic>>(targetProjects, (value) => value.toMap()),
    };
  }

  factory InsightsConfigArgs.fromMap(Map<String, dynamic> map) {
    return InsightsConfigArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      appHubApplication: (() { final guardedValue = map['appHubApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactConfigs: (() { final guardedValue = map['artifactConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InsightsConfigArtifactConfig>(guardedValue, (value) => InsightsConfigArtifactConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insightsConfigId: pulumi.Input.fromValue(map['insightsConfigId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetProjects: (() { final guardedValue = map['targetProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InsightsConfigTargetProjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

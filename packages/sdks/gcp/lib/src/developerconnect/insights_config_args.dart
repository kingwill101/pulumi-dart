// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_config_artifact_config.dart';

/// {@template pulumi_developerconnect_insights_config_insights_config_args_doc}
/// The set of arguments for InsightsConfig.
/// {@endtemplate}
/// {@macro pulumi_developerconnect_insights_config_insights_config_args_doc}
class InsightsConfigArgs {
  /// User specified annotations. See https://google.aip.dev/148#annotations
  /// for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The name of the App Hub Application.
  /// Format:
  /// projects/{project}/locations/{location}/applications/{application}
  final pulumi.Input<String> appHubApplication;

  /// The artifact configurations of the artifacts that are deployed.
  /// Structure is documented below.
  final pulumi.Input<List<InsightsConfigArtifactConfig>>? artifactConfigs;

  /// ID of the requesting InsightsConfig.
  final pulumi.Input<String> insightsConfigId;

  /// Set of labels associated with an InsightsConfig.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InsightsConfigArgs].
  /// [annotations] User specified annotations. See https://google.aip.dev/148#annotations
  /// [appHubApplication] The name of the App Hub Application.
  /// [artifactConfigs] The artifact configurations of the artifacts that are deployed.
  /// [insightsConfigId] ID of the requesting InsightsConfig.
  /// [labels] Set of labels associated with an InsightsConfig.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  InsightsConfigArgs({
    this.annotations,
    required this.appHubApplication,
    this.artifactConfigs,
    required this.insightsConfigId,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'appHubApplication': appHubApplication,
      'artifactConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<InsightsConfigArtifactConfig>,
            List<Map<String, dynamic>>
          >(
            artifactConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  InsightsConfigArtifactConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'insightsConfigId': insightsConfigId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory InsightsConfigArgs.fromMap(Map<String, dynamic> map) {
    return InsightsConfigArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      appHubApplication: pulumi.Input.fromValue(
        map['appHubApplication'] as String,
      ),
      artifactConfigs: (() {
        final guardedValue = map['artifactConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InsightsConfigArtifactConfig>(
            guardedValue,
            (value) => InsightsConfigArtifactConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      insightsConfigId: pulumi.Input.fromValue(
        map['insightsConfigId'] as String,
      ),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

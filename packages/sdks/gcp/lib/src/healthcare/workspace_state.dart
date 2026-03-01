// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_settings.dart';

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String>? dataset;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The user labels. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the workspace, in the format 'projects/{projectId}/locations/{location}/datasets/{datasetId}/dataMapperWorkspaces/{workspaceId}'
  final pulumi.Input<String>? name;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Settings associated with this workspace.
  /// Structure is documented below.
  final pulumi.Input<WorkspaceSettings>? settings;

  /// Creates a new [WorkspaceState].
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] The user labels. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }
  /// [name] The name of the workspace, in the format 'projects/{projectId}/locations/{location}/datasets/{datasetId}/dataMapperWorkspaces/{workspaceId}'
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [settings] Settings associated with this workspace.
  WorkspaceState({
    pulumi.Output<String>? dataset,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<WorkspaceSettings>? settings,
  }) :
      dataset = pulumi.Input.asOptionalInput<String>(dataset),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      settings = pulumi.Input.asOptionalInput<WorkspaceSettings>(settings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'pulumiLabels': ?pulumiLabels,
      'settings': ?pulumi.Input.mapOptionalInputValue<WorkspaceSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      dataset: map['dataset'] == null ? null : pulumi.Output.create<String>(map['dataset'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      settings: map['settings'] == null ? null : pulumi.Output.create<WorkspaceSettings>(WorkspaceSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())),
    );
  }
}


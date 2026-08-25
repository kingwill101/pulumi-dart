// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_settings.dart';

/// {@template pulumi_healthcare_workspace_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_healthcare_workspace_workspace_args_doc}
class WorkspaceArgs {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String> dataset;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user labels. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The name of the workspace, in the format 'projects/{projectId}/locations/{location}/datasets/{datasetId}/dataMapperWorkspaces/{workspaceId}'
  final pulumi.Input<String?>? name;
  /// Settings associated with this workspace.
  /// Structure is documented below.
  final pulumi.Input<WorkspaceSettings> settings;

  /// Creates a new [WorkspaceArgs].
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] The user labels. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }
  /// [name] The name of the workspace, in the format 'projects/{projectId}/locations/{location}/datasets/{datasetId}/dataMapperWorkspaces/{workspaceId}'
  /// [settings] Settings associated with this workspace.
  const WorkspaceArgs({
    required this.dataset,
    this.deletionPolicy,
    this.labels,
    this.name,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'name': ?name,
      'settings': pulumi.Input.mapInputValue<WorkspaceSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: pulumi.Input.fromValue(WorkspaceSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())),
    );
  }
}

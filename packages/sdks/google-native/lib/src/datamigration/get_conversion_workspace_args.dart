// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datamigration_v1_get_conversion_workspace_args_doc}
/// Arguments for getConversionWorkspace.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_get_conversion_workspace_args_doc}
class GetConversionWorkspaceArgs {
  final pulumi.Input<String> conversionWorkspaceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConversionWorkspaceArgs].
  /// [conversionWorkspaceId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConversionWorkspaceArgs({
    required pulumi.Output<String> conversionWorkspaceId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      conversionWorkspaceId = pulumi.Input.asInput<String>(conversionWorkspaceId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversionWorkspaceId': conversionWorkspaceId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversionWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetConversionWorkspaceArgs(
      conversionWorkspaceId: pulumi.Output.create<String>(map['conversionWorkspaceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


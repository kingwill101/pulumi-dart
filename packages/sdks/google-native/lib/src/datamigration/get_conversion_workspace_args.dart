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
    required this.conversionWorkspaceId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversionWorkspaceId': conversionWorkspaceId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConversionWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetConversionWorkspaceArgs(
      conversionWorkspaceId: (map['conversionWorkspaceId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}


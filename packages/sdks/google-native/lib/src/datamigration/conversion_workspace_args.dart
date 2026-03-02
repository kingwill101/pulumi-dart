// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_engine_info.dart';

/// {@template pulumi_datamigration_v1_conversion_workspace_args_doc}
/// The set of arguments for ConversionWorkspace.
/// {@endtemplate}
/// {@macro pulumi_datamigration_v1_conversion_workspace_args_doc}
class ConversionWorkspaceArgs {
  /// Required. The ID of the conversion workspace to create.
  final pulumi.Input<String> conversionWorkspaceId;
  /// The destination engine details.
  final pulumi.Input<DatabaseEngineInfo> destination;
  /// Optional. The display name for the workspace.
  final pulumi.Input<String>? displayName;
  /// Optional. A generic list of settings for the workspace. The settings are database pair dependant and can indicate default behavior for the mapping rules engine or turn on or off specific features. Such examples can be: convert_foreign_key_to_interleave=true, skip_triggers=false, ignore_non_table_synonyms=true
  final pulumi.Input<Map<String, String>>? globalSettings;
  final pulumi.Input<String>? location;
  /// Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final pulumi.Input<String>? requestId;
  /// The source engine details.
  final pulumi.Input<DatabaseEngineInfo> source;

  /// Creates a new [ConversionWorkspaceArgs].
  /// [conversionWorkspaceId] Required. The ID of the conversion workspace to create.
  /// [destination] The destination engine details.
  /// [displayName] Optional. The display name for the workspace.
  /// [globalSettings] Optional. A generic list of settings for the workspace. The settings are database pair dependant and can indicate default behavior for the mapping rules engine or turn on or off specific features. Such examples can be: convert_foreign_key_to_interleave=true, skip_triggers=false, ignore_non_table_synonyms=true
  /// [location] Optional.
  /// [name] Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// [project] Optional.
  /// [requestId] A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  /// [source] The source engine details.
  ConversionWorkspaceArgs({
    required this.conversionWorkspaceId,
    required this.destination,
    this.displayName,
    this.globalSettings,
    this.location,
    this.name,
    this.project,
    this.requestId,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversionWorkspaceId': conversionWorkspaceId,
      'destination': pulumi.Input.mapInputValue<DatabaseEngineInfo, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'displayName': ?displayName,
      'globalSettings': ?globalSettings,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'source': pulumi.Input.mapInputValue<DatabaseEngineInfo, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory ConversionWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return ConversionWorkspaceArgs(
      conversionWorkspaceId: (map['conversionWorkspaceId'] as String).input(),
      destination: (DatabaseEngineInfo.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      globalSettings: map['globalSettings'] == null ? null : ((map['globalSettings']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      source: (DatabaseEngineInfo.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


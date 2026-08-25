// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetadataFeedScope {
  /// The entry groups whose entries you want to listen to. Must be in the format: projects/{project_id_or_number}/locations/{location_id}/entryGroups/{entry_group_id}.
  final pulumi.Input<List<String>?>? entryGroups;
  /// Whether the metadata feed is at the organization-level.
  /// If true, all changes happened to the entries in the same organization as the feed are published.
  /// If false, you must specify a list of projects or a list of entry groups whose entries you want to listen to.The default is false.
  final pulumi.Input<bool?>? organizationLevel;
  /// The projects whose entries you want to listen to. Must be in the same organization as the feed. Must be in the format: projects/{project_id_or_number}.
  final pulumi.Input<List<String>?>? projects;

  /// Creates a new [MetadataFeedScope].
  /// [entryGroups] The entry groups whose entries you want to listen to. Must be in the format: projects/{project_id_or_number}/locations/{location_id}/entryGroups/{entry_group_id}.
  /// [organizationLevel] Whether the metadata feed is at the organization-level.
  /// [projects] The projects whose entries you want to listen to. Must be in the same organization as the feed. Must be in the format: projects/{project_id_or_number}.
  const MetadataFeedScope({
    this.entryGroups,
    this.organizationLevel,
    this.projects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryGroups': ?entryGroups,
      'organizationLevel': ?organizationLevel,
      'projects': ?projects,
    };
  }

  factory MetadataFeedScope.fromMap(Map<String, dynamic> map) {
    return MetadataFeedScope(
      entryGroups: (() { final guardedValue = map['entryGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      organizationLevel: (() { final guardedValue = map['organizationLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      projects: (() { final guardedValue = map['projects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

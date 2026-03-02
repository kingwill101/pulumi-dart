// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_settings_share_type.dart';

/// The share setting for reservations and sole tenancy node groups.
class ShareSettings {
  /// A map of folder id and folder config to specify consumer projects for this shared-reservation. This is only valid when share_type's value is DIRECT_PROJECTS_UNDER_SPECIFIC_FOLDERS. Folder id should be a string of number, and without "folders/" prefix.
  final pulumi.Input<Map<String, String>>? folderMap;
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final pulumi.Input<Map<String, String>>? projectMap;
  /// A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final pulumi.Input<List<String>>? projects;
  /// Type of sharing for this shared-reservation
  final pulumi.Input<ShareSettingsShareType>? shareType;

  /// Creates a new [ShareSettings].
  /// [folderMap] A map of folder id and folder config to specify consumer projects for this shared-reservation. This is only valid when share_type's value is DIRECT_PROJECTS_UNDER_SPECIFIC_FOLDERS. Folder id should be a string of number, and without "folders/" prefix.
  /// [projectMap] A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [projects] A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [shareType] Type of sharing for this shared-reservation
  ShareSettings({
    this.folderMap,
    this.projectMap,
    this.projects,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderMap': ?folderMap,
      'projectMap': ?projectMap,
      'projects': ?projects,
      'shareType': ?pulumi.Input.mapOptionalInputValue<ShareSettingsShareType, String>(shareType, (value) => value.value),
    };
  }

  factory ShareSettings.fromMap(Map<String, dynamic> map) {
    return ShareSettings(
      folderMap: map['folderMap'] == null ? null : ((map['folderMap']! as Map).cast<String, String>()).input(),
      projectMap: map['projectMap'] == null ? null : ((map['projectMap']! as Map).cast<String, String>()).input(),
      projects: map['projects'] == null ? null : ((map['projects']! as List).cast<String>()).input(),
      shareType: map['shareType'] == null ? null : (ShareSettingsShareType.fromValue(map['shareType']! as String)).input(),
    );
  }
}


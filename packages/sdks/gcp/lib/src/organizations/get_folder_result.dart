// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFolder.
class GetFolderResult {
  /// Optional capabilities configured for this folder.
  final List<String>? configuredCapabilities;
  /// Timestamp when the Organization was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  /// The folder's display name.
  final String? displayName;
  final String? folder;
  final String? folderId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Folder's current lifecycle state.
  final String? lifecycleState;
  final bool? lookupOrganization;
  /// Management Project associated with this folder (if capability is enabled).
  final String? managementProject;
  /// The resource name of the Folder in the form `folders/{folder_id}`.
  final String? name;
  /// If `lookupOrganization` is enable, the resource name of the Organization that the folder belongs.
  final String? organization;
  /// The resource name of the parent Folder or Organization.
  final String? parent;

  /// Creates a new [GetFolderResult].
  /// [configuredCapabilities] Optional capabilities configured for this folder.
  /// [createTime] Timestamp when the Organization was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [displayName] The folder's display name.
  /// [folder] Optional.
  /// [folderId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lifecycleState] The Folder's current lifecycle state.
  /// [lookupOrganization] Optional.
  /// [managementProject] Management Project associated with this folder (if capability is enabled).
  /// [name] The resource name of the Folder in the form `folders/{folder_id}`.
  /// [organization] If `lookupOrganization` is enable, the resource name of the Organization that the folder belongs.
  /// [parent] The resource name of the parent Folder or Organization.
  const GetFolderResult({
    this.configuredCapabilities,
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.folder,
    this.folderId,
    this.id,
    this.lifecycleState,
    this.lookupOrganization,
    this.managementProject,
    this.name,
    this.organization,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuredCapabilities': ?configuredCapabilities,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'folder': ?folder,
      'folderId': ?folderId,
      'id': ?id,
      'lifecycleState': ?lifecycleState,
      'lookupOrganization': ?lookupOrganization,
      'managementProject': ?managementProject,
      'name': ?name,
      'organization': ?organization,
      'parent': ?parent,
    };
  }

  factory GetFolderResult.fromMap(Map<String, dynamic> map) {
    return GetFolderResult(
      configuredCapabilities: (() { final guardedValue = map['configuredCapabilities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleState: (() { final guardedValue = map['lifecycleState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lookupOrganization: (() { final guardedValue = map['lookupOrganization']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      managementProject: (() { final guardedValue = map['managementProject']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

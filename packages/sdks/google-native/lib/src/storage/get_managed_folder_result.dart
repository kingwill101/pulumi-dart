// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedFolder.
class GetManagedFolderResult {
  /// The name of the bucket containing this managed folder.
  final String? bucket;
  /// The creation time of the managed folder in RFC 3339 format.
  final String? createTime;
  /// The kind of item this is. For managed folders, this is always storage#managedFolder.
  final String? kind;
  /// The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata.
  final String? metageneration;
  /// The name of the managed folder. Required if not specified by URL parameter.
  final String? name;
  /// The link to this managed folder.
  final String? selfLink;
  /// The last update time of the managed folder metadata in RFC 3339 format.
  final String? updateTime;

  /// Creates a new [GetManagedFolderResult].
  /// [bucket] The name of the bucket containing this managed folder.
  /// [createTime] The creation time of the managed folder in RFC 3339 format.
  /// [kind] The kind of item this is. For managed folders, this is always storage#managedFolder.
  /// [metageneration] The version of the metadata for this managed folder. Used for preconditions and for detecting changes in metadata.
  /// [name] The name of the managed folder. Required if not specified by URL parameter.
  /// [selfLink] The link to this managed folder.
  /// [updateTime] The last update time of the managed folder metadata in RFC 3339 format.
  const GetManagedFolderResult({
    this.bucket,
    this.createTime,
    this.kind,
    this.metageneration,
    this.name,
    this.selfLink,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'createTime': ?createTime,
      'kind': ?kind,
      'metageneration': ?metageneration,
      'name': ?name,
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory GetManagedFolderResult.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metageneration: (() { final guardedValue = map['metageneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

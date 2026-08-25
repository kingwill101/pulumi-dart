// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFile.
class GetFileResult {
  /// Creation time (RFC 3339).
  final String? createTime;
  final String? fileId;
  /// Map of hash type (e.g. `SHA256`, `MD5`) to the corresponding hash value reported by Artifact Registry.
  final Map<String, String>? hashes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// The fully-qualified file resource name (`projects/.../files/...`).
  final String? name;
  /// Base64-encoded SHA-256 of the downloaded file contents.
  final String? outputBase64sha256;
  final String? outputPath;
  /// Hex-encoded SHA-256 of the downloaded file contents.
  final String? outputSha256;
  final bool? overwrite;
  final String? project;
  final String? repositoryId;
  /// Size of the file in bytes, as reported by Artifact Registry.
  final int? sizeBytes;
  /// Last update time (RFC 3339).
  final String? updateTime;

  /// Creates a new [GetFileResult].
  /// [createTime] Creation time (RFC 3339).
  /// [fileId] Optional.
  /// [hashes] Map of hash type (e.g. `SHA256`, `MD5`) to the corresponding hash value reported by Artifact Registry.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] The fully-qualified file resource name (`projects/.../files/...`).
  /// [outputBase64sha256] Base64-encoded SHA-256 of the downloaded file contents.
  /// [outputPath] Optional.
  /// [outputSha256] Hex-encoded SHA-256 of the downloaded file contents.
  /// [overwrite] Optional.
  /// [project] Optional.
  /// [repositoryId] Optional.
  /// [sizeBytes] Size of the file in bytes, as reported by Artifact Registry.
  /// [updateTime] Last update time (RFC 3339).
  const GetFileResult({
    this.createTime,
    this.fileId,
    this.hashes,
    this.id,
    this.location,
    this.name,
    this.outputBase64sha256,
    this.outputPath,
    this.outputSha256,
    this.overwrite,
    this.project,
    this.repositoryId,
    this.sizeBytes,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'fileId': ?fileId,
      'hashes': ?hashes,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'outputBase64sha256': ?outputBase64sha256,
      'outputPath': ?outputPath,
      'outputSha256': ?outputSha256,
      'overwrite': ?overwrite,
      'project': ?project,
      'repositoryId': ?repositoryId,
      'sizeBytes': ?sizeBytes,
      'updateTime': ?updateTime,
    };
  }

  factory GetFileResult.fromMap(Map<String, dynamic> map) {
    return GetFileResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileId: (() { final guardedValue = map['fileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hashes: (() { final guardedValue = map['hashes']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputBase64sha256: (() { final guardedValue = map['outputBase64sha256']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputPath: (() { final guardedValue = map['outputPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputSha256: (() { final guardedValue = map['outputSha256']; if (guardedValue == null) return null; return guardedValue as String; })(),
      overwrite: (() { final guardedValue = map['overwrite']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

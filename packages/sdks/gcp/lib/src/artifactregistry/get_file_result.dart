// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFile.
class GetFileResult {
  /// Creation time (RFC 3339).
  final String createTime;
  final String fileId;
  /// Map of hash type (e.g. `SHA256`, `MD5`) to the corresponding hash value reported by Artifact Registry.
  final Map<String, String> hashes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  /// The fully-qualified file resource name (`projects/.../files/...`).
  final String name;
  /// Base64-encoded SHA-256 of the downloaded file contents.
  final String outputBase64sha256;
  final String outputPath;
  /// Hex-encoded SHA-256 of the downloaded file contents.
  final String outputSha256;
  final bool? overwrite;
  final String project;
  final String repositoryId;
  /// Size of the file in bytes, as reported by Artifact Registry.
  final int sizeBytes;
  /// Last update time (RFC 3339).
  final String updateTime;

  /// Creates a new [GetFileResult].
  /// [createTime] Creation time (RFC 3339).
  /// [fileId] Required.
  /// [hashes] Map of hash type (e.g. `SHA256`, `MD5`) to the corresponding hash value reported by Artifact Registry.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] The fully-qualified file resource name (`projects/.../files/...`).
  /// [outputBase64sha256] Base64-encoded SHA-256 of the downloaded file contents.
  /// [outputPath] Required.
  /// [outputSha256] Hex-encoded SHA-256 of the downloaded file contents.
  /// [overwrite] Optional.
  /// [project] Required.
  /// [repositoryId] Required.
  /// [sizeBytes] Size of the file in bytes, as reported by Artifact Registry.
  /// [updateTime] Last update time (RFC 3339).
  const GetFileResult({
    required this.createTime,
    required this.fileId,
    required this.hashes,
    required this.id,
    required this.location,
    required this.name,
    required this.outputBase64sha256,
    required this.outputPath,
    required this.outputSha256,
    this.overwrite,
    required this.project,
    required this.repositoryId,
    required this.sizeBytes,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'fileId': fileId,
      'hashes': hashes,
      'id': id,
      'location': location,
      'name': name,
      'outputBase64sha256': outputBase64sha256,
      'outputPath': outputPath,
      'outputSha256': outputSha256,
      'overwrite': ?overwrite,
      'project': project,
      'repositoryId': repositoryId,
      'sizeBytes': sizeBytes,
      'updateTime': updateTime,
    };
  }

  factory GetFileResult.fromMap(Map<String, dynamic> map) {
    return GetFileResult(
      createTime: map['createTime'] as String,
      fileId: map['fileId'] as String,
      hashes: (map['hashes'] as Map).cast<String, String>(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      outputBase64sha256: map['outputBase64sha256'] as String,
      outputPath: map['outputPath'] as String,
      outputSha256: map['outputSha256'] as String,
      overwrite: (() { final guardedValue = map['overwrite']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      project: map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      sizeBytes: map['sizeBytes'] as int,
      updateTime: map['updateTime'] as String,
    );
  }
}

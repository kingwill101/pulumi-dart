// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDeploymentArtifact.
class GetDeploymentArtifactResult {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final Map<String, String> annotations;
  /// Input only. The contents of the artifact. Provided by API callers when artifacts are created or replaced. To access the contents of an artifact, use GetArtifactContents.
  final String contents;
  /// Creation timestamp.
  final String createTime;
  /// A SHA-256 hash of the artifact's contents. If the artifact is gzipped, this is the hash of the uncompressed artifact.
  final String hash;
  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "registry.googleapis.com/" and cannot be changed.
  final Map<String, String> labels;
  /// A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wikipedia.org/wiki/Media_type) with a possible "schema" parameter that specifies a schema for the stored information. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  final String mimeType;
  /// Resource name.
  final String name;
  /// The size of the artifact in bytes. If the artifact is gzipped, this is the size of the uncompressed artifact.
  final int sizeBytes;
  /// Last update timestamp.
  final String updateTime;

  /// Creates a new [GetDeploymentArtifactResult].
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [contents] Input only. The contents of the artifact. Provided by API callers when artifacts are created or replaced. To access the contents of an artifact, use GetArtifactContents.
  /// [createTime] Creation timestamp.
  /// [hash] A SHA-256 hash of the artifact's contents. If the artifact is gzipped, this is the hash of the uncompressed artifact.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "registry.googleapis.com/" and cannot be changed.
  /// [mimeType] A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wikipedia.org/wiki/Media_type) with a possible "schema" parameter that specifies a schema for the stored information. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  /// [name] Resource name.
  /// [sizeBytes] The size of the artifact in bytes. If the artifact is gzipped, this is the size of the uncompressed artifact.
  /// [updateTime] Last update timestamp.
  GetDeploymentArtifactResult({
    required this.annotations,
    required this.contents,
    required this.createTime,
    required this.hash,
    required this.labels,
    required this.mimeType,
    required this.name,
    required this.sizeBytes,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'contents': contents,
      'createTime': createTime,
      'hash': hash,
      'labels': labels,
      'mimeType': mimeType,
      'name': name,
      'sizeBytes': sizeBytes,
      'updateTime': updateTime,
    };
  }

  factory GetDeploymentArtifactResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArtifactResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      contents: map['contents'] as String,
      createTime: map['createTime'] as String,
      hash: map['hash'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      mimeType: map['mimeType'] as String,
      name: map['name'] as String,
      sizeBytes: map['sizeBytes'] as int,
      updateTime: map['updateTime'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSpec.
class GetSpecResult {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final Map<String, String>? annotations;
  /// Input only. The contents of the spec. Provided by API callers when specs are created or updated. To access the contents of a spec, use GetApiSpecContents.
  final String? contents;
  /// Creation timestamp; when the spec resource was created.
  final String? createTime;
  /// A detailed description.
  final String? description;
  /// A possibly-hierarchical name used to refer to the spec from other specs.
  final String? filename;
  /// A SHA-256 hash of the spec's contents. If the spec is gzipped, this is the hash of the uncompressed spec.
  final String? hash;
  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final Map<String, String>? labels;
  /// A style (format) descriptor for this spec that is specified as a [Media Type](https://en.wikipedia.org/wiki/Media_type). Possible values include `application/vnd.apigee.proto`, `application/vnd.apigee.openapi`, and `application/vnd.apigee.graphql`, with possible suffixes representing compression types. These hypothetical names are defined in the vendor tree defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  final String? mimeType;
  /// Resource name.
  final String? name;
  /// Revision creation timestamp; when the represented revision was created.
  final String? revisionCreateTime;
  /// Immutable. The revision ID of the spec. A new revision is committed whenever the spec contents are changed. The format is an 8-character hexadecimal string.
  final String? revisionId;
  /// Last update timestamp: when the represented revision was last modified.
  final String? revisionUpdateTime;
  /// The size of the spec file in bytes. If the spec is gzipped, this is the size of the uncompressed spec.
  final int? sizeBytes;
  /// The original source URI of the spec (if one exists). This is an external location that can be used for reference purposes but which may not be authoritative since this external resource may change after the spec is retrieved.
  final String? sourceUri;

  /// Creates a new [GetSpecResult].
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [contents] Input only. The contents of the spec. Provided by API callers when specs are created or updated. To access the contents of a spec, use GetApiSpecContents.
  /// [createTime] Creation timestamp; when the spec resource was created.
  /// [description] A detailed description.
  /// [filename] A possibly-hierarchical name used to refer to the spec from other specs.
  /// [hash] A SHA-256 hash of the spec's contents. If the spec is gzipped, this is the hash of the uncompressed spec.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  /// [mimeType] A style (format) descriptor for this spec that is specified as a [Media Type](https://en.wikipedia.org/wiki/Media_type). Possible values include `application/vnd.apigee.proto`, `application/vnd.apigee.openapi`, and `application/vnd.apigee.graphql`, with possible suffixes representing compression types. These hypothetical names are defined in the vendor tree defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  /// [name] Resource name.
  /// [revisionCreateTime] Revision creation timestamp; when the represented revision was created.
  /// [revisionId] Immutable. The revision ID of the spec. A new revision is committed whenever the spec contents are changed. The format is an 8-character hexadecimal string.
  /// [revisionUpdateTime] Last update timestamp: when the represented revision was last modified.
  /// [sizeBytes] The size of the spec file in bytes. If the spec is gzipped, this is the size of the uncompressed spec.
  /// [sourceUri] The original source URI of the spec (if one exists). This is an external location that can be used for reference purposes but which may not be authoritative since this external resource may change after the spec is retrieved.
  const GetSpecResult({
    this.annotations,
    this.contents,
    this.createTime,
    this.description,
    this.filename,
    this.hash,
    this.labels,
    this.mimeType,
    this.name,
    this.revisionCreateTime,
    this.revisionId,
    this.revisionUpdateTime,
    this.sizeBytes,
    this.sourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'contents': ?contents,
      'createTime': ?createTime,
      'description': ?description,
      'filename': ?filename,
      'hash': ?hash,
      'labels': ?labels,
      'mimeType': ?mimeType,
      'name': ?name,
      'revisionCreateTime': ?revisionCreateTime,
      'revisionId': ?revisionId,
      'revisionUpdateTime': ?revisionUpdateTime,
      'sizeBytes': ?sizeBytes,
      'sourceUri': ?sourceUri,
    };
  }

  factory GetSpecResult.fromMap(Map<String, dynamic> map) {
    return GetSpecResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      contents: (() { final guardedValue = map['contents']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filename: (() { final guardedValue = map['filename']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hash: (() { final guardedValue = map['hash']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mimeType: (() { final guardedValue = map['mimeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionCreateTime: (() { final guardedValue = map['revisionCreateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revisionUpdateTime: (() { final guardedValue = map['revisionUpdateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      sourceUri: (() { final guardedValue = map['sourceUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

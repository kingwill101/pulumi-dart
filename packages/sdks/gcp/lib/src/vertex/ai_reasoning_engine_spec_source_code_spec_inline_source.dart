// ignore_for_file: unused_element, unnecessary_cast


class AiReasoningEngineSpecSourceCodeSpecInlineSource {
  /// Required. Input only.
  /// The application source code archive, provided as a compressed
  /// tarball (.tar.gz) file. A base64-encoded string.
  final String? sourceArchive;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpecInlineSource].
  /// [sourceArchive] Required. Input only.
  AiReasoningEngineSpecSourceCodeSpecInlineSource({
    this.sourceArchive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceArchive': ?sourceArchive,
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpecInlineSource.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecInlineSource(
      sourceArchive: map['sourceArchive'] == null ? null : map['sourceArchive'] as String,
    );
  }
}


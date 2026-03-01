// ignore_for_file: unused_element, unnecessary_cast


/// Defines reference in reply.
class GoogleCloudDiscoveryengineV1betaReplyReference {
  /// Anchor text.
  final String? anchorText;
  /// Anchor text end index.
  final int? end;
  /// Anchor text start index.
  final int? start;
  /// URI link reference.
  final String? uri;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaReplyReference].
  /// [anchorText] Anchor text.
  /// [end] Anchor text end index.
  /// [start] Anchor text start index.
  /// [uri] URI link reference.
  GoogleCloudDiscoveryengineV1betaReplyReference({
    this.anchorText,
    this.end,
    this.start,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anchorText': ?anchorText,
      'end': ?end,
      'start': ?start,
      'uri': ?uri,
    };
  }

  factory GoogleCloudDiscoveryengineV1betaReplyReference.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaReplyReference(
      anchorText: map['anchorText'] == null ? null : map['anchorText'] as String,
      end: map['end'] == null ? null : map['end'] as int,
      start: map['start'] == null ? null : map['start'] as int,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}


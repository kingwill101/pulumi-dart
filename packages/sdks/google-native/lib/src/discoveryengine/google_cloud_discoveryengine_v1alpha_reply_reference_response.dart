// ignore_for_file: unused_element, unnecessary_cast


/// Defines reference in reply.
class GoogleCloudDiscoveryengineV1alphaReplyReferenceResponse {
  /// Anchor text.
  final String anchorText;
  /// Anchor text end index.
  final int end;
  /// Anchor text start index.
  final int start;
  /// URI link reference.
  final String uri;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaReplyReferenceResponse].
  /// [anchorText] Anchor text.
  /// [end] Anchor text end index.
  /// [start] Anchor text start index.
  /// [uri] URI link reference.
  GoogleCloudDiscoveryengineV1alphaReplyReferenceResponse({
    required this.anchorText,
    required this.end,
    required this.start,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anchorText': anchorText,
      'end': end,
      'start': start,
      'uri': uri,
    };
  }

  factory GoogleCloudDiscoveryengineV1alphaReplyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaReplyReferenceResponse(
      anchorText: map['anchorText'] as String,
      end: map['end'] as int,
      start: map['start'] as int,
      uri: map['uri'] as String,
    );
  }
}


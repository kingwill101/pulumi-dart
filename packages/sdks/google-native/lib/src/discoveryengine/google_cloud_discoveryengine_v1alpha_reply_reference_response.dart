// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines reference in reply.
class GoogleCloudDiscoveryengineV1alphaReplyReferenceResponse {
  /// Anchor text.
  final pulumi.Input<String> anchorText;
  /// Anchor text end index.
  final pulumi.Input<int> end;
  /// Anchor text start index.
  final pulumi.Input<int> start;
  /// URI link reference.
  final pulumi.Input<String> uri;

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
      anchorText: (map['anchorText'] as String).input(),
      end: (map['end'] as int).input(),
      start: (map['start'] as int).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines reference in reply.
class GoogleCloudDiscoveryengineV1betaReplyReferenceResponse {
  /// Anchor text.
  final pulumi.Input<String> anchorText;
  /// Anchor text end index.
  final pulumi.Input<int> end;
  /// Anchor text start index.
  final pulumi.Input<int> start;
  /// URI link reference.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleCloudDiscoveryengineV1betaReplyReferenceResponse].
  /// [anchorText] Anchor text.
  /// [end] Anchor text end index.
  /// [start] Anchor text start index.
  /// [uri] URI link reference.
  const GoogleCloudDiscoveryengineV1betaReplyReferenceResponse({
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

  factory GoogleCloudDiscoveryengineV1betaReplyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1betaReplyReferenceResponse(
      anchorText: pulumi.Input.fromValue(map['anchorText'] as String),
      end: pulumi.Input.fromValue(map['end'] as int),
      start: pulumi.Input.fromValue(map['start'] as int),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}


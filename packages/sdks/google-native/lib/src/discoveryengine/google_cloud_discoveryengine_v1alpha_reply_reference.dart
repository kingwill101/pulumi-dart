// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines reference in reply.
class GoogleCloudDiscoveryengineV1alphaReplyReference {
  /// Anchor text.
  final pulumi.Input<String>? anchorText;
  /// Anchor text end index.
  final pulumi.Input<int>? end;
  /// Anchor text start index.
  final pulumi.Input<int>? start;
  /// URI link reference.
  final pulumi.Input<String>? uri;

  /// Creates a new [GoogleCloudDiscoveryengineV1alphaReplyReference].
  /// [anchorText] Anchor text.
  /// [end] Anchor text end index.
  /// [start] Anchor text start index.
  /// [uri] URI link reference.
  GoogleCloudDiscoveryengineV1alphaReplyReference({
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

  factory GoogleCloudDiscoveryengineV1alphaReplyReference.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDiscoveryengineV1alphaReplyReference(
      anchorText: map['anchorText'] == null ? null : (map['anchorText'] as String).input(),
      end: map['end'] == null ? null : (map['end'] as int).input(),
      start: map['start'] == null ? null : (map['start'] as int).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}


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
  const GoogleCloudDiscoveryengineV1alphaReplyReference({
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
      anchorText: (() { final guardedValue = map['anchorText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


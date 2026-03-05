// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An URI message.
class URIResponse {
  /// A label for the URI.
  final pulumi.Input<String> label;
  /// The unique resource identifier.
  final pulumi.Input<String> uri;

  /// Creates a new [URIResponse].
  /// [label] A label for the URI.
  /// [uri] The unique resource identifier.
  URIResponse({
    required this.label,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'uri': uri,
    };
  }

  factory URIResponse.fromMap(Map<String, dynamic> map) {
    return URIResponse(
      label: pulumi.Input.fromValue(map['label'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}


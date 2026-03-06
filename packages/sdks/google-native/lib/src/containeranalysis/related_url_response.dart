// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for any related URL information.
class RelatedUrlResponse {
  /// Label to describe usage of the URL.
  final pulumi.Input<String> label;
  /// Specific URL associated with the resource.
  final pulumi.Input<String> url;

  /// Creates a new [RelatedUrlResponse].
  /// [label] Label to describe usage of the URL.
  /// [url] Specific URL associated with the resource.
  const RelatedUrlResponse({
    required this.label,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'url': url,
    };
  }

  factory RelatedUrlResponse.fromMap(Map<String, dynamic> map) {
    return RelatedUrlResponse(
      label: pulumi.Input.fromValue(map['label'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}


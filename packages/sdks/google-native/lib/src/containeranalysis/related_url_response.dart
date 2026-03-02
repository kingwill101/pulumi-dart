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
  RelatedUrlResponse({
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
      label: (map['label'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}


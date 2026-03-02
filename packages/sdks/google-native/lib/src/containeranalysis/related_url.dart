// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for any related URL information.
class RelatedUrl {
  /// Label to describe usage of the URL.
  final pulumi.Input<String>? label;
  /// Specific URL associated with the resource.
  final pulumi.Input<String>? url;

  /// Creates a new [RelatedUrl].
  /// [label] Label to describe usage of the URL.
  /// [url] Specific URL associated with the resource.
  RelatedUrl({
    this.label,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': ?label,
      'url': ?url,
    };
  }

  factory RelatedUrl.fromMap(Map<String, dynamic> map) {
    return RelatedUrl(
      label: map['label'] == null ? null : (map['label'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}


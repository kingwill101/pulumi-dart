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
  const RelatedUrl({
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
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

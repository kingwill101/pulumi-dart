// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a URL link.
class HelpLinkResponseComputeBeta {
  /// Describes what the link offers.
  final pulumi.Input<String> description;
  /// The URL of the link.
  final pulumi.Input<String> url;

  /// Creates a new [HelpLinkResponseComputeBeta].
  /// [description] Describes what the link offers.
  /// [url] The URL of the link.
  const HelpLinkResponseComputeBeta({
    required this.description,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'url': url,
    };
  }

  factory HelpLinkResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return HelpLinkResponseComputeBeta(
      description: pulumi.Input.fromValue(map['description'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

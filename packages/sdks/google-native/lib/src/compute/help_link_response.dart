// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a URL link.
class HelpLinkResponse {
  /// Describes what the link offers.
  final pulumi.Input<String> description;
  /// The URL of the link.
  final pulumi.Input<String> url;

  /// Creates a new [HelpLinkResponse].
  /// [description] Describes what the link offers.
  /// [url] The URL of the link.
  HelpLinkResponse({
    required this.description,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'url': url,
    };
  }

  factory HelpLinkResponse.fromMap(Map<String, dynamic> map) {
    return HelpLinkResponse(
      description: (map['description'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}


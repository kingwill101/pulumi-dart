// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a URL link.
class LinkResponse {
  /// Describes what the link offers.
  final pulumi.Input<String> description;
  /// The URL of the link.
  final pulumi.Input<String> url;

  /// Creates a new [LinkResponse].
  /// [description] Describes what the link offers.
  /// [url] The URL of the link.
  LinkResponse({
    required this.description,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'url': url,
    };
  }

  factory LinkResponse.fromMap(Map<String, dynamic> map) {
    return LinkResponse(
      description: (map['description'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}


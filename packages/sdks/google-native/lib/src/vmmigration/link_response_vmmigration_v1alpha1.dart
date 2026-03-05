// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a URL link.
class LinkResponseVmmigrationV1alpha1 {
  /// Describes what the link offers.
  final pulumi.Input<String> description;
  /// The URL of the link.
  final pulumi.Input<String> url;

  /// Creates a new [LinkResponseVmmigrationV1alpha1].
  /// [description] Describes what the link offers.
  /// [url] The URL of the link.
  LinkResponseVmmigrationV1alpha1({
    required this.description,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'url': url,
    };
  }

  factory LinkResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return LinkResponseVmmigrationV1alpha1(
      description: pulumi.Input.fromValue(map['description'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}


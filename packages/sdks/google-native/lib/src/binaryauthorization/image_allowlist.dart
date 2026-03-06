// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Images that are exempted from normal checks based on name pattern only.
class ImageAllowlist {
  /// A disjunction of image patterns to allow. If any of these patterns match, then the image is considered exempted by this allowlist.
  final pulumi.Input<List<String>> allowPattern;

  /// Creates a new [ImageAllowlist].
  /// [allowPattern] A disjunction of image patterns to allow. If any of these patterns match, then the image is considered exempted by this allowlist.
  const ImageAllowlist({
    required this.allowPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPattern': allowPattern,
    };
  }

  factory ImageAllowlist.fromMap(Map<String, dynamic> map) {
    return ImageAllowlist(
      allowPattern: pulumi.Input.fromValue((map['allowPattern'] as List).cast<String>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Images that are exempted from normal checks based on name pattern only.
class ImageAllowlistResponse {
  /// A disjunction of image patterns to allow. If any of these patterns match, then the image is considered exempted by this allowlist.
  final pulumi.Input<List<String>> allowPattern;

  /// Creates a new [ImageAllowlistResponse].
  /// [allowPattern] A disjunction of image patterns to allow. If any of these patterns match, then the image is considered exempted by this allowlist.
  ImageAllowlistResponse({
    required this.allowPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPattern': allowPattern,
    };
  }

  factory ImageAllowlistResponse.fromMap(Map<String, dynamic> map) {
    return ImageAllowlistResponse(
      allowPattern: pulumi.Input.fromValue((map['allowPattern'] as List).cast<String>()),
    );
  }
}


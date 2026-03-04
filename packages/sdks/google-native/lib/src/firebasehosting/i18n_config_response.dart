// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// If provided, i18n rewrites are enabled.
class I18nConfigResponse {
  /// The user-supplied path where country and language specific content will be looked for within the public directory.
  final pulumi.Input<String> root;

  /// Creates a new [I18nConfigResponse].
  /// [root] The user-supplied path where country and language specific content will be looked for within the public directory.
  I18nConfigResponse({required this.root});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'root': root};
  }

  factory I18nConfigResponse.fromMap(Map<String, dynamic> map) {
    return I18nConfigResponse(
      root: pulumi.Input.fromValue(map['root'] as String),
    );
  }
}

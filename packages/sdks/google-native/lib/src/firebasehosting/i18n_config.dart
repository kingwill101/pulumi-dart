// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// If provided, i18n rewrites are enabled.
class I18nConfig {
  /// The user-supplied path where country and language specific content will be looked for within the public directory.
  final pulumi.Input<String> root;

  /// Creates a new [I18nConfig].
  /// [root] The user-supplied path where country and language specific content will be looked for within the public directory.
  I18nConfig({
    required this.root,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'root': root,
    };
  }

  factory I18nConfig.fromMap(Map<String, dynamic> map) {
    return I18nConfig(
      root: (map['root'] as String).input(),
    );
  }
}


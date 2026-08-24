// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersAutominify {
  /// Whether to minify CSS files.
  final pulumi.Input<bool> css;
  /// Whether to minify HTML files.
  final pulumi.Input<bool> html;
  /// Whether to minify JavaScript files.
  final pulumi.Input<bool> js;

  /// Creates a new [GetRulesetRuleActionParametersAutominify].
  /// [css] Whether to minify CSS files.
  /// [html] Whether to minify HTML files.
  /// [js] Whether to minify JavaScript files.
  const GetRulesetRuleActionParametersAutominify({
    required this.css,
    required this.html,
    required this.js,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'css': css,
      'html': html,
      'js': js,
    };
  }

  factory GetRulesetRuleActionParametersAutominify.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersAutominify(
      css: pulumi.Input.fromValue(map['css'] as bool),
      html: pulumi.Input.fromValue(map['html'] as bool),
      js: pulumi.Input.fromValue(map['js'] as bool),
    );
  }
}

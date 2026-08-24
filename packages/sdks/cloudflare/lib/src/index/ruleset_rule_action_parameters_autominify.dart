// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersAutominify {
  /// Whether to minify CSS files.
  final pulumi.Input<bool?>? css;
  /// Whether to minify HTML files.
  final pulumi.Input<bool?>? html;
  /// Whether to minify JavaScript files.
  final pulumi.Input<bool?>? js;

  /// Creates a new [RulesetRuleActionParametersAutominify].
  /// [css] Whether to minify CSS files.
  /// [html] Whether to minify HTML files.
  /// [js] Whether to minify JavaScript files.
  const RulesetRuleActionParametersAutominify({
    this.css,
    this.html,
    this.js,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'css': ?css,
      'html': ?html,
      'js': ?js,
    };
  }

  factory RulesetRuleActionParametersAutominify.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersAutominify(
      css: (() { final guardedValue = map['css']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      html: (() { final guardedValue = map['html']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      js: (() { final guardedValue = map['js']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

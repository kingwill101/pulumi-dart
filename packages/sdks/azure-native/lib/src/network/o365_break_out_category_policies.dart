// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Office365 breakout categories.
class O365BreakOutCategoryPolicies {
  /// Flag to control allow category.
  final pulumi.Input<bool>? allow;
  /// Flag to control default category.
  final pulumi.Input<bool>? default_;
  /// Flag to control optimize category.
  final pulumi.Input<bool>? optimize;

  /// Creates a new [O365BreakOutCategoryPolicies].
  /// [allow] Flag to control allow category.
  /// [default_] Flag to control default category.
  /// [optimize] Flag to control optimize category.
  O365BreakOutCategoryPolicies({
    this.allow,
    this.default_,
    this.optimize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow,
      'default': ?default_,
      'optimize': ?optimize,
    };
  }

  factory O365BreakOutCategoryPolicies.fromMap(Map<String, dynamic> map) {
    return O365BreakOutCategoryPolicies(
      allow: map['allow'] == null ? null : (map['allow']! as bool).input(),
      default_: map['default'] == null ? null : (map['default']! as bool).input(),
      optimize: map['optimize'] == null ? null : (map['optimize']! as bool).input(),
    );
  }
}


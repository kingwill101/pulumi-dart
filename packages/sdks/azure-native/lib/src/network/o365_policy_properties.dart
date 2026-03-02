// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'o365_break_out_category_policies.dart';

/// The Office365 breakout policy.
class O365PolicyProperties {
  /// Office365 breakout categories.
  final pulumi.Input<O365BreakOutCategoryPolicies>? breakOutCategories;

  /// Creates a new [O365PolicyProperties].
  /// [breakOutCategories] Office365 breakout categories.
  O365PolicyProperties({
    this.breakOutCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakOutCategories': ?pulumi.Input.mapOptionalInputValue<O365BreakOutCategoryPolicies, Map<String, dynamic>>(breakOutCategories, (value) => value.toMap()),
    };
  }

  factory O365PolicyProperties.fromMap(Map<String, dynamic> map) {
    return O365PolicyProperties(
      breakOutCategories: map['breakOutCategories'] == null ? null : (O365BreakOutCategoryPolicies.fromMap((map['breakOutCategories']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'break_out_category_policies.dart';

/// Network Virtual Appliance Sku Properties.
class Office365PolicyProperties {
  /// Office 365 breakout categories.
  final BreakOutCategoryPolicies? breakOutCategories;

  /// Creates a new [Office365PolicyProperties].
  /// [breakOutCategories] Office 365 breakout categories.
  Office365PolicyProperties({
    this.breakOutCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakOutCategories': ?breakOutCategories == null ? null : breakOutCategories!.toMap(),
    };
  }

  factory Office365PolicyProperties.fromMap(Map<String, dynamic> map) {
    return Office365PolicyProperties(
      breakOutCategories: map['breakOutCategories'] == null ? null : BreakOutCategoryPolicies.fromMap((map['breakOutCategories'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'break_out_category_policies.dart';

/// Network Virtual Appliance Sku Properties.
class Office365PolicyProperties {
  /// Office 365 breakout categories.
  final pulumi.Input<BreakOutCategoryPolicies>? breakOutCategories;

  /// Creates a new [Office365PolicyProperties].
  /// [breakOutCategories] Office 365 breakout categories.
  const Office365PolicyProperties({
    this.breakOutCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakOutCategories': ?pulumi.Input.mapOptionalInputValue<BreakOutCategoryPolicies, Map<String, dynamic>>(breakOutCategories, (value) => value.toMap()),
    };
  }

  factory Office365PolicyProperties.fromMap(Map<String, dynamic> map) {
    return Office365PolicyProperties(
      breakOutCategories: (() { final guardedValue = map['breakOutCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BreakOutCategoryPolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'break_out_category_policies_response.dart';

/// Network Virtual Appliance Sku Properties.
class Office365PolicyPropertiesResponse {
  /// Office 365 breakout categories.
  final pulumi.Input<BreakOutCategoryPoliciesResponse>? breakOutCategories;

  /// Creates a new [Office365PolicyPropertiesResponse].
  /// [breakOutCategories] Office 365 breakout categories.
  Office365PolicyPropertiesResponse({
    this.breakOutCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakOutCategories': ?pulumi.Input.mapOptionalInputValue<BreakOutCategoryPoliciesResponse, Map<String, dynamic>>(breakOutCategories, (value) => value.toMap()),
    };
  }

  factory Office365PolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return Office365PolicyPropertiesResponse(
      breakOutCategories: map['breakOutCategories'] == null ? null : (BreakOutCategoryPoliciesResponse.fromMap((map['breakOutCategories'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


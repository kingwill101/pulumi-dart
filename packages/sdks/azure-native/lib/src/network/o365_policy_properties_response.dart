// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'o365_break_out_category_policies_response.dart';

/// The Office365 breakout policy.
class O365PolicyPropertiesResponse {
  /// Office365 breakout categories.
  final pulumi.Input<O365BreakOutCategoryPoliciesResponse?>? breakOutCategories;

  /// Creates a new [O365PolicyPropertiesResponse].
  /// [breakOutCategories] Office365 breakout categories.
  const O365PolicyPropertiesResponse({
    this.breakOutCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakOutCategories': ?pulumi.Input.mapOptionalInputValue<O365BreakOutCategoryPoliciesResponse, Map<String, dynamic>>(breakOutCategories, (value) => value.toMap()),
    };
  }

  factory O365PolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return O365PolicyPropertiesResponse(
      breakOutCategories: (() { final guardedValue = map['breakOutCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(O365BreakOutCategoryPoliciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

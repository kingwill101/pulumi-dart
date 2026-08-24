// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_page_shield_policies_get_page_shield_policies_args_doc}
/// Arguments for getPageShieldPolicies.
/// {@endtemplate}
/// {@macro pulumi_index_get_page_shield_policies_get_page_shield_policies_args_doc}
class GetPageShieldPoliciesArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetPageShieldPoliciesArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Identifier
  const GetPageShieldPoliciesArgs({
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetPageShieldPoliciesArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

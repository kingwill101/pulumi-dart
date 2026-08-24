// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dex_rules_get_zero_trust_dex_rules_args_doc}
/// Arguments for getZeroTrustDexRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dex_rules_get_zero_trust_dex_rules_args_doc}
class GetZeroTrustDexRulesArgs {
  /// Unique identifier linked to an account.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter results by rule name.
  final pulumi.Input<String?>? name;
  /// Which property to sort results by.
  /// Available values: "name", "created*at", "updated*at".
  final pulumi.Input<String?>? sortBy;
  /// Sort direction for sortBy property.
  /// Available values: "ASC", "DESC".
  final pulumi.Input<String?>? sortOrder;

  /// Creates a new [GetZeroTrustDexRulesArgs].
  /// [accountId] Unique identifier linked to an account.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter results by rule name.
  /// [sortBy] Which property to sort results by.
  /// [sortOrder] Sort direction for sortBy property.
  const GetZeroTrustDexRulesArgs({
    this.accountId,
    this.maxItems,
    this.name,
    this.sortBy,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'name': ?name,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetZeroTrustDexRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexRulesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortBy: (() { final guardedValue = map['sortBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

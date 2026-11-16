// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_cws_rego_modules_get_zero_trust_cws_rego_modules_args_doc}
/// Arguments for getZeroTrustCwsRegoModules.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_rego_modules_get_zero_trust_cws_rego_modules_args_doc}
class GetZeroTrustCwsRegoModulesArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter by Rego module name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String?>? order;
  /// Filter by package path (case-sensitive literal substring match)
  final pulumi.Input<String?>? packagePath;

  /// Creates a new [GetZeroTrustCwsRegoModulesArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [direction] Sort direction (default: asc)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by Rego module name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  /// [packagePath] Filter by package path (case-sensitive literal substring match)
  const GetZeroTrustCwsRegoModulesArgs({
    required this.accountId,
    this.direction,
    this.maxItems,
    this.name,
    this.order,
    this.packagePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'name': ?name,
      'order': ?order,
      'packagePath': ?packagePath,
    };
  }

  factory GetZeroTrustCwsRegoModulesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsRegoModulesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packagePath: (() { final guardedValue = map['packagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_cws_rego_metadata_list_get_zero_trust_cws_rego_metadata_list_args_doc}
/// Arguments for getZeroTrustCwsRegoMetadataList.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_rego_metadata_list_get_zero_trust_cws_rego_metadata_list_args_doc}
class GetZeroTrustCwsRegoMetadataListArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Sort direction (default: asc)
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter by import path (case-sensitive literal substring match)
  final pulumi.Input<String?>? importPath;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter by rego metadata name (case-insensitive substring match)
  final pulumi.Input<String?>? name;
  /// Field to order results by (default: created*at)
  /// Available values: "name", "created*at", "updatedAt".
  final pulumi.Input<String?>? order;

  /// Creates a new [GetZeroTrustCwsRegoMetadataListArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [direction] Sort direction (default: asc)
  /// [importPath] Filter by import path (case-sensitive literal substring match)
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by rego metadata name (case-insensitive substring match)
  /// [order] Field to order results by (default: created*at)
  const GetZeroTrustCwsRegoMetadataListArgs({
    required this.accountId,
    this.direction,
    this.importPath,
    this.maxItems,
    this.name,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'importPath': ?importPath,
      'maxItems': ?maxItems,
      'name': ?name,
      'order': ?order,
    };
  }

  factory GetZeroTrustCwsRegoMetadataListArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsRegoMetadataListArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      importPath: (() { final guardedValue = map['importPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_resource_library_categories_get_zero_trust_resource_library_categories_args_doc}
/// Arguments for getZeroTrustResourceLibraryCategories.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_resource_library_categories_get_zero_trust_resource_library_categories_args_doc}
class GetZeroTrustResourceLibraryCategoriesArgs {
  final pulumi.Input<String> accountId;
  /// Number of results to return. Defaults to 25; values are clamped to 1–250.
  final pulumi.Input<int?>? limit;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Number of results to skip. Defaults to 0; negative values are clamped to 0.
  final pulumi.Input<int?>? offset;

  /// Creates a new [GetZeroTrustResourceLibraryCategoriesArgs].
  /// [accountId] Required.
  /// [limit] Number of results to return. Defaults to 25; values are clamped to 1–250.
  /// [maxItems] Max items to fetch, default: 1000
  /// [offset] Number of results to skip. Defaults to 0; negative values are clamped to 0.
  const GetZeroTrustResourceLibraryCategoriesArgs({
    required this.accountId,
    this.limit,
    this.maxItems,
    this.offset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'limit': ?limit,
      'maxItems': ?maxItems,
      'offset': ?offset,
    };
  }

  factory GetZeroTrustResourceLibraryCategoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryCategoriesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

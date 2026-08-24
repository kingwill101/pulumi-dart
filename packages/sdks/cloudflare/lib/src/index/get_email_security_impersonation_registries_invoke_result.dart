// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_security_impersonation_registries_result.dart';

/// Result data returned by getEmailSecurityImpersonationRegistries.
class GetEmailSecurityImpersonationRegistriesInvokeResult {
  /// Identifier.
  final String? accountId;
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Field to sort by.
  /// Available values: "name", "email", "createdAt".
  final String? order;
  /// Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  final String? provenance;
  /// The items returned by the data source
  final List<GetEmailSecurityImpersonationRegistriesResult>? results;
  /// Search term for filtering records. Behavior may change.
  final String? search;

  /// Creates a new [GetEmailSecurityImpersonationRegistriesInvokeResult].
  /// [accountId] Identifier.
  /// [direction] The sorting direction.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to sort by.
  /// [provenance] Available values: "A1S*INTERNAL", "SNOOPY-CASB*OFFICE*365", "SNOOPY-OFFICE*365", "SNOOPY-GOOGLE_DIRECTORY".
  /// [results] The items returned by the data source
  /// [search] Search term for filtering records. Behavior may change.
  const GetEmailSecurityImpersonationRegistriesInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.order,
    this.provenance,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'provenance': ?provenance,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailSecurityImpersonationRegistriesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetEmailSecurityImpersonationRegistriesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityImpersonationRegistriesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provenance: (() { final guardedValue = map['provenance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailSecurityImpersonationRegistriesResult>(guardedValue, (value) => GetEmailSecurityImpersonationRegistriesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

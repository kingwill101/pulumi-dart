// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_applications_result.dart';

/// Result data returned by getZeroTrustAccessApplications.
class GetZeroTrustAccessApplicationsInvokeResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// The aud of the app.
  final String? aud;
  /// The domain of the app.
  final String? domain;
  /// True for only exact string matches against passed name/domain query parameters.
  final bool? exact;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The name of the app.
  final String? name;
  /// The items returned by the data source
  final List<GetZeroTrustAccessApplicationsResult>? results;
  /// Search for apps by other listed query parameters.
  final String? search;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustAccessApplicationsInvokeResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [aud] The aud of the app.
  /// [domain] The domain of the app.
  /// [exact] True for only exact string matches against passed name/domain query parameters.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] The name of the app.
  /// [results] The items returned by the data source
  /// [search] Search for apps by other listed query parameters.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessApplicationsInvokeResult({
    this.accountId,
    this.aud,
    this.domain,
    this.exact,
    this.maxItems,
    this.name,
    this.results,
    this.search,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aud': ?aud,
      'domain': ?domain,
      'exact': ?exact,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessApplicationsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessApplicationsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aud: (() { final guardedValue = map['aud']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessApplicationsResult>(guardedValue, (value) => GetZeroTrustAccessApplicationsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

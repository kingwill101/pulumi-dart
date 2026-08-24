// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_page_shield_cookies_list_result.dart';

/// Result data returned by getPageShieldCookiesList.
class GetPageShieldCookiesListInvokeResult {
  /// The direction used to sort returned cookies.'
  /// Available values: "asc", "desc".
  final String? direction;
  /// Filters the returned cookies that match the specified domain attribute
  final String? domain;
  /// Export the list of cookies as a file, limited to 50000 entries.
  /// Available values: "csv".
  final String? export;
  /// Includes cookies that match one or more URL-encoded hostnames separated by commas.
  final String? hosts;
  final bool? httpOnly;
  final int? maxItems;
  final String? name;
  final String? orderBy;
  final String? page;
  final String? pageUrl;
  final String? path;
  final double? perPage;
  final List<GetPageShieldCookiesListResult>? results;
  final String? sameSite;
  final bool? secure;
  final String? type;
  final String? zoneId;

  /// Creates a new [GetPageShieldCookiesListInvokeResult].
  /// [direction] The direction used to sort returned cookies.'
  /// [domain] Filters the returned cookies that match the specified domain attribute
  /// [export] Export the list of cookies as a file, limited to 50000 entries.
  /// [hosts] Includes cookies that match one or more URL-encoded hostnames separated by commas.
  /// [httpOnly] Optional.
  /// [maxItems] Optional.
  /// [name] Optional.
  /// [orderBy] Optional.
  /// [page] Optional.
  /// [pageUrl] Optional.
  /// [path] Optional.
  /// [perPage] Optional.
  /// [results] Optional.
  /// [sameSite] Optional.
  /// [secure] Optional.
  /// [type] Optional.
  /// [zoneId] Optional.
  const GetPageShieldCookiesListInvokeResult({
    this.direction,
    this.domain,
    this.export,
    this.hosts,
    this.httpOnly,
    this.maxItems,
    this.name,
    this.orderBy,
    this.page,
    this.pageUrl,
    this.path,
    this.perPage,
    this.results,
    this.sameSite,
    this.secure,
    this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'domain': ?domain,
      'export': ?export,
      'hosts': ?hosts,
      'httpOnly': ?httpOnly,
      'maxItems': ?maxItems,
      'name': ?name,
      'orderBy': ?orderBy,
      'page': ?page,
      'pageUrl': ?pageUrl,
      'path': ?path,
      'perPage': ?perPage,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPageShieldCookiesListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sameSite': ?sameSite,
      'secure': ?secure,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldCookiesListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetPageShieldCookiesListInvokeResult(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpOnly: (() { final guardedValue = map['httpOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageUrl: (() { final guardedValue = map['pageUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPageShieldCookiesListResult>(guardedValue, (value) => GetPageShieldCookiesListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      sameSite: (() { final guardedValue = map['sameSite']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secure: (() { final guardedValue = map['secure']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

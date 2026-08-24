// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_page_shield_cookies_list_get_page_shield_cookies_list_args_doc}
/// Arguments for getPageShieldCookiesList.
/// {@endtemplate}
/// {@macro pulumi_index_get_page_shield_cookies_list_get_page_shield_cookies_list_args_doc}
class GetPageShieldCookiesListArgs {
  /// The direction used to sort returned cookies.'
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filters the returned cookies that match the specified domain attribute
  final pulumi.Input<String?>? domain;
  /// Export the list of cookies as a file, limited to 50000 entries.
  /// Available values: "csv".
  final pulumi.Input<String?>? export;
  /// Includes cookies that match one or more URL-encoded hostnames separated by commas.
  final pulumi.Input<String?>? hosts;
  final pulumi.Input<bool?>? httpOnly;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? orderBy;
  final pulumi.Input<String?>? page;
  final pulumi.Input<String?>? pageUrl;
  final pulumi.Input<String?>? path;
  final pulumi.Input<double?>? perPage;
  final pulumi.Input<String?>? sameSite;
  final pulumi.Input<bool?>? secure;
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetPageShieldCookiesListArgs].
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
  /// [sameSite] Optional.
  /// [secure] Optional.
  /// [type] Optional.
  /// [zoneId] Optional.
  const GetPageShieldCookiesListArgs({
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
      'sameSite': ?sameSite,
      'secure': ?secure,
      'type': ?type,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldCookiesListArgs.fromMap(Map<String, dynamic> map) {
    return GetPageShieldCookiesListArgs(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpOnly: (() { final guardedValue = map['httpOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageUrl: (() { final guardedValue = map['pageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sameSite: (() { final guardedValue = map['sameSite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secure: (() { final guardedValue = map['secure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

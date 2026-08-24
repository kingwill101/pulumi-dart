// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_page_shield_connections_list_get_page_shield_connections_list_args_doc}
/// Arguments for getPageShieldConnectionsList.
/// {@endtemplate}
/// {@macro pulumi_index_get_page_shield_connections_list_get_page_shield_connections_list_args_doc}
class GetPageShieldConnectionsListArgs {
  /// The direction used to sort returned connections.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// When true, excludes connections seen in a `/cdn-cgi` path from the returned connections. The default value is true.
  final pulumi.Input<bool?>? excludeCdnCgi;
  /// Excludes connections whose URL contains one of the URL-encoded URLs separated by commas.
  final pulumi.Input<String?>? excludeUrls;
  /// Export the list of connections as a file, limited to 50000 entries.
  /// Available values: "csv".
  final pulumi.Input<String?>? export;
  /// Includes connections that match one or more URL-encoded hostnames separated by commas.
  final pulumi.Input<String?>? hosts;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String?>? orderBy;
  final pulumi.Input<String?>? page;
  final pulumi.Input<String?>? pageUrl;
  final pulumi.Input<double?>? perPage;
  final pulumi.Input<bool?>? prioritizeMalicious;
  final pulumi.Input<String?>? status;
  final pulumi.Input<String?>? urls;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetPageShieldConnectionsListArgs].
  /// [direction] The direction used to sort returned connections.
  /// [excludeCdnCgi] When true, excludes connections seen in a `/cdn-cgi` path from the returned connections. The default value is true.
  /// [excludeUrls] Excludes connections whose URL contains one of the URL-encoded URLs separated by commas.
  /// [export] Export the list of connections as a file, limited to 50000 entries.
  /// [hosts] Includes connections that match one or more URL-encoded hostnames separated by commas.
  /// [maxItems] Optional.
  /// [orderBy] Optional.
  /// [page] Optional.
  /// [pageUrl] Optional.
  /// [perPage] Optional.
  /// [prioritizeMalicious] Optional.
  /// [status] Optional.
  /// [urls] Optional.
  /// [zoneId] Optional.
  const GetPageShieldConnectionsListArgs({
    this.direction,
    this.excludeCdnCgi,
    this.excludeUrls,
    this.export,
    this.hosts,
    this.maxItems,
    this.orderBy,
    this.page,
    this.pageUrl,
    this.perPage,
    this.prioritizeMalicious,
    this.status,
    this.urls,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'excludeCdnCgi': ?excludeCdnCgi,
      'excludeUrls': ?excludeUrls,
      'export': ?export,
      'hosts': ?hosts,
      'maxItems': ?maxItems,
      'orderBy': ?orderBy,
      'page': ?page,
      'pageUrl': ?pageUrl,
      'perPage': ?perPage,
      'prioritizeMalicious': ?prioritizeMalicious,
      'status': ?status,
      'urls': ?urls,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldConnectionsListArgs.fromMap(Map<String, dynamic> map) {
    return GetPageShieldConnectionsListArgs(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeCdnCgi: (() { final guardedValue = map['excludeCdnCgi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludeUrls: (() { final guardedValue = map['excludeUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageUrl: (() { final guardedValue = map['pageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      prioritizeMalicious: (() { final guardedValue = map['prioritizeMalicious']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

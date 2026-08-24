// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_page_shield_scripts_list_result.dart';

/// Result data returned by getPageShieldScriptsList.
class GetPageShieldScriptsListInvokeResult {
  /// The direction used to sort returned scripts.
  /// Available values: "asc", "desc".
  final String? direction;
  /// When true, excludes scripts seen in a `/cdn-cgi` path from the returned scripts. The default value is true.
  final bool? excludeCdnCgi;
  /// When true, excludes duplicate scripts. We consider a script duplicate of another if their javascript
  /// content matches and they share the same url host and zone hostname. In such case, we return the most
  /// recent script for the URL host and zone hostname combination.
  final bool? excludeDuplicates;
  /// Excludes scripts whose URL contains one of the URL-encoded URLs separated by commas.
  final String? excludeUrls;
  /// Export the list of scripts as a file, limited to 50000 entries.
  /// Available values: "csv".
  final String? export;
  /// Includes scripts that match one or more URL-encoded hostnames separated by commas.
  final String? hosts;
  final int? maxItems;
  final String? orderBy;
  final String? page;
  final String? pageUrl;
  final double? perPage;
  final bool? prioritizeMalicious;
  final List<GetPageShieldScriptsListResult>? results;
  final String? status;
  final String? urls;
  final String? zoneId;

  /// Creates a new [GetPageShieldScriptsListInvokeResult].
  /// [direction] The direction used to sort returned scripts.
  /// [excludeCdnCgi] When true, excludes scripts seen in a `/cdn-cgi` path from the returned scripts. The default value is true.
  /// [excludeDuplicates] When true, excludes duplicate scripts. We consider a script duplicate of another if their javascript
  /// [excludeUrls] Excludes scripts whose URL contains one of the URL-encoded URLs separated by commas.
  /// [export] Export the list of scripts as a file, limited to 50000 entries.
  /// [hosts] Includes scripts that match one or more URL-encoded hostnames separated by commas.
  /// [maxItems] Optional.
  /// [orderBy] Optional.
  /// [page] Optional.
  /// [pageUrl] Optional.
  /// [perPage] Optional.
  /// [prioritizeMalicious] Optional.
  /// [results] Optional.
  /// [status] Optional.
  /// [urls] Optional.
  /// [zoneId] Optional.
  const GetPageShieldScriptsListInvokeResult({
    this.direction,
    this.excludeCdnCgi,
    this.excludeDuplicates,
    this.excludeUrls,
    this.export,
    this.hosts,
    this.maxItems,
    this.orderBy,
    this.page,
    this.pageUrl,
    this.perPage,
    this.prioritizeMalicious,
    this.results,
    this.status,
    this.urls,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'excludeCdnCgi': ?excludeCdnCgi,
      'excludeDuplicates': ?excludeDuplicates,
      'excludeUrls': ?excludeUrls,
      'export': ?export,
      'hosts': ?hosts,
      'maxItems': ?maxItems,
      'orderBy': ?orderBy,
      'page': ?page,
      'pageUrl': ?pageUrl,
      'perPage': ?perPage,
      'prioritizeMalicious': ?prioritizeMalicious,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPageShieldScriptsListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'urls': ?urls,
      'zoneId': ?zoneId,
    };
  }

  factory GetPageShieldScriptsListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetPageShieldScriptsListInvokeResult(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludeCdnCgi: (() { final guardedValue = map['excludeCdnCgi']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludeDuplicates: (() { final guardedValue = map['excludeDuplicates']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludeUrls: (() { final guardedValue = map['excludeUrls']; if (guardedValue == null) return null; return guardedValue as String; })(),
      export: (() { final guardedValue = map['export']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageUrl: (() { final guardedValue = map['pageUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      prioritizeMalicious: (() { final guardedValue = map['prioritizeMalicious']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPageShieldScriptsListResult>(guardedValue, (value) => GetPageShieldScriptsListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

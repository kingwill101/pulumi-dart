// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pages_domains_result.dart';

/// Result data returned by getPagesDomains.
class GetPagesDomainsInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Name of the project.
  final String? projectName;
  /// The items returned by the data source
  final List<GetPagesDomainsResult>? results;

  /// Creates a new [GetPagesDomainsInvokeResult].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [projectName] Name of the project.
  /// [results] The items returned by the data source
  const GetPagesDomainsInvokeResult({
    this.accountId,
    this.maxItems,
    this.projectName,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'projectName': ?projectName,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPagesDomainsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPagesDomainsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetPagesDomainsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPagesDomainsResult>(guardedValue, (value) => GetPagesDomainsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

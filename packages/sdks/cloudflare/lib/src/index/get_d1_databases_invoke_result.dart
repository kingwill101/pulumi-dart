// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_d1_databases_result.dart';

/// Result data returned by getD1Databases.
class GetD1DatabasesInvokeResult {
  /// Account identifier tag.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// a database name to search for.
  final String? name;
  /// The items returned by the data source
  final List<GetD1DatabasesResult>? results;

  /// Creates a new [GetD1DatabasesInvokeResult].
  /// [accountId] Account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] a database name to search for.
  /// [results] The items returned by the data source
  const GetD1DatabasesInvokeResult({
    this.accountId,
    this.maxItems,
    this.name,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetD1DatabasesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetD1DatabasesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetD1DatabasesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetD1DatabasesResult>(guardedValue, (value) => GetD1DatabasesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

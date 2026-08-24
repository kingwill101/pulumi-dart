// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lists_result.dart';

/// Result data returned by getLists.
class GetListsInvokeResult {
  /// The Account ID for this resource.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetListsResult>? results;

  /// Creates a new [GetListsInvokeResult].
  /// [accountId] The Account ID for this resource.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetListsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetListsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetListsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetListsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetListsResult>(guardedValue, (value) => GetListsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

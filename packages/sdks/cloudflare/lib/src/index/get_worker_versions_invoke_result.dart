// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_versions_result.dart';

/// Result data returned by getWorkerVersions.
class GetWorkerVersionsInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetWorkerVersionsResult>? results;
  /// Identifier for the Worker, which can be ID or name.
  final String? workerId;

  /// Creates a new [GetWorkerVersionsInvokeResult].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [workerId] Identifier for the Worker, which can be ID or name.
  const GetWorkerVersionsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkerVersionsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'workerId': ?workerId,
    };
  }

  factory GetWorkerVersionsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkerVersionsResult>(guardedValue, (value) => GetWorkerVersionsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      workerId: (() { final guardedValue = map['workerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

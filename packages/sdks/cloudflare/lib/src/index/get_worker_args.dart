// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_filter.dart';

/// {@template pulumi_index_get_worker_get_worker_args_doc}
/// Arguments for getWorker.
/// {@endtemplate}
/// {@macro pulumi_index_get_worker_get_worker_args_doc}
class GetWorkerArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetWorkerFilter?>? filter;
  /// Identifier for the Worker, which can be ID or name.
  final pulumi.Input<String?>? workerId;

  /// Creates a new [GetWorkerArgs].
  /// [accountId] Identifier.
  /// [filter] Optional.
  /// [workerId] Identifier for the Worker, which can be ID or name.
  const GetWorkerArgs({
    this.accountId,
    this.filter,
    this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetWorkerFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'workerId': ?workerId,
    };
  }

  factory GetWorkerArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetWorkerFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workerId: (() { final guardedValue = map['workerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

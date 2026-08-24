// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_worker_versions_get_worker_versions_args_doc}
/// Arguments for getWorkerVersions.
/// {@endtemplate}
/// {@macro pulumi_index_get_worker_versions_get_worker_versions_args_doc}
class GetWorkerVersionsArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Identifier for the Worker, which can be ID or name.
  final pulumi.Input<String> workerId;

  /// Creates a new [GetWorkerVersionsArgs].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [workerId] Identifier for the Worker, which can be ID or name.
  const GetWorkerVersionsArgs({
    this.accountId,
    this.maxItems,
    required this.workerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'workerId': workerId,
    };
  }

  factory GetWorkerVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
    );
  }
}

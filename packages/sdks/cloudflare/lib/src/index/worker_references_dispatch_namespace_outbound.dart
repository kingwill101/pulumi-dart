// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerReferencesDispatchNamespaceOutbound {
  /// ID of the dispatch namespace.
  final pulumi.Input<String?>? namespaceId;
  /// Name of the dispatch namespace.
  final pulumi.Input<String?>? namespaceName;
  /// ID of the Worker using the dispatch namespace.
  final pulumi.Input<String?>? workerId;
  /// Name of the Worker using the dispatch namespace.
  final pulumi.Input<String?>? workerName;

  /// Creates a new [WorkerReferencesDispatchNamespaceOutbound].
  /// [namespaceId] ID of the dispatch namespace.
  /// [namespaceName] Name of the dispatch namespace.
  /// [workerId] ID of the Worker using the dispatch namespace.
  /// [workerName] Name of the Worker using the dispatch namespace.
  const WorkerReferencesDispatchNamespaceOutbound({
    this.namespaceId,
    this.namespaceName,
    this.workerId,
    this.workerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': ?namespaceId,
      'namespaceName': ?namespaceName,
      'workerId': ?workerId,
      'workerName': ?workerName,
    };
  }

  factory WorkerReferencesDispatchNamespaceOutbound.fromMap(Map<String, dynamic> map) {
    return WorkerReferencesDispatchNamespaceOutbound(
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerId: (() { final guardedValue = map['workerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerName: (() { final guardedValue = map['workerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

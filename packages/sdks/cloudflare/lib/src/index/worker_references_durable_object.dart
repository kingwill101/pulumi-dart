// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerReferencesDurableObject {
  /// ID of the Durable Object namespace being used.
  final pulumi.Input<String?>? namespaceId;
  /// Name of the Durable Object namespace being used.
  final pulumi.Input<String?>? namespaceName;
  /// ID of the Worker using the Durable Object implementation.
  final pulumi.Input<String?>? workerId;
  /// Name of the Worker using the Durable Object implementation.
  final pulumi.Input<String?>? workerName;

  /// Creates a new [WorkerReferencesDurableObject].
  /// [namespaceId] ID of the Durable Object namespace being used.
  /// [namespaceName] Name of the Durable Object namespace being used.
  /// [workerId] ID of the Worker using the Durable Object implementation.
  /// [workerName] Name of the Worker using the Durable Object implementation.
  const WorkerReferencesDurableObject({
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

  factory WorkerReferencesDurableObject.fromMap(Map<String, dynamic> map) {
    return WorkerReferencesDurableObject(
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerId: (() { final guardedValue = map['workerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerName: (() { final guardedValue = map['workerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerReferencesDurableObject {
  /// ID of the Durable Object namespace being used.
  final pulumi.Input<String> namespaceId;
  /// Name of the Durable Object namespace being used.
  final pulumi.Input<String> namespaceName;
  /// ID of the Worker using the Durable Object implementation.
  final pulumi.Input<String> workerId;
  /// Name of the Worker using the Durable Object implementation.
  final pulumi.Input<String> workerName;

  /// Creates a new [GetWorkerReferencesDurableObject].
  /// [namespaceId] ID of the Durable Object namespace being used.
  /// [namespaceName] Name of the Durable Object namespace being used.
  /// [workerId] ID of the Worker using the Durable Object implementation.
  /// [workerName] Name of the Worker using the Durable Object implementation.
  const GetWorkerReferencesDurableObject({
    required this.namespaceId,
    required this.namespaceName,
    required this.workerId,
    required this.workerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
      'namespaceName': namespaceName,
      'workerId': workerId,
      'workerName': workerName,
    };
  }

  factory GetWorkerReferencesDurableObject.fromMap(Map<String, dynamic> map) {
    return GetWorkerReferencesDurableObject(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
      workerName: pulumi.Input.fromValue(map['workerName'] as String),
    );
  }
}

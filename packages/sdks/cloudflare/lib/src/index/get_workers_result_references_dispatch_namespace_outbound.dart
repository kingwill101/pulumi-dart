// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersResultReferencesDispatchNamespaceOutbound {
  /// ID of the dispatch namespace.
  final pulumi.Input<String> namespaceId;
  /// Name of the dispatch namespace.
  final pulumi.Input<String> namespaceName;
  /// ID of the Worker using the dispatch namespace.
  final pulumi.Input<String> workerId;
  /// Name of the Worker using the dispatch namespace.
  final pulumi.Input<String> workerName;

  /// Creates a new [GetWorkersResultReferencesDispatchNamespaceOutbound].
  /// [namespaceId] ID of the dispatch namespace.
  /// [namespaceName] Name of the dispatch namespace.
  /// [workerId] ID of the Worker using the dispatch namespace.
  /// [workerName] Name of the Worker using the dispatch namespace.
  const GetWorkersResultReferencesDispatchNamespaceOutbound({
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

  factory GetWorkersResultReferencesDispatchNamespaceOutbound.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultReferencesDispatchNamespaceOutbound(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      workerId: pulumi.Input.fromValue(map['workerId'] as String),
      workerName: pulumi.Input.fromValue(map['workerName'] as String),
    );
  }
}

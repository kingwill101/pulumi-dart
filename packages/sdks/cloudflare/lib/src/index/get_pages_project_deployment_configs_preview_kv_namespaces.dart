// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewKvNamespaces {
  /// ID of the KV namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewKvNamespaces].
  /// [namespaceId] ID of the KV namespace.
  const GetPagesProjectDeploymentConfigsPreviewKvNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewKvNamespaces.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewKvNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewKvNamespaces {
  /// ID of the KV namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewKvNamespaces].
  /// [namespaceId] ID of the KV namespace.
  const PagesProjectDeploymentConfigsPreviewKvNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewKvNamespaces.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewKvNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}

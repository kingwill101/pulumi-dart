// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewDurableObjectNamespaces {
  /// ID of the Durable Object namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewDurableObjectNamespaces].
  /// [namespaceId] ID of the Durable Object namespace.
  const PagesProjectDeploymentConfigsPreviewDurableObjectNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewDurableObjectNamespaces.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewDurableObjectNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}

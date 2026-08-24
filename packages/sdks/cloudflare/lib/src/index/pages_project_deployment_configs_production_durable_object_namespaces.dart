// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionDurableObjectNamespaces {
  /// ID of the Durable Object namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [PagesProjectDeploymentConfigsProductionDurableObjectNamespaces].
  /// [namespaceId] ID of the Durable Object namespace.
  const PagesProjectDeploymentConfigsProductionDurableObjectNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory PagesProjectDeploymentConfigsProductionDurableObjectNamespaces.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionDurableObjectNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}

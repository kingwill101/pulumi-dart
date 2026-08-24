// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionKvNamespaces {
  /// ID of the KV namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [PagesProjectDeploymentConfigsProductionKvNamespaces].
  /// [namespaceId] ID of the KV namespace.
  const PagesProjectDeploymentConfigsProductionKvNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory PagesProjectDeploymentConfigsProductionKvNamespaces.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionKvNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}

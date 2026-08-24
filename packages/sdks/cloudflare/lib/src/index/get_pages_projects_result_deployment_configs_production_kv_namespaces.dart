// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionKvNamespaces {
  /// ID of the KV namespace.
  final pulumi.Input<String> namespaceId;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionKvNamespaces].
  /// [namespaceId] ID of the KV namespace.
  const GetPagesProjectsResultDeploymentConfigsProductionKvNamespaces({
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceId': namespaceId,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionKvNamespaces.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionKvNamespaces(
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}

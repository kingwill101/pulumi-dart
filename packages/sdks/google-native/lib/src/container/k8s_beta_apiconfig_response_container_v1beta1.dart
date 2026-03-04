// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubernetes open source beta apis enabled on the cluster.
class K8sBetaAPIConfigResponseContainerV1beta1 {
  /// api name, e.g. storage.k8s.io/v1beta1/csistoragecapacities.
  final pulumi.Input<List<String>> enabledApis;

  /// Creates a new [K8sBetaAPIConfigResponseContainerV1beta1].
  /// [enabledApis] api name, e.g. storage.k8s.io/v1beta1/csistoragecapacities.
  K8sBetaAPIConfigResponseContainerV1beta1({required this.enabledApis});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabledApis': enabledApis};
  }

  factory K8sBetaAPIConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return K8sBetaAPIConfigResponseContainerV1beta1(
      enabledApis: pulumi.Input.fromValue(
        (map['enabledApis'] as List).cast<String>(),
      ),
    );
  }
}

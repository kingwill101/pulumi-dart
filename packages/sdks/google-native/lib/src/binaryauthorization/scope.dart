// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A scope specifier for `CheckSet` objects.
class Scope {
  /// Optional. Matches all Kubernetes service accounts in the provided namespace, unless a more specific `kubernetes_service_account` scope already matched.
  final pulumi.Input<String>? kubernetesNamespace;
  /// Optional. Matches a single Kubernetes service account, e.g. `my-namespace:my-service-account`. `kubernetes_service_account` scope is always more specific than `kubernetes_namespace` scope for the same namespace.
  final pulumi.Input<String>? kubernetesServiceAccount;

  /// Creates a new [Scope].
  /// [kubernetesNamespace] Optional. Matches all Kubernetes service accounts in the provided namespace, unless a more specific `kubernetes_service_account` scope already matched.
  /// [kubernetesServiceAccount] Optional. Matches a single Kubernetes service account, e.g. `my-namespace:my-service-account`. `kubernetes_service_account` scope is always more specific than `kubernetes_namespace` scope for the same namespace.
  const Scope({
    this.kubernetesNamespace,
    this.kubernetesServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesNamespace': ?kubernetesNamespace,
      'kubernetesServiceAccount': ?kubernetesServiceAccount,
    };
  }

  factory Scope.fromMap(Map<String, dynamic> map) {
    return Scope(
      kubernetesNamespace: (() { final guardedValue = map['kubernetesNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetesServiceAccount: (() { final guardedValue = map['kubernetesServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


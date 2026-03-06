// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_cluster_proxy_config_kubernetes_secret.dart';

class AttachedClusterProxyConfig {
  /// The Kubernetes Secret resource that contains the HTTP(S) proxy configuration.
  /// Structure is documented below.
  final pulumi.Input<AttachedClusterProxyConfigKubernetesSecret>? kubernetesSecret;

  /// Creates a new [AttachedClusterProxyConfig].
  /// [kubernetesSecret] The Kubernetes Secret resource that contains the HTTP(S) proxy configuration.
  const AttachedClusterProxyConfig({
    this.kubernetesSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesSecret': ?pulumi.Input.mapOptionalInputValue<AttachedClusterProxyConfigKubernetesSecret, Map<String, dynamic>>(kubernetesSecret, (value) => value.toMap()),
    };
  }

  factory AttachedClusterProxyConfig.fromMap(Map<String, dynamic> map) {
    return AttachedClusterProxyConfig(
      kubernetesSecret: (() { final guardedValue = map['kubernetesSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AttachedClusterProxyConfigKubernetesSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


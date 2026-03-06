// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_system_addons_config_ingress.dart';

class ClusterSystemAddonsConfig {
  /// Config for the Ingress add-on which allows customers to create an Ingress
  /// object to manage external access to the servers in a cluster. The add-on
  /// consists of istiod and istio-ingress.
  /// Structure is documented below.
  final pulumi.Input<ClusterSystemAddonsConfigIngress>? ingress;

  /// Creates a new [ClusterSystemAddonsConfig].
  /// [ingress] Config for the Ingress add-on which allows customers to create an Ingress
  const ClusterSystemAddonsConfig({
    this.ingress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingress': ?pulumi.Input.mapOptionalInputValue<ClusterSystemAddonsConfigIngress, Map<String, dynamic>>(ingress, (value) => value.toMap()),
    };
  }

  factory ClusterSystemAddonsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSystemAddonsConfig(
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSystemAddonsConfigIngress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


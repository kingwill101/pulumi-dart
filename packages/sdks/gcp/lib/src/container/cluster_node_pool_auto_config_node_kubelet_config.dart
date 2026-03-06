// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolAutoConfigNodeKubeletConfig {
  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final pulumi.Input<String>? insecureKubeletReadonlyPortEnabled;

  /// Creates a new [ClusterNodePoolAutoConfigNodeKubeletConfig].
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  const ClusterNodePoolAutoConfigNodeKubeletConfig({
    this.insecureKubeletReadonlyPortEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insecureKubeletReadonlyPortEnabled': ?insecureKubeletReadonlyPortEnabled,
    };
  }

  factory ClusterNodePoolAutoConfigNodeKubeletConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolAutoConfigNodeKubeletConfig(
      insecureKubeletReadonlyPortEnabled: (() { final guardedValue = map['insecureKubeletReadonlyPortEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


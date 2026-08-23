// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KubeletConfig defines the modifiable kubelet configurations for bare metal machines. Note: this list includes fields supported in GKE (see https://cloud.google.com/kubernetes-engine/docs/how-to/node-system-config#kubelet-options).
class BareMetalKubeletConfig {
  /// The maximum size of bursty pulls, temporarily allows pulls to burst to this number, while still not exceeding registry_pull_qps. The value must not be a negative number. Updating this field may impact scalability by changing the amount of traffic produced by image pulls. Defaults to 10.
  final pulumi.Input<int>? registryBurst;
  /// The limit of registry pulls per second. Setting this value to 0 means no limit. Updating this field may impact scalability by changing the amount of traffic produced by image pulls. Defaults to 5.
  final pulumi.Input<int>? registryPullQps;
  /// Prevents the Kubelet from pulling multiple images at a time. We recommend *not* changing the default value on nodes that run docker daemon with version &lt; 1.9 or an Another Union File System (Aufs) storage backend. Issue https://github.com/kubernetes/kubernetes/issues/10959 has more details.
  final pulumi.Input<bool>? serializeImagePullsDisabled;

  /// Creates a new [BareMetalKubeletConfig].
  /// [registryBurst] The maximum size of bursty pulls, temporarily allows pulls to burst to this number, while still not exceeding registry_pull_qps. The value must not be a negative number. Updating this field may impact scalability by changing the amount of traffic produced by image pulls. Defaults to 10.
  /// [registryPullQps] The limit of registry pulls per second. Setting this value to 0 means no limit. Updating this field may impact scalability by changing the amount of traffic produced by image pulls. Defaults to 5.
  /// [serializeImagePullsDisabled] Prevents the Kubelet from pulling multiple images at a time. We recommend *not* changing the default value on nodes that run docker daemon with version &lt; 1.9 or an Another Union File System (Aufs) storage backend. Issue https://github.com/kubernetes/kubernetes/issues/10959 has more details.
  const BareMetalKubeletConfig({
    this.registryBurst,
    this.registryPullQps,
    this.serializeImagePullsDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryBurst': ?registryBurst,
      'registryPullQps': ?registryPullQps,
      'serializeImagePullsDisabled': ?serializeImagePullsDisabled,
    };
  }

  factory BareMetalKubeletConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalKubeletConfig(
      registryBurst: (() { final guardedValue = map['registryBurst']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      registryPullQps: (() { final guardedValue = map['registryPullQps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serializeImagePullsDisabled: (() { final guardedValue = map['serializeImagePullsDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

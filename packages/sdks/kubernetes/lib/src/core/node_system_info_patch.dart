// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_swap_status_patch.dart';

/// NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
class NodeSystemInfoPatch {
  /// The Architecture reported by the node
  final pulumi.Input<String>? architecture;

  /// Boot ID reported by the node.
  final pulumi.Input<String>? bootID;

  /// ContainerRuntime Version reported by the node through runtime remote API (e.g. containerd://1.4.2).
  final pulumi.Input<String>? containerRuntimeVersion;

  /// Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
  final pulumi.Input<String>? kernelVersion;

  /// Deprecated: KubeProxy Version reported by the node.
  final pulumi.Input<String>? kubeProxyVersion;

  /// Kubelet Version reported by the node.
  final pulumi.Input<String>? kubeletVersion;

  /// MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html
  final pulumi.Input<String>? machineID;

  /// The Operating System reported by the node
  final pulumi.Input<String>? operatingSystem;

  /// OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
  final pulumi.Input<String>? osImage;

  /// Swap Info reported by the node.
  final pulumi.Input<NodeSwapStatusPatch>? swap;

  /// SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid
  final pulumi.Input<String>? systemUUID;

  /// Creates a new [NodeSystemInfoPatch].
  /// [architecture] The Architecture reported by the node
  /// [bootID] Boot ID reported by the node.
  /// [containerRuntimeVersion] ContainerRuntime Version reported by the node through runtime remote API (e.g. containerd://1.4.2).
  /// [kernelVersion] Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
  /// [kubeProxyVersion] Deprecated: KubeProxy Version reported by the node.
  /// [kubeletVersion] Kubelet Version reported by the node.
  /// [machineID] MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: http://man7.org/linux/man-pages/man5/machine-id.5.html
  /// [operatingSystem] The Operating System reported by the node
  /// [osImage] OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
  /// [swap] Swap Info reported by the node.
  /// [systemUUID] SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid
  NodeSystemInfoPatch({
    this.architecture,
    this.bootID,
    this.containerRuntimeVersion,
    this.kernelVersion,
    this.kubeProxyVersion,
    this.kubeletVersion,
    this.machineID,
    this.operatingSystem,
    this.osImage,
    this.swap,
    this.systemUUID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'bootID': ?bootID,
      'containerRuntimeVersion': ?containerRuntimeVersion,
      'kernelVersion': ?kernelVersion,
      'kubeProxyVersion': ?kubeProxyVersion,
      'kubeletVersion': ?kubeletVersion,
      'machineID': ?machineID,
      'operatingSystem': ?operatingSystem,
      'osImage': ?osImage,
      'swap':
          ?pulumi.Input.mapOptionalInputValue<
            NodeSwapStatusPatch,
            Map<String, dynamic>
          >(swap, (value) => value.toMap()),
      'systemUUID': ?systemUUID,
    };
  }

  factory NodeSystemInfoPatch.fromMap(Map<String, dynamic> map) {
    return NodeSystemInfoPatch(
      architecture: (() {
        final guardedValue = map['architecture'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bootID: (() {
        final guardedValue = map['bootID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerRuntimeVersion: (() {
        final guardedValue = map['containerRuntimeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kernelVersion: (() {
        final guardedValue = map['kernelVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kubeProxyVersion: (() {
        final guardedValue = map['kubeProxyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kubeletVersion: (() {
        final guardedValue = map['kubeletVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      machineID: (() {
        final guardedValue = map['machineID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operatingSystem: (() {
        final guardedValue = map['operatingSystem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osImage: (() {
        final guardedValue = map['osImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      swap: (() {
        final guardedValue = map['swap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeSwapStatusPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      systemUUID: (() {
        final guardedValue = map['systemUUID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

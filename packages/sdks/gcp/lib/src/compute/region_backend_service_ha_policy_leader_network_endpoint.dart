// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionBackendServiceHaPolicyLeaderNetworkEndpoint {
  /// The name of the VM instance of the leader network endpoint. The instance must
  /// already be attached to the NEG specified in the haPolicy.leader.backendGroup.
  final pulumi.Input<String>? instance;

  /// Creates a new [RegionBackendServiceHaPolicyLeaderNetworkEndpoint].
  /// [instance] The name of the VM instance of the leader network endpoint. The instance must
  RegionBackendServiceHaPolicyLeaderNetworkEndpoint({
    this.instance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
    };
  }

  factory RegionBackendServiceHaPolicyLeaderNetworkEndpoint.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceHaPolicyLeaderNetworkEndpoint(
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerStatefulExternalIp {
  /// , A value that prescribes what should happen to the external ip when the VM instance is deleted. The available options are `NEVER` and `ON_PERMANENT_INSTANCE_DELETION`. `NEVER` - detach the ip when the VM is deleted, but do not delete the ip. `ON_PERMANENT_INSTANCE_DELETION` will delete the external ip when the VM is permanently deleted from the instance group.
  final pulumi.Input<String>? deleteRule;
  /// , The network interface name of the external Ip. Possible value: `nic0`
  final pulumi.Input<String>? interfaceName;

  /// Creates a new [InstanceGroupManagerStatefulExternalIp].
  /// [deleteRule] , A value that prescribes what should happen to the external ip when the VM instance is deleted. The available options are `NEVER` and `ON_PERMANENT_INSTANCE_DELETION`. `NEVER` - detach the ip when the VM is deleted, but do not delete the ip. `ON_PERMANENT_INSTANCE_DELETION` will delete the external ip when the VM is permanently deleted from the instance group.
  /// [interfaceName] , The network interface name of the external Ip. Possible value: `nic0`
  InstanceGroupManagerStatefulExternalIp({
    this.deleteRule,
    this.interfaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteRule': ?deleteRule,
      'interfaceName': ?interfaceName,
    };
  }

  factory InstanceGroupManagerStatefulExternalIp.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatefulExternalIp(
      deleteRule: (() { final guardedValue = map['deleteRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceName: (() { final guardedValue = map['interfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


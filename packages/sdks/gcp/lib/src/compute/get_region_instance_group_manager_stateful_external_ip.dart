// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceGroupManagerStatefulExternalIp {
  /// A value that prescribes what should happen to an associated static Address resource when a VM instance is permanently deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the IP when the VM is deleted, but do not delete the address resource. ON_PERMANENT_INSTANCE_DELETION will delete the stateful address when the VM is permanently deleted from the instance group. The default is NEVER.
  final pulumi.Input<String> deleteRule;

  /// The network interface name
  final pulumi.Input<String> interfaceName;

  /// Creates a new [GetRegionInstanceGroupManagerStatefulExternalIp].
  /// [deleteRule] A value that prescribes what should happen to an associated static Address resource when a VM instance is permanently deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the IP when the VM is deleted, but do not delete the address resource. ON_PERMANENT_INSTANCE_DELETION will delete the stateful address when the VM is permanently deleted from the instance group. The default is NEVER.
  /// [interfaceName] The network interface name
  GetRegionInstanceGroupManagerStatefulExternalIp({
    required this.deleteRule,
    required this.interfaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteRule': deleteRule,
      'interfaceName': interfaceName,
    };
  }

  factory GetRegionInstanceGroupManagerStatefulExternalIp.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceGroupManagerStatefulExternalIp(
      deleteRule: pulumi.Input.fromValue(map['deleteRule'] as String),
      interfaceName: pulumi.Input.fromValue(map['interfaceName'] as String),
    );
  }
}

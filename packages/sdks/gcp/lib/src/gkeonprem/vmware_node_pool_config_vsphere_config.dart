// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_node_pool_config_vsphere_config_tag.dart';

class VMwareNodePoolConfigVsphereConfig {
  /// The name of the vCenter datastore. Inherited from the user cluster.
  final pulumi.Input<String>? datastore;
  /// Vsphere host groups to apply to all VMs in the node pool
  final pulumi.Input<List<String>>? hostGroups;
  /// Tags to apply to VMs.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareNodePoolConfigVsphereConfigTag>>? tags;

  /// Creates a new [VMwareNodePoolConfigVsphereConfig].
  /// [datastore] The name of the vCenter datastore. Inherited from the user cluster.
  /// [hostGroups] Vsphere host groups to apply to all VMs in the node pool
  /// [tags] Tags to apply to VMs.
  VMwareNodePoolConfigVsphereConfig({
    this.datastore,
    this.hostGroups,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastore': ?datastore,
      'hostGroups': ?hostGroups,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<VMwareNodePoolConfigVsphereConfigTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<VMwareNodePoolConfigVsphereConfigTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VMwareNodePoolConfigVsphereConfig.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolConfigVsphereConfig(
      datastore: (() { final guardedValue = map['datastore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostGroups: (() { final guardedValue = map['hostGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMwareNodePoolConfigVsphereConfigTag>(guardedValue, (value) => VMwareNodePoolConfigVsphereConfigTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


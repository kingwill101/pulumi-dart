// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_vsphere_tag.dart';

/// VmwareVsphereConfig represents configuration for the VMware VCenter for node pool.
class VmwareVsphereConfig {
  /// The name of the vCenter datastore. Inherited from the user cluster.
  final pulumi.Input<String>? datastore;
  /// Vsphere host groups to apply to all VMs in the node pool
  final pulumi.Input<List<String>>? hostGroups;
  /// Tags to apply to VMs.
  final pulumi.Input<List<VmwareVsphereTag>>? tags;

  /// Creates a new [VmwareVsphereConfig].
  /// [datastore] The name of the vCenter datastore. Inherited from the user cluster.
  /// [hostGroups] Vsphere host groups to apply to all VMs in the node pool
  /// [tags] Tags to apply to VMs.
  VmwareVsphereConfig({
    this.datastore,
    this.hostGroups,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastore': ?datastore,
      'hostGroups': ?hostGroups,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<VmwareVsphereTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<VmwareVsphereTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VmwareVsphereConfig.fromMap(Map<String, dynamic> map) {
    return VmwareVsphereConfig(
      datastore: map['datastore'] == null ? null : (map['datastore'] as String).input(),
      hostGroups: map['hostGroups'] == null ? null : ((map['hostGroups'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<VmwareVsphereTag>(map['tags'], (value) => VmwareVsphereTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


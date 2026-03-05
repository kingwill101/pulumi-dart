// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_platform_config_bundle_status.dart';

class VmwareAdminClusterPlatformConfigBundle {
  /// ResourceStatus representing detailed cluster state.
  /// Structure is documented below.
  final pulumi.Input<List<VmwareAdminClusterPlatformConfigBundleStatus>>? statuses;
  /// The version of the bundle.
  final pulumi.Input<String>? version;

  /// Creates a new [VmwareAdminClusterPlatformConfigBundle].
  /// [statuses] ResourceStatus representing detailed cluster state.
  /// [version] The version of the bundle.
  VmwareAdminClusterPlatformConfigBundle({
    this.statuses,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<VmwareAdminClusterPlatformConfigBundleStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<VmwareAdminClusterPlatformConfigBundleStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory VmwareAdminClusterPlatformConfigBundle.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterPlatformConfigBundle(
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmwareAdminClusterPlatformConfigBundleStatus>(guardedValue, (value) => VmwareAdminClusterPlatformConfigBundleStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


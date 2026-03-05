// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_admin_cluster_platform_config_bundle.dart';
import 'vmware_admin_cluster_platform_config_status.dart';

class VmwareAdminClusterPlatformConfig {
  /// (Output)
  /// The list of bundles installed in the admin cluster.
  /// Structure is documented below.
  final pulumi.Input<List<VmwareAdminClusterPlatformConfigBundle>>? bundles;
  /// (Output)
  /// The platform version e.g. 1.13.2.
  final pulumi.Input<String>? platformVersion;
  /// The required platform version e.g. 1.13.1.
  /// If the current platform version is lower than the target version,
  /// the platform version will be updated to the target version.
  /// If the target version is not installed in the platform
  /// (bundle versions), download the target version bundle.
  final pulumi.Input<String>? requiredPlatformVersion;
  /// (Output)
  /// ResourceStatus representing detailed cluster state.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nested_platform_config_bundles_status"&gt;&lt;/a&gt;The `status` block contains:
  final pulumi.Input<List<VmwareAdminClusterPlatformConfigStatus>>? statuses;

  /// Creates a new [VmwareAdminClusterPlatformConfig].
  /// [bundles] (Output)
  /// [platformVersion] (Output)
  /// [requiredPlatformVersion] The required platform version e.g. 1.13.1.
  /// [statuses] (Output)
  VmwareAdminClusterPlatformConfig({
    this.bundles,
    this.platformVersion,
    this.requiredPlatformVersion,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundles': ?pulumi.Input.mapOptionalInputValue<List<VmwareAdminClusterPlatformConfigBundle>, List<Map<String, dynamic>>>(bundles, (value) => pulumi.Input.encodeList<VmwareAdminClusterPlatformConfigBundle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformVersion': ?platformVersion,
      'requiredPlatformVersion': ?requiredPlatformVersion,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<VmwareAdminClusterPlatformConfigStatus>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<VmwareAdminClusterPlatformConfigStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VmwareAdminClusterPlatformConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterPlatformConfig(
      bundles: (() { final guardedValue = map['bundles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmwareAdminClusterPlatformConfigBundle>(guardedValue, (value) => VmwareAdminClusterPlatformConfigBundle.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredPlatformVersion: (() { final guardedValue = map['requiredPlatformVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VmwareAdminClusterPlatformConfigStatus>(guardedValue, (value) => VmwareAdminClusterPlatformConfigStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


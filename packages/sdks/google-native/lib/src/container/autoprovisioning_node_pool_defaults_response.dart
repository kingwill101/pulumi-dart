// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_management_response.dart';
import 'shielded_instance_config_response.dart';
import 'upgrade_settings_response.dart';

/// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
class AutoprovisioningNodePoolDefaultsResponse {
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  final pulumi.Input<String> bootDiskKmsKey;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  final pulumi.Input<int> diskSizeGb;

  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  final pulumi.Input<String> diskType;

  /// The image type to use for NAP created node. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  final pulumi.Input<String> imageType;

  /// Enable or disable Kubelet read only port.
  final pulumi.Input<bool> insecureKubeletReadonlyPortEnabled;

  /// Specifies the node management options for NAP created node-pools.
  final pulumi.Input<NodeManagementResponse> management;

  /// Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  final pulumi.Input<String> minCpuPlatform;

  /// Scopes that are used by NAP when creating node pools.
  final pulumi.Input<List<String>> oauthScopes;

  /// The Google Cloud Platform Service Account to be used by the node VMs.
  final pulumi.Input<String> serviceAccount;

  /// Shielded Instance options.
  final pulumi.Input<ShieldedInstanceConfigResponse> shieldedInstanceConfig;

  /// Specifies the upgrade settings for NAP created node pools
  final pulumi.Input<UpgradeSettingsResponse> upgradeSettings;

  /// Creates a new [AutoprovisioningNodePoolDefaultsResponse].
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  /// [diskSizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  /// [diskType] Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  /// [imageType] The image type to use for NAP created node. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  /// [insecureKubeletReadonlyPortEnabled] Enable or disable Kubelet read only port.
  /// [management] Specifies the node management options for NAP created node-pools.
  /// [minCpuPlatform] Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  /// [oauthScopes] Scopes that are used by NAP when creating node pools.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [upgradeSettings] Specifies the upgrade settings for NAP created node pools
  AutoprovisioningNodePoolDefaultsResponse({
    required this.bootDiskKmsKey,
    required this.diskSizeGb,
    required this.diskType,
    required this.imageType,
    required this.insecureKubeletReadonlyPortEnabled,
    required this.management,
    required this.minCpuPlatform,
    required this.oauthScopes,
    required this.serviceAccount,
    required this.shieldedInstanceConfig,
    required this.upgradeSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskKmsKey': bootDiskKmsKey,
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'imageType': imageType,
      'insecureKubeletReadonlyPortEnabled': insecureKubeletReadonlyPortEnabled,
      'management':
          pulumi.Input.mapInputValue<
            NodeManagementResponse,
            Map<String, dynamic>
          >(management, (value) => value.toMap()),
      'minCpuPlatform': minCpuPlatform,
      'oauthScopes': oauthScopes,
      'serviceAccount': serviceAccount,
      'shieldedInstanceConfig':
          pulumi.Input.mapInputValue<
            ShieldedInstanceConfigResponse,
            Map<String, dynamic>
          >(shieldedInstanceConfig, (value) => value.toMap()),
      'upgradeSettings':
          pulumi.Input.mapInputValue<
            UpgradeSettingsResponse,
            Map<String, dynamic>
          >(upgradeSettings, (value) => value.toMap()),
    };
  }

  factory AutoprovisioningNodePoolDefaultsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoprovisioningNodePoolDefaultsResponse(
      bootDiskKmsKey: pulumi.Input.fromValue(map['bootDiskKmsKey'] as String),
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as int),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      imageType: pulumi.Input.fromValue(map['imageType'] as String),
      insecureKubeletReadonlyPortEnabled: pulumi.Input.fromValue(
        map['insecureKubeletReadonlyPortEnabled'] as bool,
      ),
      management: pulumi.Input.fromValue(
        NodeManagementResponse.fromMap(
          (map['management']! as Map).cast<String, dynamic>(),
        ),
      ),
      minCpuPlatform: pulumi.Input.fromValue(map['minCpuPlatform'] as String),
      oauthScopes: pulumi.Input.fromValue(
        (map['oauthScopes'] as List).cast<String>(),
      ),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      shieldedInstanceConfig: pulumi.Input.fromValue(
        ShieldedInstanceConfigResponse.fromMap(
          (map['shieldedInstanceConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      upgradeSettings: pulumi.Input.fromValue(
        UpgradeSettingsResponse.fromMap(
          (map['upgradeSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

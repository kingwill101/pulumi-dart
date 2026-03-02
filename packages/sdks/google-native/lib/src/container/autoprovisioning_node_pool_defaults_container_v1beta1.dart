// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_management_container_v1beta1.dart';
import 'shielded_instance_config_container_v1beta1.dart';
import 'upgrade_settings_container_v1beta1.dart';

/// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
class AutoprovisioningNodePoolDefaultsContainerV1beta1 {
  /// The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  final pulumi.Input<String>? bootDiskKmsKey;
  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  final pulumi.Input<int>? diskSizeGb;
  /// Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  final pulumi.Input<String>? diskType;
  /// The image type to use for NAP created node. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  final pulumi.Input<String>? imageType;
  /// Enable or disable Kubelet read only port.
  final pulumi.Input<bool>? insecureKubeletReadonlyPortEnabled;
  /// NodeManagement configuration for this NodePool.
  final pulumi.Input<NodeManagementContainerV1beta1>? management;
  /// Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  final pulumi.Input<String>? minCpuPlatform;
  /// The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  final pulumi.Input<List<String>>? oauthScopes;
  /// The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  final pulumi.Input<String>? serviceAccount;
  /// Shielded Instance options.
  final pulumi.Input<ShieldedInstanceConfigContainerV1beta1>? shieldedInstanceConfig;
  /// Upgrade settings control disruption and speed of the upgrade.
  final pulumi.Input<UpgradeSettingsContainerV1beta1>? upgradeSettings;

  /// Creates a new [AutoprovisioningNodePoolDefaultsContainerV1beta1].
  /// [bootDiskKmsKey] The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the node pool. This should be of the form projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cryptoKeys/[KEY_NAME]. For more information about protecting resources with Cloud KMS Keys please see: https://cloud.google.com/compute/docs/disks/customer-managed-encryption
  /// [diskSizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. If unspecified, the default disk size is 100GB.
  /// [diskType] Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspecified, the default disk type is 'pd-standard'
  /// [imageType] The image type to use for NAP created node. Please see https://cloud.google.com/kubernetes-engine/docs/concepts/node-images for available image types.
  /// [insecureKubeletReadonlyPortEnabled] Enable or disable Kubelet read only port.
  /// [management] NodeManagement configuration for this NodePool.
  /// [minCpuPlatform] Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be scheduled on the specified or newer CPU platform. Applicable values are the friendly names of CPU platforms, such as minCpuPlatform: Intel Haswell or minCpuPlatform: Intel Sandy Bridge. For more information, read [how to specify min CPU platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform). This field is deprecated, min_cpu_platform should be specified using `cloud.google.com/requested-min-cpu-platform` label selector on the pod. To unset the min cpu platform field pass "automatic" as field value.
  /// [oauthScopes] The set of Google API scopes to be made available on all of the node VMs under the "default" service account. The following scopes are recommended, but not required, and by default are not included: * `https://www.googleapis.com/auth/compute` is required for mounting persistent storage on your nodes. * `https://www.googleapis.com/auth/devstorage.read_only` is required for communicating with **gcr.io** (the [Google Container Registry](https://cloud.google.com/container-registry/)). If unspecified, no scopes are added, unless Cloud Logging or Cloud Monitoring are enabled, in which case their required scopes will be added.
  /// [serviceAccount] The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address of the Service Account; otherwise, if no Service Account is specified, the "default" service account is used.
  /// [shieldedInstanceConfig] Shielded Instance options.
  /// [upgradeSettings] Upgrade settings control disruption and speed of the upgrade.
  AutoprovisioningNodePoolDefaultsContainerV1beta1({
    this.bootDiskKmsKey,
    this.diskSizeGb,
    this.diskType,
    this.imageType,
    this.insecureKubeletReadonlyPortEnabled,
    this.management,
    this.minCpuPlatform,
    this.oauthScopes,
    this.serviceAccount,
    this.shieldedInstanceConfig,
    this.upgradeSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskKmsKey': ?bootDiskKmsKey,
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'imageType': ?imageType,
      'insecureKubeletReadonlyPortEnabled': ?insecureKubeletReadonlyPortEnabled,
      'management': ?pulumi.Input.mapOptionalInputValue<NodeManagementContainerV1beta1, Map<String, dynamic>>(management, (value) => value.toMap()),
      'minCpuPlatform': ?minCpuPlatform,
      'oauthScopes': ?oauthScopes,
      'serviceAccount': ?serviceAccount,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfigContainerV1beta1, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<UpgradeSettingsContainerV1beta1, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
    };
  }

  factory AutoprovisioningNodePoolDefaultsContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AutoprovisioningNodePoolDefaultsContainerV1beta1(
      bootDiskKmsKey: map['bootDiskKmsKey'] == null ? null : (map['bootDiskKmsKey'] as String).input(),
      diskSizeGb: map['diskSizeGb'] == null ? null : (map['diskSizeGb'] as int).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      imageType: map['imageType'] == null ? null : (map['imageType'] as String).input(),
      insecureKubeletReadonlyPortEnabled: map['insecureKubeletReadonlyPortEnabled'] == null ? null : (map['insecureKubeletReadonlyPortEnabled'] as bool).input(),
      management: map['management'] == null ? null : (NodeManagementContainerV1beta1.fromMap((map['management'] as Map).cast<String, dynamic>())).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform'] as String).input(),
      oauthScopes: map['oauthScopes'] == null ? null : ((map['oauthScopes'] as List).cast<String>()).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (ShieldedInstanceConfigContainerV1beta1.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      upgradeSettings: map['upgradeSettings'] == null ? null : (UpgradeSettingsContainerV1beta1.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class ClusterWorkerProfile {
  /// The resource ID of an associated disk encryption set. Changing this forces a new resource to be created.
  final String? diskEncryptionSetId;
  /// The internal OS disk size of the worker Virtual Machines in GB. Changing this forces a new resource to be created.
  final int diskSizeGb;
  /// Whether worker virtual machines are encrypted at host. Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `encryption_at_host_enabled` is only available for certain VM sizes and the `EncryptionAtHost` feature must be enabled for your subscription. Please see the [Azure documentation](https://learn.microsoft.com/azure/virtual-machines/disks-enable-host-based-encryption-portal?tabs=azure-powershell) for more information.
  final bool? encryptionAtHostEnabled;
  /// The initial number of worker nodes which should exist in the cluster. Changing this forces a new resource to be created.
  final int nodeCount;
  /// The ID of the subnet where worker nodes will be hosted. Changing this forces a new resource to be created.
  final String subnetId;
  /// The size of the Virtual Machines for the worker nodes. Changing this forces a new resource to be created.
  final String vmSize;

  /// Creates a new [ClusterWorkerProfile].
  /// [diskEncryptionSetId] The resource ID of an associated disk encryption set. Changing this forces a new resource to be created.
  /// [diskSizeGb] The internal OS disk size of the worker Virtual Machines in GB. Changing this forces a new resource to be created.
  /// [encryptionAtHostEnabled] Whether worker virtual machines are encrypted at host. Defaults to `false`. Changing this forces a new resource to be created.
  /// [nodeCount] The initial number of worker nodes which should exist in the cluster. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet where worker nodes will be hosted. Changing this forces a new resource to be created.
  /// [vmSize] The size of the Virtual Machines for the worker nodes. Changing this forces a new resource to be created.
  ClusterWorkerProfile({
    this.diskEncryptionSetId,
    required this.diskSizeGb,
    this.encryptionAtHostEnabled,
    required this.nodeCount,
    required this.subnetId,
    required this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskSizeGb': diskSizeGb,
      'encryptionAtHostEnabled': ?encryptionAtHostEnabled,
      'nodeCount': nodeCount,
      'subnetId': subnetId,
      'vmSize': vmSize,
    };
  }

  factory ClusterWorkerProfile.fromMap(Map<String, dynamic> map) {
    return ClusterWorkerProfile(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskSizeGb: map['diskSizeGb'] as int,
      encryptionAtHostEnabled: map['encryptionAtHostEnabled'] == null ? null : map['encryptionAtHostEnabled'] as bool,
      nodeCount: map['nodeCount'] as int,
      subnetId: map['subnetId'] as String,
      vmSize: map['vmSize'] as String,
    );
  }
}


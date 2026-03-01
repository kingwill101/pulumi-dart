// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfig_details_response.dart';

/// Hyper V VM network details.
class VMNicDetailsResponse {
  /// A value indicating whether the NIC has accelerated networking enabled.
  final bool? enableAcceleratedNetworkingOnRecovery;
  /// Whether the TFO NIC has accelerated networking enabled.
  final bool? enableAcceleratedNetworkingOnTfo;
  /// The IP configurations of the NIC.
  final List<IPConfigDetailsResponse>? ipConfigs;
  /// The nic Id.
  final String? nicId;
  /// The id of the NSG associated with the NIC.
  final String? recoveryNetworkSecurityGroupId;
  /// The name of the NIC to be used when creating target NICs.
  final String? recoveryNicName;
  /// The resource group of the NIC to be used when creating target NICs.
  final String? recoveryNicResourceGroupName;
  /// Recovery VM network Id.
  final String? recoveryVMNetworkId;
  /// The replica nic Id.
  final String? replicaNicId;
  /// A value indicating whether an existing NIC is allowed to be reused during failover subject to availability.
  final bool? reuseExistingNic;
  /// Selection type for failover.
  final String? selectionType;
  /// The source nic ARM Id.
  final String? sourceNicArmId;
  /// Target NIC name.
  final String? targetNicName;
  /// The NSG to be used by NIC during test failover.
  final String? tfoNetworkSecurityGroupId;
  /// The name of the NIC to be used when creating target NICs in TFO.
  final String? tfoRecoveryNicName;
  /// The resource group of the NIC to be used when creating target NICs in TFO.
  final String? tfoRecoveryNicResourceGroupName;
  /// A value indicating whether an existing NIC is allowed to be reused during test failover subject to availability.
  final bool? tfoReuseExistingNic;
  /// The network to be used by NIC during test failover.
  final String? tfoVMNetworkId;
  /// VM network name.
  final String? vMNetworkName;

  /// Creates a new [VMNicDetailsResponse].
  /// [enableAcceleratedNetworkingOnRecovery] A value indicating whether the NIC has accelerated networking enabled.
  /// [enableAcceleratedNetworkingOnTfo] Whether the TFO NIC has accelerated networking enabled.
  /// [ipConfigs] The IP configurations of the NIC.
  /// [nicId] The nic Id.
  /// [recoveryNetworkSecurityGroupId] The id of the NSG associated with the NIC.
  /// [recoveryNicName] The name of the NIC to be used when creating target NICs.
  /// [recoveryNicResourceGroupName] The resource group of the NIC to be used when creating target NICs.
  /// [recoveryVMNetworkId] Recovery VM network Id.
  /// [replicaNicId] The replica nic Id.
  /// [reuseExistingNic] A value indicating whether an existing NIC is allowed to be reused during failover subject to availability.
  /// [selectionType] Selection type for failover.
  /// [sourceNicArmId] The source nic ARM Id.
  /// [targetNicName] Target NIC name.
  /// [tfoNetworkSecurityGroupId] The NSG to be used by NIC during test failover.
  /// [tfoRecoveryNicName] The name of the NIC to be used when creating target NICs in TFO.
  /// [tfoRecoveryNicResourceGroupName] The resource group of the NIC to be used when creating target NICs in TFO.
  /// [tfoReuseExistingNic] A value indicating whether an existing NIC is allowed to be reused during test failover subject to availability.
  /// [tfoVMNetworkId] The network to be used by NIC during test failover.
  /// [vMNetworkName] VM network name.
  VMNicDetailsResponse({
    this.enableAcceleratedNetworkingOnRecovery,
    this.enableAcceleratedNetworkingOnTfo,
    this.ipConfigs,
    this.nicId,
    this.recoveryNetworkSecurityGroupId,
    this.recoveryNicName,
    this.recoveryNicResourceGroupName,
    this.recoveryVMNetworkId,
    this.replicaNicId,
    this.reuseExistingNic,
    this.selectionType,
    this.sourceNicArmId,
    this.targetNicName,
    this.tfoNetworkSecurityGroupId,
    this.tfoRecoveryNicName,
    this.tfoRecoveryNicResourceGroupName,
    this.tfoReuseExistingNic,
    this.tfoVMNetworkId,
    this.vMNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableAcceleratedNetworkingOnRecovery': ?enableAcceleratedNetworkingOnRecovery,
      'enableAcceleratedNetworkingOnTfo': ?enableAcceleratedNetworkingOnTfo,
      'ipConfigs': ?ipConfigs == null ? null : pulumi.Input.encodeList<IPConfigDetailsResponse, Map<String, dynamic>>(ipConfigs!, (value) => value.toMap()),
      'nicId': ?nicId,
      'recoveryNetworkSecurityGroupId': ?recoveryNetworkSecurityGroupId,
      'recoveryNicName': ?recoveryNicName,
      'recoveryNicResourceGroupName': ?recoveryNicResourceGroupName,
      'recoveryVMNetworkId': ?recoveryVMNetworkId,
      'replicaNicId': ?replicaNicId,
      'reuseExistingNic': ?reuseExistingNic,
      'selectionType': ?selectionType,
      'sourceNicArmId': ?sourceNicArmId,
      'targetNicName': ?targetNicName,
      'tfoNetworkSecurityGroupId': ?tfoNetworkSecurityGroupId,
      'tfoRecoveryNicName': ?tfoRecoveryNicName,
      'tfoRecoveryNicResourceGroupName': ?tfoRecoveryNicResourceGroupName,
      'tfoReuseExistingNic': ?tfoReuseExistingNic,
      'tfoVMNetworkId': ?tfoVMNetworkId,
      'vMNetworkName': ?vMNetworkName,
    };
  }

  factory VMNicDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VMNicDetailsResponse(
      enableAcceleratedNetworkingOnRecovery: map['enableAcceleratedNetworkingOnRecovery'] == null ? null : map['enableAcceleratedNetworkingOnRecovery'] as bool,
      enableAcceleratedNetworkingOnTfo: map['enableAcceleratedNetworkingOnTfo'] == null ? null : map['enableAcceleratedNetworkingOnTfo'] as bool,
      ipConfigs: map['ipConfigs'] == null ? null : pulumi.Input.decodeList<IPConfigDetailsResponse>(map['ipConfigs'], (value) => IPConfigDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      nicId: map['nicId'] == null ? null : map['nicId'] as String,
      recoveryNetworkSecurityGroupId: map['recoveryNetworkSecurityGroupId'] == null ? null : map['recoveryNetworkSecurityGroupId'] as String,
      recoveryNicName: map['recoveryNicName'] == null ? null : map['recoveryNicName'] as String,
      recoveryNicResourceGroupName: map['recoveryNicResourceGroupName'] == null ? null : map['recoveryNicResourceGroupName'] as String,
      recoveryVMNetworkId: map['recoveryVMNetworkId'] == null ? null : map['recoveryVMNetworkId'] as String,
      replicaNicId: map['replicaNicId'] == null ? null : map['replicaNicId'] as String,
      reuseExistingNic: map['reuseExistingNic'] == null ? null : map['reuseExistingNic'] as bool,
      selectionType: map['selectionType'] == null ? null : map['selectionType'] as String,
      sourceNicArmId: map['sourceNicArmId'] == null ? null : map['sourceNicArmId'] as String,
      targetNicName: map['targetNicName'] == null ? null : map['targetNicName'] as String,
      tfoNetworkSecurityGroupId: map['tfoNetworkSecurityGroupId'] == null ? null : map['tfoNetworkSecurityGroupId'] as String,
      tfoRecoveryNicName: map['tfoRecoveryNicName'] == null ? null : map['tfoRecoveryNicName'] as String,
      tfoRecoveryNicResourceGroupName: map['tfoRecoveryNicResourceGroupName'] == null ? null : map['tfoRecoveryNicResourceGroupName'] as String,
      tfoReuseExistingNic: map['tfoReuseExistingNic'] == null ? null : map['tfoReuseExistingNic'] as bool,
      tfoVMNetworkId: map['tfoVMNetworkId'] == null ? null : map['tfoVMNetworkId'] as String,
      vMNetworkName: map['vMNetworkName'] == null ? null : map['vMNetworkName'] as String,
    );
  }
}


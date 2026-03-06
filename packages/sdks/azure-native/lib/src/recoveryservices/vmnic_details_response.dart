// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipconfig_details_response.dart';

/// Hyper V VM network details.
class VMNicDetailsResponse {
  /// A value indicating whether the NIC has accelerated networking enabled.
  final pulumi.Input<bool>? enableAcceleratedNetworkingOnRecovery;
  /// Whether the TFO NIC has accelerated networking enabled.
  final pulumi.Input<bool>? enableAcceleratedNetworkingOnTfo;
  /// The IP configurations of the NIC.
  final pulumi.Input<List<IPConfigDetailsResponse>>? ipConfigs;
  /// The nic Id.
  final pulumi.Input<String>? nicId;
  /// The id of the NSG associated with the NIC.
  final pulumi.Input<String>? recoveryNetworkSecurityGroupId;
  /// The name of the NIC to be used when creating target NICs.
  final pulumi.Input<String>? recoveryNicName;
  /// The resource group of the NIC to be used when creating target NICs.
  final pulumi.Input<String>? recoveryNicResourceGroupName;
  /// Recovery VM network Id.
  final pulumi.Input<String>? recoveryVMNetworkId;
  /// The replica nic Id.
  final pulumi.Input<String>? replicaNicId;
  /// A value indicating whether an existing NIC is allowed to be reused during failover subject to availability.
  final pulumi.Input<bool>? reuseExistingNic;
  /// Selection type for failover.
  final pulumi.Input<String>? selectionType;
  /// The source nic ARM Id.
  final pulumi.Input<String>? sourceNicArmId;
  /// Target NIC name.
  final pulumi.Input<String>? targetNicName;
  /// The NSG to be used by NIC during test failover.
  final pulumi.Input<String>? tfoNetworkSecurityGroupId;
  /// The name of the NIC to be used when creating target NICs in TFO.
  final pulumi.Input<String>? tfoRecoveryNicName;
  /// The resource group of the NIC to be used when creating target NICs in TFO.
  final pulumi.Input<String>? tfoRecoveryNicResourceGroupName;
  /// A value indicating whether an existing NIC is allowed to be reused during test failover subject to availability.
  final pulumi.Input<bool>? tfoReuseExistingNic;
  /// The network to be used by NIC during test failover.
  final pulumi.Input<String>? tfoVMNetworkId;
  /// VM network name.
  final pulumi.Input<String>? vMNetworkName;

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
  const VMNicDetailsResponse({
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
      'ipConfigs': ?pulumi.Input.mapOptionalInputValue<List<IPConfigDetailsResponse>, List<Map<String, dynamic>>>(ipConfigs, (value) => pulumi.Input.encodeList<IPConfigDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      enableAcceleratedNetworkingOnRecovery: (() { final guardedValue = map['enableAcceleratedNetworkingOnRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAcceleratedNetworkingOnTfo: (() { final guardedValue = map['enableAcceleratedNetworkingOnTfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipConfigs: (() { final guardedValue = map['ipConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfigDetailsResponse>(guardedValue, (value) => IPConfigDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nicId: (() { final guardedValue = map['nicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryNetworkSecurityGroupId: (() { final guardedValue = map['recoveryNetworkSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryNicName: (() { final guardedValue = map['recoveryNicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryNicResourceGroupName: (() { final guardedValue = map['recoveryNicResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryVMNetworkId: (() { final guardedValue = map['recoveryVMNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaNicId: (() { final guardedValue = map['replicaNicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reuseExistingNic: (() { final guardedValue = map['reuseExistingNic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      selectionType: (() { final guardedValue = map['selectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceNicArmId: (() { final guardedValue = map['sourceNicArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNicName: (() { final guardedValue = map['targetNicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tfoNetworkSecurityGroupId: (() { final guardedValue = map['tfoNetworkSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tfoRecoveryNicName: (() { final guardedValue = map['tfoRecoveryNicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tfoRecoveryNicResourceGroupName: (() { final guardedValue = map['tfoRecoveryNicResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tfoReuseExistingNic: (() { final guardedValue = map['tfoReuseExistingNic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tfoVMNetworkId: (() { final guardedValue = map['tfoVMNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vMNetworkName: (() { final guardedValue = map['vMNetworkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


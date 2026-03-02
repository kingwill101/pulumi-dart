// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_details_response.dart';
import 'initial_replication_details_response.dart';
import 'vmnic_details_response.dart';

/// Hyper V replica provider specific settings base class.
class HyperVReplicaBaseReplicationDetailsResponse {
  /// Initial replication details.
  final pulumi.Input<InitialReplicationDetailsResponse>? initialReplicationDetails;
  /// Gets the Instance type.
  /// Expected value is 'HyperVReplicaBaseReplicationDetails'.
  final pulumi.Input<String> instanceType;
  /// The Last replication time.
  final pulumi.Input<String>? lastReplicatedTime;
  /// VM disk details.
  final pulumi.Input<List<DiskDetailsResponse>>? vMDiskDetails;
  /// The virtual machine Id.
  final pulumi.Input<String>? vmId;
  /// The PE Network details.
  final pulumi.Input<List<VMNicDetailsResponse>>? vmNics;
  /// The protection state for the vm.
  final pulumi.Input<String>? vmProtectionState;
  /// The protection state description for the vm.
  final pulumi.Input<String>? vmProtectionStateDescription;

  /// Creates a new [HyperVReplicaBaseReplicationDetailsResponse].
  /// [initialReplicationDetails] Initial replication details.
  /// [instanceType] Gets the Instance type.
  /// [lastReplicatedTime] The Last replication time.
  /// [vMDiskDetails] VM disk details.
  /// [vmId] The virtual machine Id.
  /// [vmNics] The PE Network details.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  HyperVReplicaBaseReplicationDetailsResponse({
    this.initialReplicationDetails,
    required this.instanceType,
    this.lastReplicatedTime,
    this.vMDiskDetails,
    this.vmId,
    this.vmNics,
    this.vmProtectionState,
    this.vmProtectionStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialReplicationDetails': ?pulumi.Input.mapOptionalInputValue<InitialReplicationDetailsResponse, Map<String, dynamic>>(initialReplicationDetails, (value) => value.toMap()),
      'instanceType': instanceType,
      'lastReplicatedTime': ?lastReplicatedTime,
      'vMDiskDetails': ?pulumi.Input.mapOptionalInputValue<List<DiskDetailsResponse>, List<Map<String, dynamic>>>(vMDiskDetails, (value) => pulumi.Input.encodeList<DiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmId': ?vmId,
      'vmNics': ?pulumi.Input.mapOptionalInputValue<List<VMNicDetailsResponse>, List<Map<String, dynamic>>>(vmNics, (value) => pulumi.Input.encodeList<VMNicDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory HyperVReplicaBaseReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaBaseReplicationDetailsResponse(
      initialReplicationDetails: map['initialReplicationDetails'] == null ? null : (InitialReplicationDetailsResponse.fromMap((map['initialReplicationDetails']! as Map).cast<String, dynamic>())).input(),
      instanceType: (map['instanceType'] as String).input(),
      lastReplicatedTime: map['lastReplicatedTime'] == null ? null : (map['lastReplicatedTime']! as String).input(),
      vMDiskDetails: map['vMDiskDetails'] == null ? null : (pulumi.Input.decodeList<DiskDetailsResponse>(map['vMDiskDetails']!, (value) => DiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmId: map['vmId'] == null ? null : (map['vmId']! as String).input(),
      vmNics: map['vmNics'] == null ? null : (pulumi.Input.decodeList<VMNicDetailsResponse>(map['vmNics']!, (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmProtectionState: map['vmProtectionState'] == null ? null : (map['vmProtectionState']! as String).input(),
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : (map['vmProtectionStateDescription']! as String).input(),
    );
  }
}


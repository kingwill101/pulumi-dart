// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_details_response.dart';
import 'initial_replication_details_response.dart';
import 'vmnic_details_response.dart';

/// Hyper V replica provider specific settings base class.
class HyperVReplicaBaseReplicationDetailsResponse {
  /// Initial replication details.
  final InitialReplicationDetailsResponse? initialReplicationDetails;
  /// Gets the Instance type.
  /// Expected value is 'HyperVReplicaBaseReplicationDetails'.
  final String instanceType;
  /// The Last replication time.
  final String? lastReplicatedTime;
  /// VM disk details.
  final List<DiskDetailsResponse>? vMDiskDetails;
  /// The virtual machine Id.
  final String? vmId;
  /// The PE Network details.
  final List<VMNicDetailsResponse>? vmNics;
  /// The protection state for the vm.
  final String? vmProtectionState;
  /// The protection state description for the vm.
  final String? vmProtectionStateDescription;

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
      'initialReplicationDetails': ?initialReplicationDetails == null ? null : initialReplicationDetails!.toMap(),
      'instanceType': instanceType,
      'lastReplicatedTime': ?lastReplicatedTime,
      'vMDiskDetails': ?vMDiskDetails == null ? null : pulumi.Input.encodeList<DiskDetailsResponse, Map<String, dynamic>>(vMDiskDetails!, (value) => value.toMap()),
      'vmId': ?vmId,
      'vmNics': ?vmNics == null ? null : pulumi.Input.encodeList<VMNicDetailsResponse, Map<String, dynamic>>(vmNics!, (value) => value.toMap()),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory HyperVReplicaBaseReplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaBaseReplicationDetailsResponse(
      initialReplicationDetails: map['initialReplicationDetails'] == null ? null : InitialReplicationDetailsResponse.fromMap((map['initialReplicationDetails'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
      lastReplicatedTime: map['lastReplicatedTime'] == null ? null : map['lastReplicatedTime'] as String,
      vMDiskDetails: map['vMDiskDetails'] == null ? null : pulumi.Input.decodeList<DiskDetailsResponse>(map['vMDiskDetails'], (value) => DiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmId: map['vmId'] == null ? null : map['vmId'] as String,
      vmNics: map['vmNics'] == null ? null : pulumi.Input.decodeList<VMNicDetailsResponse>(map['vmNics'], (value) => VMNicDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      vmProtectionState: map['vmProtectionState'] == null ? null : map['vmProtectionState'] as String,
      vmProtectionStateDescription: map['vmProtectionStateDescription'] == null ? null : map['vmProtectionStateDescription'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_details_response.dart';
import 'initial_replication_details_response.dart';
import 'vmnic_details_response.dart';

/// HyperV replica 2012 R2 (Blue) replication details.
class HyperVReplicaBlueReplicationDetailsResponse {
  /// Initial replication details.
  final pulumi.Input<InitialReplicationDetailsResponse>?
  initialReplicationDetails;

  /// Gets the Instance type.
  /// Expected value is 'HyperVReplica2012R2'.
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

  /// Creates a new [HyperVReplicaBlueReplicationDetailsResponse].
  /// [initialReplicationDetails] Initial replication details.
  /// [instanceType] Gets the Instance type.
  /// [lastReplicatedTime] The Last replication time.
  /// [vMDiskDetails] VM disk details.
  /// [vmId] The virtual machine Id.
  /// [vmNics] The PE Network details.
  /// [vmProtectionState] The protection state for the vm.
  /// [vmProtectionStateDescription] The protection state description for the vm.
  HyperVReplicaBlueReplicationDetailsResponse({
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
      'initialReplicationDetails':
          ?pulumi.Input.mapOptionalInputValue<
            InitialReplicationDetailsResponse,
            Map<String, dynamic>
          >(initialReplicationDetails, (value) => value.toMap()),
      'instanceType': instanceType,
      'lastReplicatedTime': ?lastReplicatedTime,
      'vMDiskDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiskDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            vMDiskDetails,
            (value) =>
                pulumi.Input.encodeList<
                  DiskDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vmId': ?vmId,
      'vmNics':
          ?pulumi.Input.mapOptionalInputValue<
            List<VMNicDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            vmNics,
            (value) =>
                pulumi.Input.encodeList<
                  VMNicDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vmProtectionState': ?vmProtectionState,
      'vmProtectionStateDescription': ?vmProtectionStateDescription,
    };
  }

  factory HyperVReplicaBlueReplicationDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return HyperVReplicaBlueReplicationDetailsResponse(
      initialReplicationDetails: (() {
        final guardedValue = map['initialReplicationDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InitialReplicationDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      lastReplicatedTime: (() {
        final guardedValue = map['lastReplicatedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vMDiskDetails: (() {
        final guardedValue = map['vMDiskDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DiskDetailsResponse>(
            guardedValue,
            (value) => DiskDetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vmId: (() {
        final guardedValue = map['vmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmNics: (() {
        final guardedValue = map['vmNics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VMNicDetailsResponse>(
            guardedValue,
            (value) => VMNicDetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vmProtectionState: (() {
        final guardedValue = map['vmProtectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmProtectionStateDescription: (() {
        final guardedValue = map['vmProtectionStateDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

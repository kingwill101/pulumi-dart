// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'per_instance_config_preserved_state_disk.dart';
import 'per_instance_config_preserved_state_external_ip.dart';
import 'per_instance_config_preserved_state_internal_ip.dart';

class PerInstanceConfigPreservedState {
  /// Stateful disks for the instance.
  /// Structure is documented below.
  final pulumi.Input<List<PerInstanceConfigPreservedStateDisk>>? disks;
  /// Preserved external IPs defined for this instance. This map is keyed with the name of the network interface.
  /// Structure is documented below.
  final pulumi.Input<List<PerInstanceConfigPreservedStateExternalIp>>? externalIps;
  /// Preserved internal IPs defined for this instance. This map is keyed with the name of the network interface.
  /// Structure is documented below.
  final pulumi.Input<List<PerInstanceConfigPreservedStateInternalIp>>? internalIps;
  /// Preserved metadata defined for this instance. This is a list of key->value pairs.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Creates a new [PerInstanceConfigPreservedState].
  /// [disks] Stateful disks for the instance.
  /// [externalIps] Preserved external IPs defined for this instance. This map is keyed with the name of the network interface.
  /// [internalIps] Preserved internal IPs defined for this instance. This map is keyed with the name of the network interface.
  /// [metadata] Preserved metadata defined for this instance. This is a list of key->value pairs.
  PerInstanceConfigPreservedState({
    this.disks,
    this.externalIps,
    this.internalIps,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?pulumi.Input.mapOptionalInputValue<List<PerInstanceConfigPreservedStateDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<PerInstanceConfigPreservedStateDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'externalIps': ?pulumi.Input.mapOptionalInputValue<List<PerInstanceConfigPreservedStateExternalIp>, List<Map<String, dynamic>>>(externalIps, (value) => pulumi.Input.encodeList<PerInstanceConfigPreservedStateExternalIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internalIps': ?pulumi.Input.mapOptionalInputValue<List<PerInstanceConfigPreservedStateInternalIp>, List<Map<String, dynamic>>>(internalIps, (value) => pulumi.Input.encodeList<PerInstanceConfigPreservedStateInternalIp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?metadata,
    };
  }

  factory PerInstanceConfigPreservedState.fromMap(Map<String, dynamic> map) {
    return PerInstanceConfigPreservedState(
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<PerInstanceConfigPreservedStateDisk>(map['disks']!, (value) => PerInstanceConfigPreservedStateDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      externalIps: map['externalIps'] == null ? null : (pulumi.Input.decodeList<PerInstanceConfigPreservedStateExternalIp>(map['externalIps']!, (value) => PerInstanceConfigPreservedStateExternalIp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      internalIps: map['internalIps'] == null ? null : (pulumi.Input.decodeList<PerInstanceConfigPreservedStateInternalIp>(map['internalIps']!, (value) => PerInstanceConfigPreservedStateInternalIp.fromMap((value as Map).cast<String, dynamic>()))).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
    );
  }
}


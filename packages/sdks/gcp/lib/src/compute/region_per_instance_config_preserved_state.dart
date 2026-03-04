// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_per_instance_config_preserved_state_disk.dart';
import 'region_per_instance_config_preserved_state_external_ip.dart';
import 'region_per_instance_config_preserved_state_internal_ip.dart';

class RegionPerInstanceConfigPreservedState {
  /// Stateful disks for the instance.
  /// Structure is documented below.
  final pulumi.Input<List<RegionPerInstanceConfigPreservedStateDisk>>? disks;

  /// Preserved external IPs defined for this instance. This map is keyed with the name of the network interface.
  /// Structure is documented below.
  final pulumi.Input<List<RegionPerInstanceConfigPreservedStateExternalIp>>?
  externalIps;

  /// Preserved internal IPs defined for this instance. This map is keyed with the name of the network interface.
  /// Structure is documented below.
  final pulumi.Input<List<RegionPerInstanceConfigPreservedStateInternalIp>>?
  internalIps;

  /// Preserved metadata defined for this instance. This is a list of key-&gt;value pairs.
  final pulumi.Input<Map<String, String>>? metadata;

  /// Creates a new [RegionPerInstanceConfigPreservedState].
  /// [disks] Stateful disks for the instance.
  /// [externalIps] Preserved external IPs defined for this instance. This map is keyed with the name of the network interface.
  /// [internalIps] Preserved internal IPs defined for this instance. This map is keyed with the name of the network interface.
  /// [metadata] Preserved metadata defined for this instance. This is a list of key-&gt;value pairs.
  RegionPerInstanceConfigPreservedState({
    this.disks,
    this.externalIps,
    this.internalIps,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionPerInstanceConfigPreservedStateDisk>,
            List<Map<String, dynamic>>
          >(
            disks,
            (value) =>
                pulumi.Input.encodeList<
                  RegionPerInstanceConfigPreservedStateDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'externalIps':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionPerInstanceConfigPreservedStateExternalIp>,
            List<Map<String, dynamic>>
          >(
            externalIps,
            (value) =>
                pulumi.Input.encodeList<
                  RegionPerInstanceConfigPreservedStateExternalIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'internalIps':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionPerInstanceConfigPreservedStateInternalIp>,
            List<Map<String, dynamic>>
          >(
            internalIps,
            (value) =>
                pulumi.Input.encodeList<
                  RegionPerInstanceConfigPreservedStateInternalIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metadata': ?metadata,
    };
  }

  factory RegionPerInstanceConfigPreservedState.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionPerInstanceConfigPreservedState(
      disks: (() {
        final guardedValue = map['disks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegionPerInstanceConfigPreservedStateDisk>(
            guardedValue,
            (value) => RegionPerInstanceConfigPreservedStateDisk.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      externalIps: (() {
        final guardedValue = map['externalIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RegionPerInstanceConfigPreservedStateExternalIp
          >(
            guardedValue,
            (value) => RegionPerInstanceConfigPreservedStateExternalIp.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      internalIps: (() {
        final guardedValue = map['internalIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RegionPerInstanceConfigPreservedStateInternalIp
          >(
            guardedValue,
            (value) => RegionPerInstanceConfigPreservedStateInternalIp.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DnsZoneTransfersIncoming resources.
class DnsZoneTransfersIncomingState {
  /// How often should a secondary zone auto refresh regardless of DNS NOTIFY.
  /// Not applicable for primary zones.
  final pulumi.Input<double?>? autoRefreshSeconds;
  /// The time for a specific event.
  final pulumi.Input<String?>? checkedTime;
  /// The time for a specific event.
  final pulumi.Input<String?>? createdTime;
  /// The time for a specific event.
  final pulumi.Input<String?>? modifiedTime;
  /// Zone name.
  final pulumi.Input<String?>? name;
  /// A list of peer tags.
  final pulumi.Input<List<String>?>? peers;
  /// The serial number of the SOA for the given zone.
  final pulumi.Input<double?>? soaSerial;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [DnsZoneTransfersIncomingState].
  /// [autoRefreshSeconds] How often should a secondary zone auto refresh regardless of DNS NOTIFY.
  /// [checkedTime] The time for a specific event.
  /// [createdTime] The time for a specific event.
  /// [modifiedTime] The time for a specific event.
  /// [name] Zone name.
  /// [peers] A list of peer tags.
  /// [soaSerial] The serial number of the SOA for the given zone.
  /// [zoneId] Optional.
  const DnsZoneTransfersIncomingState({
    this.autoRefreshSeconds,
    this.checkedTime,
    this.createdTime,
    this.modifiedTime,
    this.name,
    this.peers,
    this.soaSerial,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRefreshSeconds': ?autoRefreshSeconds,
      'checkedTime': ?checkedTime,
      'createdTime': ?createdTime,
      'modifiedTime': ?modifiedTime,
      'name': ?name,
      'peers': ?peers,
      'soaSerial': ?soaSerial,
      'zoneId': ?zoneId,
    };
  }

  factory DnsZoneTransfersIncomingState.fromMap(Map<String, dynamic> map) {
    return DnsZoneTransfersIncomingState(
      autoRefreshSeconds: (() { final guardedValue = map['autoRefreshSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      checkedTime: (() { final guardedValue = map['checkedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedTime: (() { final guardedValue = map['modifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peers: (() { final guardedValue = map['peers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      soaSerial: (() { final guardedValue = map['soaSerial']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

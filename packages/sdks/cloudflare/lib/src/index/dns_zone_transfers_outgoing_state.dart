// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DnsZoneTransfersOutgoing resources.
class DnsZoneTransfersOutgoingState {
  /// The time for a specific event.
  final pulumi.Input<String?>? checkedTime;
  /// The time for a specific event.
  final pulumi.Input<String?>? createdTime;
  /// The time for a specific event.
  final pulumi.Input<String?>? lastTransferredTime;
  /// Zone name.
  final pulumi.Input<String?>? name;
  /// A list of peer tags.
  final pulumi.Input<List<String>?>? peers;
  /// The serial number of the SOA for the given zone.
  final pulumi.Input<double?>? soaSerial;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [DnsZoneTransfersOutgoingState].
  /// [checkedTime] The time for a specific event.
  /// [createdTime] The time for a specific event.
  /// [lastTransferredTime] The time for a specific event.
  /// [name] Zone name.
  /// [peers] A list of peer tags.
  /// [soaSerial] The serial number of the SOA for the given zone.
  /// [zoneId] Optional.
  const DnsZoneTransfersOutgoingState({
    this.checkedTime,
    this.createdTime,
    this.lastTransferredTime,
    this.name,
    this.peers,
    this.soaSerial,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkedTime': ?checkedTime,
      'createdTime': ?createdTime,
      'lastTransferredTime': ?lastTransferredTime,
      'name': ?name,
      'peers': ?peers,
      'soaSerial': ?soaSerial,
      'zoneId': ?zoneId,
    };
  }

  factory DnsZoneTransfersOutgoingState.fromMap(Map<String, dynamic> map) {
    return DnsZoneTransfersOutgoingState(
      checkedTime: (() { final guardedValue = map['checkedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastTransferredTime: (() { final guardedValue = map['lastTransferredTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peers: (() { final guardedValue = map['peers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      soaSerial: (() { final guardedValue = map['soaSerial']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDnsZoneTransfersOutgoing.
class GetDnsZoneTransfersOutgoingResult {
  /// The time for a specific event.
  final String? checkedTime;
  /// The time for a specific event.
  final String? createdTime;
  /// The ID of this resource.
  final String? id;
  /// The time for a specific event.
  final String? lastTransferredTime;
  /// Zone name.
  final String? name;
  /// A list of peer tags.
  final List<String>? peers;
  /// The serial number of the SOA for the given zone.
  final double? soaSerial;
  final String? zoneId;

  /// Creates a new [GetDnsZoneTransfersOutgoingResult].
  /// [checkedTime] The time for a specific event.
  /// [createdTime] The time for a specific event.
  /// [id] The ID of this resource.
  /// [lastTransferredTime] The time for a specific event.
  /// [name] Zone name.
  /// [peers] A list of peer tags.
  /// [soaSerial] The serial number of the SOA for the given zone.
  /// [zoneId] Optional.
  const GetDnsZoneTransfersOutgoingResult({
    this.checkedTime,
    this.createdTime,
    this.id,
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
      'id': ?id,
      'lastTransferredTime': ?lastTransferredTime,
      'name': ?name,
      'peers': ?peers,
      'soaSerial': ?soaSerial,
      'zoneId': ?zoneId,
    };
  }

  factory GetDnsZoneTransfersOutgoingResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneTransfersOutgoingResult(
      checkedTime: (() { final guardedValue = map['checkedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastTransferredTime: (() { final guardedValue = map['lastTransferredTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peers: (() { final guardedValue = map['peers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      soaSerial: (() { final guardedValue = map['soaSerial']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

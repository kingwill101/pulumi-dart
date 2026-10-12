// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFloatingIp.
class GetFloatingIpResult {
  /// (bool) Whether delete protection is enabled.
  final bool? deleteProtection;
  /// (string) Description of the Floating IP.
  final String? description;
  /// (string) Home location.
  final String? homeLocation;
  /// (int) Unique ID of the Floating IP.
  final int? id;
  /// (string) IP Address of the Floating IP.
  final String? ipAddress;
  /// (string) IPv6 subnet. (Only set if `type` is `ipv6`)
  final String? ipNetwork;
  /// (map) User-defined labels (key-value pairs).
  final Map<String, String>? labels;
  /// (string) Name of the Floating IP.
  final String? name;
  final String? selector;
  /// (int) Server to assign the Floating IP is assigned to.
  final int? serverId;
  /// (string) Type of the Floating IP.
  final String? type;
  final String? withSelector;

  /// Creates a new [GetFloatingIpResult].
  /// [deleteProtection] (bool) Whether delete protection is enabled.
  /// [description] (string) Description of the Floating IP.
  /// [homeLocation] (string) Home location.
  /// [id] (int) Unique ID of the Floating IP.
  /// [ipAddress] (string) IP Address of the Floating IP.
  /// [ipNetwork] (string) IPv6 subnet. (Only set if `type` is `ipv6`)
  /// [labels] (map) User-defined labels (key-value pairs).
  /// [name] (string) Name of the Floating IP.
  /// [selector] Optional.
  /// [serverId] (int) Server to assign the Floating IP is assigned to.
  /// [type] (string) Type of the Floating IP.
  /// [withSelector] Optional.
  const GetFloatingIpResult({
    this.deleteProtection,
    this.description,
    this.homeLocation,
    this.id,
    this.ipAddress,
    this.ipNetwork,
    this.labels,
    this.name,
    this.selector,
    this.serverId,
    this.type,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': ?deleteProtection,
      'description': ?description,
      'homeLocation': ?homeLocation,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'ipNetwork': ?ipNetwork,
      'labels': ?labels,
      'name': ?name,
      'selector': ?selector,
      'serverId': ?serverId,
      'type': ?type,
      'withSelector': ?withSelector,
    };
  }

  factory GetFloatingIpResult.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpResult(
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      homeLocation: (() { final guardedValue = map['homeLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipNetwork: (() { final guardedValue = map['ipNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

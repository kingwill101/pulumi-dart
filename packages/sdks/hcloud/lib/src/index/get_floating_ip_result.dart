// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFloatingIp.
class GetFloatingIpResult {
  /// (bool) Whether delete protection is enabled.
  final bool deleteProtection;
  /// (string) Description of the Floating IP.
  final String description;
  /// (string) Home location.
  final String homeLocation;
  /// (int) Unique ID of the Floating IP.
  final int id;
  /// (string) IP Address of the Floating IP.
  final String ipAddress;
  /// (string) IPv6 subnet. (Only set if `type` is `ipv6`)
  final String ipNetwork;
  /// (map) User-defined labels (key-value pairs).
  final Map<String, String> labels;
  /// (string) Name of the Floating IP.
  final String? name;
  final String? selector;
  /// (int) Server to assign the Floating IP is assigned to.
  final int serverId;
  /// (string) Type of the Floating IP.
  final String type;
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
    required this.deleteProtection,
    required this.description,
    required this.homeLocation,
    required this.id,
    required this.ipAddress,
    required this.ipNetwork,
    required this.labels,
    this.name,
    this.selector,
    required this.serverId,
    required this.type,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': deleteProtection,
      'description': description,
      'homeLocation': homeLocation,
      'id': id,
      'ipAddress': ipAddress,
      'ipNetwork': ipNetwork,
      'labels': labels,
      'name': ?name,
      'selector': ?selector,
      'serverId': serverId,
      'type': type,
      'withSelector': ?withSelector,
    };
  }

  factory GetFloatingIpResult.fromMap(Map<String, dynamic> map) {
    return GetFloatingIpResult(
      deleteProtection: map['deleteProtection'] as bool,
      description: map['description'] as String,
      homeLocation: map['homeLocation'] as String,
      id: map['id'] as int,
      ipAddress: map['ipAddress'] as String,
      ipNetwork: map['ipNetwork'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverId: map['serverId'] as int,
      type: map['type'] as String,
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class FirewallDevice {
  /// The ID of the underlying entity this device references (i.e. the Linode's ID).
  final int entityId;
  /// The ID of the Firewall Device.
  final int id;
  /// This Firewall's unique label.
  final String label;
  /// The type of Firewall Device.
  final String type;
  /// The URL of the underlying entity this device references.
  final String url;

  /// Creates a new [FirewallDevice].
  /// [entityId] The ID of the underlying entity this device references (i.e. the Linode's ID).
  /// [id] The ID of the Firewall Device.
  /// [label] This Firewall's unique label.
  /// [type] The type of Firewall Device.
  /// [url] The URL of the underlying entity this device references.
  FirewallDevice({
    required this.entityId,
    required this.id,
    required this.label,
    required this.type,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'id': id,
      'label': label,
      'type': type,
      'url': url,
    };
  }

  factory FirewallDevice.fromMap(Map<String, dynamic> map) {
    return FirewallDevice(
      entityId: map['entityId'] as int,
      id: map['id'] as int,
      label: map['label'] as String,
      type: map['type'] as String,
      url: map['url'] as String,
    );
  }
}


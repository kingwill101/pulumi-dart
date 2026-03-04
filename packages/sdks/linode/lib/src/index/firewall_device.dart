// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallDevice {
  /// The ID of the underlying entity this device references (i.e. the Linode's ID).
  final pulumi.Input<int> entityId;

  /// The ID of the Firewall Device.
  final pulumi.Input<int> id;

  /// This Firewall's unique label.
  final pulumi.Input<String> label;

  /// The type of Firewall Device.
  final pulumi.Input<String> type;

  /// The URL of the underlying entity this device references.
  final pulumi.Input<String> url;

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
      entityId: pulumi.Input.fromValue(map['entityId'] as int),
      id: pulumi.Input.fromValue(map['id'] as int),
      label: pulumi.Input.fromValue(map['label'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

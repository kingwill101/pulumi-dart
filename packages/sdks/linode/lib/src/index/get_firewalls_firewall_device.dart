// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallsFirewallDevice {
  /// The ID of the underlying entity this device references (i.e. the Linode's ID).
  final pulumi.Input<int> entityId;
  /// The unique ID assigned to this Firewall.
  final pulumi.Input<int> id;
  /// The label for the Firewall. For display purposes only. If no label is provided, a default will be assigned.
  final pulumi.Input<String> label;
  /// The type of Firewall Device.
  final pulumi.Input<String> type;
  /// The URL of the underlying entity this device references.
  final pulumi.Input<String> url;

  /// Creates a new [GetFirewallsFirewallDevice].
  /// [entityId] The ID of the underlying entity this device references (i.e. the Linode's ID).
  /// [id] The unique ID assigned to this Firewall.
  /// [label] The label for the Firewall. For display purposes only. If no label is provided, a default will be assigned.
  /// [type] The type of Firewall Device.
  /// [url] The URL of the underlying entity this device references.
  GetFirewallsFirewallDevice({
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

  factory GetFirewallsFirewallDevice.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewallDevice(
      entityId: (map['entityId'] as int).input(),
      id: (map['id'] as int).input(),
      label: (map['label'] as String).input(),
      type: (map['type'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}


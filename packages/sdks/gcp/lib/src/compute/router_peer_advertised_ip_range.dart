// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterPeerAdvertisedIpRange {
  /// User-specified description for the IP range.
  final pulumi.Input<String>? description;
  /// The IP range to advertise. The value must be a
  /// CIDR-formatted string.
  final pulumi.Input<String> range;

  /// Creates a new [RouterPeerAdvertisedIpRange].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a
  const RouterPeerAdvertisedIpRange({
    this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'range': range,
    };
  }

  factory RouterPeerAdvertisedIpRange.fromMap(Map<String, dynamic> map) {
    return RouterPeerAdvertisedIpRange(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}

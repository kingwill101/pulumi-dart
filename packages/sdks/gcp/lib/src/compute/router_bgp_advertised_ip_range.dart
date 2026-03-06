// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterBgpAdvertisedIpRange {
  /// User-specified description for the IP range.
  ///
  /// &lt;a name="nested_md5_authentication_keys"&gt;&lt;/a&gt;The `md5_authentication_keys` block supports:
  final pulumi.Input<String>? description;
  /// The IP range to advertise. The value must be a
  /// CIDR-formatted string.
  final pulumi.Input<String> range;

  /// Creates a new [RouterBgpAdvertisedIpRange].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a
  const RouterBgpAdvertisedIpRange({
    this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'range': range,
    };
  }

  factory RouterBgpAdvertisedIpRange.fromMap(Map<String, dynamic> map) {
    return RouterBgpAdvertisedIpRange(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}


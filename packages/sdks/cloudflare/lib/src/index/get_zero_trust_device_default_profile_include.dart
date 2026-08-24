// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceDefaultProfileInclude {
  /// The address in CIDR format to include in the tunnel. If `address` is present, `host` must not be present.
  final pulumi.Input<String> address;
  /// A description of the Split Tunnel item, displayed in the client UI.
  final pulumi.Input<String> description;
  /// The domain name to include in the tunnel. If `host` is present, `address` must not be present.
  final pulumi.Input<String> host;

  /// Creates a new [GetZeroTrustDeviceDefaultProfileInclude].
  /// [address] The address in CIDR format to include in the tunnel. If `address` is present, `host` must not be present.
  /// [description] A description of the Split Tunnel item, displayed in the client UI.
  /// [host] The domain name to include in the tunnel. If `host` is present, `address` must not be present.
  const GetZeroTrustDeviceDefaultProfileInclude({
    required this.address,
    required this.description,
    required this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'description': description,
      'host': host,
    };
  }

  factory GetZeroTrustDeviceDefaultProfileInclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDefaultProfileInclude(
      address: pulumi.Input.fromValue(map['address'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
    );
  }
}

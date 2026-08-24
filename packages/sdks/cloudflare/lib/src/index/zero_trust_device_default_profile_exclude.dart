// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDeviceDefaultProfileExclude {
  /// The address in CIDR format to exclude from the tunnel. If `address` is present, `host` must not be present.
  final pulumi.Input<String?>? address;
  /// A description of the Split Tunnel item, displayed in the client UI.
  final pulumi.Input<String?>? description;
  /// The domain name to exclude from the tunnel. If `host` is present, `address` must not be present.
  final pulumi.Input<String?>? host;

  /// Creates a new [ZeroTrustDeviceDefaultProfileExclude].
  /// [address] The address in CIDR format to exclude from the tunnel. If `address` is present, `host` must not be present.
  /// [description] A description of the Split Tunnel item, displayed in the client UI.
  /// [host] The domain name to exclude from the tunnel. If `host` is present, `address` must not be present.
  const ZeroTrustDeviceDefaultProfileExclude({
    this.address,
    this.description,
    this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'description': ?description,
      'host': ?host,
    };
  }

  factory ZeroTrustDeviceDefaultProfileExclude.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDefaultProfileExclude(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDeviceCustomProfileInclude {
  /// The address in CIDR format to include in the tunnel. If `address` is present, `host` must not be present.
  final pulumi.Input<String?>? address;
  /// A description of the Split Tunnel item, displayed in the client UI.
  final pulumi.Input<String?>? description;
  /// The domain name to include in the tunnel. If `host` is present, `address` must not be present.
  final pulumi.Input<String?>? host;

  /// Creates a new [ZeroTrustDeviceCustomProfileInclude].
  /// [address] The address in CIDR format to include in the tunnel. If `address` is present, `host` must not be present.
  /// [description] A description of the Split Tunnel item, displayed in the client UI.
  /// [host] The domain name to include in the tunnel. If `host` is present, `address` must not be present.
  const ZeroTrustDeviceCustomProfileInclude({
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

  factory ZeroTrustDeviceCustomProfileInclude.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceCustomProfileInclude(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

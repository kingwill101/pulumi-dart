// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterfacePublicIpv4Shared {
  /// The assigned IPv4 address.
  final pulumi.Input<String>? address;

  /// The ID of the Linode to assign this interface to.
  final pulumi.Input<int>? linodeId;

  /// Creates a new [InterfacePublicIpv4Shared].
  /// [address] The assigned IPv4 address.
  /// [linodeId] The ID of the Linode to assign this interface to.
  InterfacePublicIpv4Shared({this.address, this.linodeId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address, 'linodeId': ?linodeId};
  }

  factory InterfacePublicIpv4Shared.fromMap(Map<String, dynamic> map) {
    return InterfacePublicIpv4Shared(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linodeId: (() {
        final guardedValue = map['linodeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}

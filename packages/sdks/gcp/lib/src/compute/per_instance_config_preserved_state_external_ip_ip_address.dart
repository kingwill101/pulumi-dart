// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PerInstanceConfigPreservedStateExternalIpIpAddress {
  /// The URL of the reservation for this IP address.
  final pulumi.Input<String>? address;

  /// Creates a new [PerInstanceConfigPreservedStateExternalIpIpAddress].
  /// [address] The URL of the reservation for this IP address.
  PerInstanceConfigPreservedStateExternalIpIpAddress({this.address});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address};
  }

  factory PerInstanceConfigPreservedStateExternalIpIpAddress.fromMap(
    Map<String, dynamic> map,
  ) {
    return PerInstanceConfigPreservedStateExternalIpIpAddress(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

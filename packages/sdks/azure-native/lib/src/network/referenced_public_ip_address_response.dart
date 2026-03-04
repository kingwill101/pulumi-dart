// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to a public IP address.
class ReferencedPublicIpAddressResponse {
  /// The PublicIPAddress Reference.
  final pulumi.Input<String>? id;

  /// Creates a new [ReferencedPublicIpAddressResponse].
  /// [id] The PublicIPAddress Reference.
  ReferencedPublicIpAddressResponse({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory ReferencedPublicIpAddressResponse.fromMap(Map<String, dynamic> map) {
    return ReferencedPublicIpAddressResponse(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU that defines the tier and kind of the peering.
class PeeringSku {
  /// The name of the peering SKU.
  final pulumi.Input<String>? name;

  /// Creates a new [PeeringSku].
  /// [name] The name of the peering SKU.
  PeeringSku({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory PeeringSku.fromMap(Map<String, dynamic> map) {
    return PeeringSku(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

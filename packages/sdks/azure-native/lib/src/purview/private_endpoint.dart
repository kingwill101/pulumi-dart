// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A private endpoint class.
class PrivateEndpoint {
  /// The private endpoint identifier.
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpoint].
  /// [id] The private endpoint identifier.
  PrivateEndpoint({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return PrivateEndpoint(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}


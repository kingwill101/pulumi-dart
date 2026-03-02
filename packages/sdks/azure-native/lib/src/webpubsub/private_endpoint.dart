// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private endpoint
class PrivateEndpoint {
  /// Full qualified Id of the private endpoint
  final pulumi.Input<String>? id;

  /// Creates a new [PrivateEndpoint].
  /// [id] Full qualified Id of the private endpoint
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
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}


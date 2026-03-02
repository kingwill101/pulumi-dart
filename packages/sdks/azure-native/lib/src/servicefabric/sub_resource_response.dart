// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure resource identifier.
class SubResourceResponse {
  /// Azure resource identifier.
  final pulumi.Input<String>? id;

  /// Creates a new [SubResourceResponse].
  /// [id] Azure resource identifier.
  SubResourceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubResourceResponse.fromMap(Map<String, dynamic> map) {
    return SubResourceResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}


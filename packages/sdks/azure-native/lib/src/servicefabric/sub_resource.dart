// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure resource identifier.
class SubResource {
  /// Sub-resource ID. Both absolute resource ID and a relative resource ID are accepted.
  /// An absolute ID starts with /subscriptions/ and contains the entire ID of the parent resource and the ID of the sub-resource in the end.
  /// A relative ID replaces the ID of the parent resource with a token '$self', followed by the sub-resource ID itself.
  /// Example of a relative ID: $self/frontEndConfigurations/my-frontend.
  final pulumi.Input<String>? id;

  /// Creates a new [SubResource].
  /// [id] Sub-resource ID. Both absolute resource ID and a relative resource ID are accepted.
  const SubResource({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubResource.fromMap(Map<String, dynamic> map) {
    return SubResource(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


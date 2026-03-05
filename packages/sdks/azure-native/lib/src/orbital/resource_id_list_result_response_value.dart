// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceIdListResultResponseValue {
  /// The Azure Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [ResourceIdListResultResponseValue].
  /// [id] The Azure Resource ID.
  ResourceIdListResultResponseValue({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceIdListResultResponseValue.fromMap(Map<String, dynamic> map) {
    return ResourceIdListResultResponseValue(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxGeneratorPlaceholder {
  /// Unique ID used to map custom placeholder to parameters in fulfillment.
  final pulumi.Input<String>? id;
  /// Custom placeholder value in the prompt text.
  final pulumi.Input<String>? name;

  /// Creates a new [CxGeneratorPlaceholder].
  /// [id] Unique ID used to map custom placeholder to parameters in fulfillment.
  /// [name] Custom placeholder value in the prompt text.
  const CxGeneratorPlaceholder({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory CxGeneratorPlaceholder.fromMap(Map<String, dynamic> map) {
    return CxGeneratorPlaceholder(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


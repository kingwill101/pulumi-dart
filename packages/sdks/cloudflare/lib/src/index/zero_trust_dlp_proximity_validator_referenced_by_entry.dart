// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpProximityValidatorReferencedByEntry {
  final pulumi.Input<String?>? id;
  final pulumi.Input<String?>? name;
  /// The type of a detection entry.
  /// Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  final pulumi.Input<String?>? type;

  /// Creates a new [ZeroTrustDlpProximityValidatorReferencedByEntry].
  /// [id] Optional.
  /// [name] Optional.
  /// [type] The type of a detection entry.
  const ZeroTrustDlpProximityValidatorReferencedByEntry({
    this.id,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ZeroTrustDlpProximityValidatorReferencedByEntry.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpProximityValidatorReferencedByEntry(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

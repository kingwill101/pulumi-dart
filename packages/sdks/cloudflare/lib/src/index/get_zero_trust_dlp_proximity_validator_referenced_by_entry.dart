// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpProximityValidatorReferencedByEntry {
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;
  /// The type of a detection entry.
  /// Available values: "custom", "custom*prompt*topic", "predefined", "integration", "exact*data", "document*fingerprint", "wordList".
  final pulumi.Input<String> type;

  /// Creates a new [GetZeroTrustDlpProximityValidatorReferencedByEntry].
  /// [id] Required.
  /// [name] Required.
  /// [type] The type of a detection entry.
  const GetZeroTrustDlpProximityValidatorReferencedByEntry({
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetZeroTrustDlpProximityValidatorReferencedByEntry.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpProximityValidatorReferencedByEntry(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

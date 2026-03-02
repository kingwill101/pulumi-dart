// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsDatasetConfigIdentity {
  /// (Output)
  /// Name of the identity.
  final pulumi.Input<String>? name;
  /// Type of identity to use for the DatasetConfig.
  /// Possible values are: `IDENTITY_TYPE_PER_CONFIG`, `IDENTITY_TYPE_PER_PROJECT`.
  final pulumi.Input<String> type;

  /// Creates a new [InsightsDatasetConfigIdentity].
  /// [name] (Output)
  /// [type] Type of identity to use for the DatasetConfig.
  InsightsDatasetConfigIdentity({
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': type,
    };
  }

  factory InsightsDatasetConfigIdentity.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigIdentity(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}


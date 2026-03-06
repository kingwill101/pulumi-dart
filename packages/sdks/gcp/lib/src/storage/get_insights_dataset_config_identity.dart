// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInsightsDatasetConfigIdentity {
  /// Name of the identity.
  final pulumi.Input<String> name;
  /// Type of identity to use for the DatasetConfig. Possible values: ["IDENTITY_TYPE_PER_CONFIG", "IDENTITY_TYPE_PER_PROJECT"]
  final pulumi.Input<String> type;

  /// Creates a new [GetInsightsDatasetConfigIdentity].
  /// [name] Name of the identity.
  /// [type] Type of identity to use for the DatasetConfig. Possible values: ["IDENTITY_TYPE_PER_CONFIG", "IDENTITY_TYPE_PER_PROJECT"]
  const GetInsightsDatasetConfigIdentity({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetInsightsDatasetConfigIdentity.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigIdentity(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountAnalyticalStorage {
  /// The schema type of the Analytical Storage for this Cosmos DB account. Possible values are `FullFidelity` and `WellDefined`.
  final pulumi.Input<String> schemaType;

  /// Creates a new [AccountAnalyticalStorage].
  /// [schemaType] The schema type of the Analytical Storage for this Cosmos DB account. Possible values are `FullFidelity` and `WellDefined`.
  AccountAnalyticalStorage({required this.schemaType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'schemaType': schemaType};
  }

  factory AccountAnalyticalStorage.fromMap(Map<String, dynamic> map) {
    return AccountAnalyticalStorage(
      schemaType: pulumi.Input.fromValue(map['schemaType'] as String),
    );
  }
}

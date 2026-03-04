// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A message defining the database engine and provider.
class DatabaseTypeResponseDatamigrationV1beta1 {
  /// The database engine.
  final pulumi.Input<String> engine;

  /// The database provider.
  final pulumi.Input<String> provider;

  /// Creates a new [DatabaseTypeResponseDatamigrationV1beta1].
  /// [engine] The database engine.
  /// [provider] The database provider.
  DatabaseTypeResponseDatamigrationV1beta1({
    required this.engine,
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'engine': engine, 'provider': provider};
  }

  factory DatabaseTypeResponseDatamigrationV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseTypeResponseDatamigrationV1beta1(
      engine: pulumi.Input.fromValue(map['engine'] as String),
      provider: pulumi.Input.fromValue(map['provider'] as String),
    );
  }
}

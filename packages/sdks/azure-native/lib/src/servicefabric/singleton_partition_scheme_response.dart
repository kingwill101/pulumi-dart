// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the partition scheme of a singleton-partitioned, or non-partitioned service.
class SingletonPartitionSchemeResponse {
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'Singleton'.
  final pulumi.Input<String> partitionScheme;

  /// Creates a new [SingletonPartitionSchemeResponse].
  /// [partitionScheme] Enumerates the ways that a service can be partitioned.
  const SingletonPartitionSchemeResponse({
    required this.partitionScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionScheme': partitionScheme,
    };
  }

  factory SingletonPartitionSchemeResponse.fromMap(Map<String, dynamic> map) {
    return SingletonPartitionSchemeResponse(
      partitionScheme: pulumi.Input.fromValue(map['partitionScheme'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the partition scheme of a singleton-partitioned, or non-partitioned service.
class SingletonPartitionScheme {
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'Singleton'.
  final pulumi.Input<String> partitionScheme;

  /// Creates a new [SingletonPartitionScheme].
  /// [partitionScheme] Enumerates the ways that a service can be partitioned.
  SingletonPartitionScheme({
    required this.partitionScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionScheme': partitionScheme,
    };
  }

  factory SingletonPartitionScheme.fromMap(Map<String, dynamic> map) {
    return SingletonPartitionScheme(
      partitionScheme: (map['partitionScheme'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the named partition scheme of the service.
class NamedPartitionScheme {
  /// Array for the names of the partitions.
  final pulumi.Input<List<String>> names;
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'Named'.
  final pulumi.Input<String> partitionScheme;

  /// Creates a new [NamedPartitionScheme].
  /// [names] Array for the names of the partitions.
  /// [partitionScheme] Enumerates the ways that a service can be partitioned.
  NamedPartitionScheme({
    required this.names,
    required this.partitionScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
      'partitionScheme': partitionScheme,
    };
  }

  factory NamedPartitionScheme.fromMap(Map<String, dynamic> map) {
    return NamedPartitionScheme(
      names: ((map['names'] as List).cast<String>()).input(),
      partitionScheme: (map['partitionScheme'] as String).input(),
    );
  }
}


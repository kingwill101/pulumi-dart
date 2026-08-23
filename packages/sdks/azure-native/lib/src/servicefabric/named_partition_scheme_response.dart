// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the named partition scheme of the service.
class NamedPartitionSchemeResponse {
  /// Array for the names of the partitions.
  final pulumi.Input<List<String>> names;
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'Named'.
  final pulumi.Input<String> partitionScheme;

  /// Creates a new [NamedPartitionSchemeResponse].
  /// [names] Array for the names of the partitions.
  /// [partitionScheme] Enumerates the ways that a service can be partitioned.
  const NamedPartitionSchemeResponse({
    required this.names,
    required this.partitionScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
      'partitionScheme': partitionScheme,
    };
  }

  factory NamedPartitionSchemeResponse.fromMap(Map<String, dynamic> map) {
    return NamedPartitionSchemeResponse(
      names: pulumi.Input.fromValue((map['names'] as List).cast<String>()),
      partitionScheme: pulumi.Input.fromValue(map['partitionScheme'] as String),
    );
  }
}

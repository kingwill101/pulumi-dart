// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a key field within the entity's partition structure. You could have up to 20 partition fields, but only the first 10 partitions have the filtering ability due to performance consideration. Note: Partition fields are immutable.
class GoogleCloudDataplexV1SchemaPartitionFieldResponse {
  /// Partition field name must consist of letters, numbers, and underscores only, with a maximum of length of 256 characters, and must begin with a letter or underscore..
  final pulumi.Input<String> name;
  /// Immutable. The type of field.
  final pulumi.Input<String> type;

  /// Creates a new [GoogleCloudDataplexV1SchemaPartitionFieldResponse].
  /// [name] Partition field name must consist of letters, numbers, and underscores only, with a maximum of length of 256 characters, and must begin with a letter or underscore..
  /// [type] Immutable. The type of field.
  const GoogleCloudDataplexV1SchemaPartitionFieldResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GoogleCloudDataplexV1SchemaPartitionFieldResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1SchemaPartitionFieldResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

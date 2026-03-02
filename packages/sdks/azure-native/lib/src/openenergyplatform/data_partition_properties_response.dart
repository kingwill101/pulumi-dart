// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the properties of an individual data partition.
class DataPartitionPropertiesResponse {
  /// Name of the data partition
  final pulumi.Input<String>? name;
  /// Name of the data partition
  final pulumi.Input<String>? provisioningState;

  /// Creates a new [DataPartitionPropertiesResponse].
  /// [name] Name of the data partition
  /// [provisioningState] Name of the data partition
  DataPartitionPropertiesResponse({
    this.name,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'provisioningState': ?provisioningState,
    };
  }

  factory DataPartitionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataPartitionPropertiesResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
    );
  }
}


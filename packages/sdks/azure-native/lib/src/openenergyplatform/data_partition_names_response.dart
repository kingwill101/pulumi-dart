// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The list of Energy services resource's Data Partition Names.
class DataPartitionNamesResponse {
  final pulumi.Input<String>? name;

  /// Creates a new [DataPartitionNamesResponse].
  /// [name] Optional.
  const DataPartitionNamesResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DataPartitionNamesResponse.fromMap(Map<String, dynamic> map) {
    return DataPartitionNamesResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

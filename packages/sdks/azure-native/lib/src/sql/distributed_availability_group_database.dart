// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database specific information
class DistributedAvailabilityGroupDatabase {
  /// The name of the database in link
  final pulumi.Input<String>? databaseName;

  /// Creates a new [DistributedAvailabilityGroupDatabase].
  /// [databaseName] The name of the database in link
  const DistributedAvailabilityGroupDatabase({
    this.databaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
    };
  }

  factory DistributedAvailabilityGroupDatabase.fromMap(Map<String, dynamic> map) {
    return DistributedAvailabilityGroupDatabase(
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

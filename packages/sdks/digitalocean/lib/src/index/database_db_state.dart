// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseDb resources.
class DatabaseDbState {
  /// The ID of the original source database cluster.
  final pulumi.Input<String>? clusterId;
  /// The name for the database.
  final pulumi.Input<String>? name;

  /// Creates a new [DatabaseDbState].
  /// [clusterId] The ID of the original source database cluster.
  /// [name] The name for the database.
  DatabaseDbState({
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? name,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'name': ?name,
    };
  }

  factory DatabaseDbState.fromMap(Map<String, dynamic> map) {
    return DatabaseDbState(
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


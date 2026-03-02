// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cardinality.dart';

/// The condition that a Waiter resource is waiting for.
class EndCondition {
  /// The cardinality of the `EndCondition`.
  final pulumi.Input<Cardinality>? cardinality;

  /// Creates a new [EndCondition].
  /// [cardinality] The cardinality of the `EndCondition`.
  EndCondition({
    this.cardinality,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardinality': ?pulumi.Input.mapOptionalInputValue<Cardinality, Map<String, dynamic>>(cardinality, (value) => value.toMap()),
    };
  }

  factory EndCondition.fromMap(Map<String, dynamic> map) {
    return EndCondition(
      cardinality: map['cardinality'] == null ? null : (Cardinality.fromMap((map['cardinality']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


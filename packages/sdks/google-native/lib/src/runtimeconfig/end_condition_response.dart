// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cardinality_response.dart';

/// The condition that a Waiter resource is waiting for.
class EndConditionResponse {
  /// The cardinality of the `EndCondition`.
  final pulumi.Input<CardinalityResponse> cardinality;

  /// Creates a new [EndConditionResponse].
  /// [cardinality] The cardinality of the `EndCondition`.
  const EndConditionResponse({
    required this.cardinality,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardinality': pulumi.Input.mapInputValue<CardinalityResponse, Map<String, dynamic>>(cardinality, (value) => value.toMap()),
    };
  }

  factory EndConditionResponse.fromMap(Map<String, dynamic> map) {
    return EndConditionResponse(
      cardinality: pulumi.Input.fromValue(CardinalityResponse.fromMap((map['cardinality']! as Map).cast<String, dynamic>())),
    );
  }
}


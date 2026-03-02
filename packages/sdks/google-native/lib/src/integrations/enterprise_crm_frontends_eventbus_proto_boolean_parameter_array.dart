// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray {
  final pulumi.Input<List<bool>>? booleanValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray].
  /// [booleanValues] Optional.
  EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray({
    this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValues': ?booleanValues,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoBooleanParameterArray(
      booleanValues: map['booleanValues'] == null ? null : ((map['booleanValues']! as List).cast<bool>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse {
  final pulumi.Input<List<bool>> booleanValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse].
  /// [booleanValues] Required.
  EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse({
    required this.booleanValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValues': booleanValues,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoBooleanParameterArrayResponse(
      booleanValues: pulumi.Input.fromValue((map['booleanValues'] as List).cast<bool>()),
    );
  }
}


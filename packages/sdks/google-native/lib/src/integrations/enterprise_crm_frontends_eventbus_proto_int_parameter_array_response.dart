// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse {
  final pulumi.Input<List<String>> intValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse].
  /// [intValues] Required.
  const EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse({
    required this.intValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intValues': intValues,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoIntParameterArrayResponse(
      intValues: pulumi.Input.fromValue((map['intValues'] as List).cast<String>()),
    );
  }
}

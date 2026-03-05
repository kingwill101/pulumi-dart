// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoIntParameterArrayResponse {
  final pulumi.Input<List<String>> intValues;

  /// Creates a new [EnterpriseCrmEventbusProtoIntParameterArrayResponse].
  /// [intValues] Required.
  EnterpriseCrmEventbusProtoIntParameterArrayResponse({
    required this.intValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intValues': intValues,
    };
  }

  factory EnterpriseCrmEventbusProtoIntParameterArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoIntParameterArrayResponse(
      intValues: pulumi.Input.fromValue((map['intValues'] as List).cast<String>()),
    );
  }
}


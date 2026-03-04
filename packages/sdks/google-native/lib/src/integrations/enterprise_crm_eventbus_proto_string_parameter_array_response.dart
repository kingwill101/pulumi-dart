// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoStringParameterArrayResponse {
  final pulumi.Input<List<String>> stringValues;

  /// Creates a new [EnterpriseCrmEventbusProtoStringParameterArrayResponse].
  /// [stringValues] Required.
  EnterpriseCrmEventbusProtoStringParameterArrayResponse({
    required this.stringValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stringValues': stringValues};
  }

  factory EnterpriseCrmEventbusProtoStringParameterArrayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoStringParameterArrayResponse(
      stringValues: pulumi.Input.fromValue(
        (map['stringValues'] as List).cast<String>(),
      ),
    );
  }
}

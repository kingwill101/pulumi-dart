// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse {
  final pulumi.Input<List<String>> stringValues;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse].
  /// [stringValues] Required.
  EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse({
    required this.stringValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stringValues': stringValues};
  }

  factory EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoStringParameterArrayResponse(
      stringValues: pulumi.Input.fromValue(
        (map['stringValues'] as List).cast<String>(),
      ),
    );
  }
}

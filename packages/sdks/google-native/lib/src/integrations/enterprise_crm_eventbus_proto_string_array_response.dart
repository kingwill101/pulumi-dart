// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoStringArrayResponse {
  final pulumi.Input<List<String>> values;

  /// Creates a new [EnterpriseCrmEventbusProtoStringArrayResponse].
  /// [values] Required.
  EnterpriseCrmEventbusProtoStringArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory EnterpriseCrmEventbusProtoStringArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoStringArrayResponse(
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}


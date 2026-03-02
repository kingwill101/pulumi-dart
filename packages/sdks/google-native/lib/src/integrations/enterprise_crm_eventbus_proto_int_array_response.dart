// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoIntArrayResponse {
  final pulumi.Input<List<String>> values;

  /// Creates a new [EnterpriseCrmEventbusProtoIntArrayResponse].
  /// [values] Required.
  EnterpriseCrmEventbusProtoIntArrayResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory EnterpriseCrmEventbusProtoIntArrayResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoIntArrayResponse(
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}


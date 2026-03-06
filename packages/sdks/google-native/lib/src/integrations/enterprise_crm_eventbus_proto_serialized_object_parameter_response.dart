// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoSerializedObjectParameterResponse {
  final pulumi.Input<String> objectValue;

  /// Creates a new [EnterpriseCrmEventbusProtoSerializedObjectParameterResponse].
  /// [objectValue] Required.
  const EnterpriseCrmEventbusProtoSerializedObjectParameterResponse({
    required this.objectValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectValue': objectValue,
    };
  }

  factory EnterpriseCrmEventbusProtoSerializedObjectParameterResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoSerializedObjectParameterResponse(
      objectValue: pulumi.Input.fromValue(map['objectValue'] as String),
    );
  }
}


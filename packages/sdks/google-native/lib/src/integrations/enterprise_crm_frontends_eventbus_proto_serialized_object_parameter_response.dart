// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse {
  final pulumi.Input<String> objectValue;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse].
  /// [objectValue] Required.
  EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse({
    required this.objectValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectValue': objectValue,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse(
      objectValue: (map['objectValue'] as String).input(),
    );
  }
}


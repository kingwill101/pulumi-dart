// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse {
  /// The fully-qualified proto name. This message, for example, would be "enterprise.crm.eventbus.proto.ParamSpecEntry.ProtoDefinition".
  final pulumi.Input<String> fullName;

  /// Path to the proto file that contains the message type's definition.
  final pulumi.Input<String> path;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse].
  /// [fullName] The fully-qualified proto name. This message, for example, would be "enterprise.crm.eventbus.proto.ParamSpecEntry.ProtoDefinition".
  /// [path] Path to the proto file that contains the message type's definition.
  EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse({
    required this.fullName,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fullName': fullName, 'path': path};
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse(
      fullName: pulumi.Input.fromValue(map['fullName'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

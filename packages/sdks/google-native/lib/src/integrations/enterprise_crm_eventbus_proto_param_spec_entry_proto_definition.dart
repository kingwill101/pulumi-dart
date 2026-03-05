// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition {
  /// The fully-qualified proto name. This message, for example, would be "enterprise.crm.eventbus.proto.ParamSpecEntry.ProtoDefinition".
  final pulumi.Input<String>? fullName;
  /// Path to the proto file that contains the message type's definition.
  final pulumi.Input<String>? path;

  /// Creates a new [EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition].
  /// [fullName] The fully-qualified proto name. This message, for example, would be "enterprise.crm.eventbus.proto.ParamSpecEntry.ProtoDefinition".
  /// [path] Path to the proto file that contains the message type's definition.
  EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition({
    this.fullName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullName': ?fullName,
      'path': ?path,
    };
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition(
      fullName: (() { final guardedValue = map['fullName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


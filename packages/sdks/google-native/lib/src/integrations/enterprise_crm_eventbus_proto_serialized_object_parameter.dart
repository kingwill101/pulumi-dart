// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoSerializedObjectParameter {
  final pulumi.Input<String>? objectValue;

  /// Creates a new [EnterpriseCrmEventbusProtoSerializedObjectParameter].
  /// [objectValue] Optional.
  const EnterpriseCrmEventbusProtoSerializedObjectParameter({
    this.objectValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectValue': ?objectValue,
    };
  }

  factory EnterpriseCrmEventbusProtoSerializedObjectParameter.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoSerializedObjectParameter(
      objectValue: (() { final guardedValue = map['objectValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

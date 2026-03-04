// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter {
  final pulumi.Input<String>? objectValue;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter].
  /// [objectValue] Optional.
  EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter({
    this.objectValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'objectValue': ?objectValue};
  }

  factory EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter(
      objectValue: (() {
        final guardedValue = map['objectValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

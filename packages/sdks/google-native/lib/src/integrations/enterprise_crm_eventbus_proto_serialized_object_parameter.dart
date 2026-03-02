// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseCrmEventbusProtoSerializedObjectParameter {
  final pulumi.Input<String>? objectValue;

  /// Creates a new [EnterpriseCrmEventbusProtoSerializedObjectParameter].
  /// [objectValue] Optional.
  EnterpriseCrmEventbusProtoSerializedObjectParameter({
    this.objectValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectValue': ?objectValue,
    };
  }

  factory EnterpriseCrmEventbusProtoSerializedObjectParameter.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoSerializedObjectParameter(
      objectValue: map['objectValue'] == null ? null : (map['objectValue']! as String).input(),
    );
  }
}


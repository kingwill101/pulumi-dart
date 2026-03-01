// ignore_for_file: unused_element, unnecessary_cast


class EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter {
  final String? objectValue;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter].
  /// [objectValue] Optional.
  EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter({
    this.objectValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectValue': ?objectValue,
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter(
      objectValue: map['objectValue'] == null ? null : map['objectValue'] as String,
    );
  }
}


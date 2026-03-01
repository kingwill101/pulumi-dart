// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesShmemModel {
  /// Sets the type attribute for the model of the shared memory device.
  final String type;

  /// Creates a new [DomainDevicesShmemModel].
  /// [type] Sets the type attribute for the model of the shared memory device.
  DomainDevicesShmemModel({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesShmemModel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesShmemModel(
      type: map['type'] as String,
    );
  }
}


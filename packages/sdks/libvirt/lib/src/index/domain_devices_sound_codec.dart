// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSoundCodec {
  /// This field specifies the type of codec used in the sound device configuration for the domain.
  final String type;

  /// Creates a new [DomainDevicesSoundCodec].
  /// [type] This field specifies the type of codec used in the sound device configuration for the domain.
  DomainDevicesSoundCodec({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesSoundCodec.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSoundCodec(
      type: map['type'] as String,
    );
  }
}


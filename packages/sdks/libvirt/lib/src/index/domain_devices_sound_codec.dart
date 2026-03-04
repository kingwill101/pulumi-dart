// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesSoundCodec {
  /// This field specifies the type of codec used in the sound device configuration for the domain.
  final pulumi.Input<String> type;

  /// Creates a new [DomainDevicesSoundCodec].
  /// [type] This field specifies the type of codec used in the sound device configuration for the domain.
  DomainDevicesSoundCodec({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory DomainDevicesSoundCodec.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSoundCodec(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

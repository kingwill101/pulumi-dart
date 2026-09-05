// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicAudio {
  /// Defines a unique identifier for the audio configuration of the graphics device.
  final pulumi.Input<double?>? id;

  /// Creates a new [DomainDevicesGraphicAudio].
  /// [id] Defines a unique identifier for the audio configuration of the graphics device.
  const DomainDevicesGraphicAudio({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DomainDevicesGraphicAudio.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicAudio(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}

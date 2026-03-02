// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesVideoModelResolution {
  /// Sets the horizontal resolution for the video device model.
  final pulumi.Input<double> x;
  /// Sets the vertical resolution for the video device model.
  final pulumi.Input<double> y;

  /// Creates a new [DomainDevicesVideoModelResolution].
  /// [x] Sets the horizontal resolution for the video device model.
  /// [y] Sets the vertical resolution for the video device model.
  DomainDevicesVideoModelResolution({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    };
  }

  factory DomainDevicesVideoModelResolution.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVideoModelResolution(
      x: (map['x'] as double).input(),
      y: (map['y'] as double).input(),
    );
  }
}


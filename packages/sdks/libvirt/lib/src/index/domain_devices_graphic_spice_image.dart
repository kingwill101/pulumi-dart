// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesGraphicSpiceImage {
  /// Sets the compression method for graphical images transmitted over the Spice connection.
  final pulumi.Input<String> compression;

  /// Creates a new [DomainDevicesGraphicSpiceImage].
  /// [compression] Sets the compression method for graphical images transmitted over the Spice connection.
  DomainDevicesGraphicSpiceImage({
    required this.compression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compression': compression,
    };
  }

  factory DomainDevicesGraphicSpiceImage.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceImage(
      compression: pulumi.Input.fromValue(map['compression'] as String),
    );
  }
}


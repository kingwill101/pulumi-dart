// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerMountBindOptions {
  /// A propagation mode with the value.
  final pulumi.Input<String?>? propagation;

  /// Creates a new [ContainerMountBindOptions].
  /// [propagation] A propagation mode with the value.
  const ContainerMountBindOptions({
    this.propagation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'propagation': ?propagation,
    };
  }

  factory ContainerMountBindOptions.fromMap(Map<String, dynamic> map) {
    return ContainerMountBindOptions(
      propagation: (() { final guardedValue = map['propagation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

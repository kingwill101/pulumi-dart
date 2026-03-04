// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuildxBuilderKubernetesQemu {
  /// Sets the QEMU emulation image.
  final pulumi.Input<String>? image;

  /// Install QEMU emulation for multi-platform support.
  final pulumi.Input<bool>? install;

  /// Creates a new [BuildxBuilderKubernetesQemu].
  /// [image] Sets the QEMU emulation image.
  /// [install] Install QEMU emulation for multi-platform support.
  BuildxBuilderKubernetesQemu({this.image, this.install});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'image': ?image, 'install': ?install};
  }

  factory BuildxBuilderKubernetesQemu.fromMap(Map<String, dynamic> map) {
    return BuildxBuilderKubernetesQemu(
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      install: (() {
        final guardedValue = map['install'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

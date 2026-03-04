// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerCapabilities {
  /// List of linux capabilities to add.
  final pulumi.Input<List<String>>? adds;

  /// List of linux capabilities to drop.
  final pulumi.Input<List<String>>? drops;

  /// Creates a new [ContainerCapabilities].
  /// [adds] List of linux capabilities to add.
  /// [drops] List of linux capabilities to drop.
  ContainerCapabilities({this.adds, this.drops});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'adds': ?adds, 'drops': ?drops};
  }

  factory ContainerCapabilities.fromMap(Map<String, dynamic> map) {
    return ContainerCapabilities(
      adds: (() {
        final guardedValue = map['adds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      drops: (() {
        final guardedValue = map['drops'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

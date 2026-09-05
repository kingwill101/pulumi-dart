// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesStorage {
  final pulumi.Input<bool?>? dataPlaneAvailable;

  /// Creates a new [FeaturesStorage].
  /// [dataPlaneAvailable] Optional.
  const FeaturesStorage({
    this.dataPlaneAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneAvailable': ?dataPlaneAvailable,
    };
  }

  factory FeaturesStorage.fromMap(Map<String, dynamic> map) {
    return FeaturesStorage(
      dataPlaneAvailable: (() { final guardedValue = map['dataPlaneAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

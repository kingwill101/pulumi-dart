// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesStorage {
  final pulumi.Input<bool>? dataPlaneAvailable;

  /// Creates a new [FeaturesStorage].
  /// [dataPlaneAvailable] Optional.
  FeaturesStorage({
    this.dataPlaneAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneAvailable': ?dataPlaneAvailable,
    };
  }

  factory FeaturesStorage.fromMap(Map<String, dynamic> map) {
    return FeaturesStorage(
      dataPlaneAvailable: map['dataPlaneAvailable'] == null ? null : (map['dataPlaneAvailable'] as bool).input(),
    );
  }
}


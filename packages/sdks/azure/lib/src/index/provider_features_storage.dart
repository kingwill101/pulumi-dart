// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesStorage {
  final pulumi.Input<bool>? dataPlaneAvailable;

  /// Creates a new [ProviderFeaturesStorage].
  /// [dataPlaneAvailable] Optional.
  ProviderFeaturesStorage({
    this.dataPlaneAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneAvailable': ?dataPlaneAvailable,
    };
  }

  factory ProviderFeaturesStorage.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesStorage(
      dataPlaneAvailable: map['dataPlaneAvailable'] == null ? null : (map['dataPlaneAvailable'] as bool).input(),
    );
  }
}


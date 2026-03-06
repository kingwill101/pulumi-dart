// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesStorage {
  final pulumi.Input<bool>? dataPlaneAvailable;

  /// Creates a new [ProviderFeaturesStorage].
  /// [dataPlaneAvailable] Optional.
  const ProviderFeaturesStorage({
    this.dataPlaneAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneAvailable': ?dataPlaneAvailable,
    };
  }

  factory ProviderFeaturesStorage.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesStorage(
      dataPlaneAvailable: (() { final guardedValue = map['dataPlaneAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the storage configuration.
class StorageConfiguration {
  /// The properties of the transport directory attached to the VIS. The default for transportFileShareConfiguration is the createAndMount flow if storage configuration is missing.
  final pulumi.Input<dynamic>? transportFileShareConfiguration;

  /// Creates a new [StorageConfiguration].
  /// [transportFileShareConfiguration] The properties of the transport directory attached to the VIS. The default for transportFileShareConfiguration is the createAndMount flow if storage configuration is missing.
  const StorageConfiguration({
    this.transportFileShareConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transportFileShareConfiguration': ?transportFileShareConfiguration,
    };
  }

  factory StorageConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageConfiguration(
      transportFileShareConfiguration: (() { final guardedValue = map['transportFileShareConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

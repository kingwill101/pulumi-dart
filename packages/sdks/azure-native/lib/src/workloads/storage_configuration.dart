// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_and_mount_file_share_configuration.dart';

/// Gets or sets the storage configuration.
class StorageConfiguration {
  /// The properties of the transport directory attached to the VIS. The default for transportFileShareConfiguration is the createAndMount flow if storage configuration is missing.
  final pulumi.Input<CreateAndMountFileShareConfiguration>? transportFileShareConfiguration;

  /// Creates a new [StorageConfiguration].
  /// [transportFileShareConfiguration] The properties of the transport directory attached to the VIS. The default for transportFileShareConfiguration is the createAndMount flow if storage configuration is missing.
  const StorageConfiguration({
    this.transportFileShareConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transportFileShareConfiguration': ?pulumi.Input.mapOptionalInputValue<CreateAndMountFileShareConfiguration, Map<String, dynamic>>(transportFileShareConfiguration, (value) => value.toMap()),
    };
  }

  factory StorageConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageConfiguration(
      transportFileShareConfiguration: (() { final guardedValue = map['transportFileShareConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreateAndMountFileShareConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'create_and_mount_file_share_configuration.dart';

/// Gets or sets the storage configuration.
class StorageConfiguration {
  /// The properties of the transport directory attached to the VIS. The default for transportFileShareConfiguration is the createAndMount flow if storage configuration is missing.
  final CreateAndMountFileShareConfiguration? transportFileShareConfiguration;

  /// Creates a new [StorageConfiguration].
  /// [transportFileShareConfiguration] The properties of the transport directory attached to the VIS. The default for transportFileShareConfiguration is the createAndMount flow if storage configuration is missing.
  StorageConfiguration({
    this.transportFileShareConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transportFileShareConfiguration': ?transportFileShareConfiguration == null ? null : transportFileShareConfiguration!.toMap(),
    };
  }

  factory StorageConfiguration.fromMap(Map<String, dynamic> map) {
    return StorageConfiguration(
      transportFileShareConfiguration: map['transportFileShareConfiguration'] == null ? null : CreateAndMountFileShareConfiguration.fromMap((map['transportFileShareConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}


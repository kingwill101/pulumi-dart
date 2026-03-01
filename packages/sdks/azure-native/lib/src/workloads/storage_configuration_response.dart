// ignore_for_file: unused_element, unnecessary_cast

import 'create_and_mount_file_share_configuration_response.dart';

/// Gets or sets the storage configuration.
class StorageConfigurationResponse {
  /// The properties of the transport directory attached to the VIS. The default for transportFileShareConfiguration is the createAndMount flow if storage configuration is missing.
  final CreateAndMountFileShareConfigurationResponse? transportFileShareConfiguration;

  /// Creates a new [StorageConfigurationResponse].
  /// [transportFileShareConfiguration] The properties of the transport directory attached to the VIS. The default for transportFileShareConfiguration is the createAndMount flow if storage configuration is missing.
  StorageConfigurationResponse({
    this.transportFileShareConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transportFileShareConfiguration': ?transportFileShareConfiguration == null ? null : transportFileShareConfiguration!.toMap(),
    };
  }

  factory StorageConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return StorageConfigurationResponse(
      transportFileShareConfiguration: map['transportFileShareConfiguration'] == null ? null : CreateAndMountFileShareConfigurationResponse.fromMap((map['transportFileShareConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_and_mount_file_share_configuration_response.dart';

/// Gets or sets the storage configuration.
class StorageConfigurationResponse {
  /// The properties of the transport directory attached to the VIS. The default for transportFileShareConfiguration is the createAndMount flow if storage configuration is missing.
  final pulumi.Input<CreateAndMountFileShareConfigurationResponse>? transportFileShareConfiguration;

  /// Creates a new [StorageConfigurationResponse].
  /// [transportFileShareConfiguration] The properties of the transport directory attached to the VIS. The default for transportFileShareConfiguration is the createAndMount flow if storage configuration is missing.
  const StorageConfigurationResponse({
    this.transportFileShareConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transportFileShareConfiguration': ?pulumi.Input.mapOptionalInputValue<CreateAndMountFileShareConfigurationResponse, Map<String, dynamic>>(transportFileShareConfiguration, (value) => value.toMap()),
    };
  }

  factory StorageConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return StorageConfigurationResponse(
      transportFileShareConfiguration: (() { final guardedValue = map['transportFileShareConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CreateAndMountFileShareConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


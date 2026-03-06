// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_active_directory_config_response.dart';

/// Directory Services configuration for Kerberos-based authentication.
class DirectoryServicesConfigResponse {
  /// Configuration for Managed Service for Microsoft Active Directory.
  final pulumi.Input<ManagedActiveDirectoryConfigResponse> managedActiveDirectory;

  /// Creates a new [DirectoryServicesConfigResponse].
  /// [managedActiveDirectory] Configuration for Managed Service for Microsoft Active Directory.
  const DirectoryServicesConfigResponse({
    required this.managedActiveDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedActiveDirectory': pulumi.Input.mapInputValue<ManagedActiveDirectoryConfigResponse, Map<String, dynamic>>(managedActiveDirectory, (value) => value.toMap()),
    };
  }

  factory DirectoryServicesConfigResponse.fromMap(Map<String, dynamic> map) {
    return DirectoryServicesConfigResponse(
      managedActiveDirectory: pulumi.Input.fromValue(ManagedActiveDirectoryConfigResponse.fromMap((map['managedActiveDirectory']! as Map).cast<String, dynamic>())),
    );
  }
}


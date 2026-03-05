// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_active_directory_config.dart';

/// Directory Services configuration for Kerberos-based authentication.
class DirectoryServicesConfig {
  /// Configuration for Managed Service for Microsoft Active Directory.
  final pulumi.Input<ManagedActiveDirectoryConfig>? managedActiveDirectory;

  /// Creates a new [DirectoryServicesConfig].
  /// [managedActiveDirectory] Configuration for Managed Service for Microsoft Active Directory.
  DirectoryServicesConfig({
    this.managedActiveDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedActiveDirectory': ?pulumi.Input.mapOptionalInputValue<ManagedActiveDirectoryConfig, Map<String, dynamic>>(managedActiveDirectory, (value) => value.toMap()),
    };
  }

  factory DirectoryServicesConfig.fromMap(Map<String, dynamic> map) {
    return DirectoryServicesConfig(
      managedActiveDirectory: (() { final guardedValue = map['managedActiveDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedActiveDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


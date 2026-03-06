// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_properties.dart';

/// Settings for Azure Files identity based authentication.
class AzureFilesIdentityBasedAuthentication {
  /// Required if directoryServiceOptions are AD, optional if they are AADKERB.
  final pulumi.Input<ActiveDirectoryProperties>? activeDirectoryProperties;
  /// Default share permission for users using Kerberos authentication if RBAC role is not assigned.
  final pulumi.Input<String>? defaultSharePermission;
  /// Indicates the directory service used. Note that this enum may be extended in the future.
  final pulumi.Input<String> directoryServiceOptions;

  /// Creates a new [AzureFilesIdentityBasedAuthentication].
  /// [activeDirectoryProperties] Required if directoryServiceOptions are AD, optional if they are AADKERB.
  /// [defaultSharePermission] Default share permission for users using Kerberos authentication if RBAC role is not assigned.
  /// [directoryServiceOptions] Indicates the directory service used. Note that this enum may be extended in the future.
  const AzureFilesIdentityBasedAuthentication({
    this.activeDirectoryProperties,
    this.defaultSharePermission,
    required this.directoryServiceOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryProperties': ?pulumi.Input.mapOptionalInputValue<ActiveDirectoryProperties, Map<String, dynamic>>(activeDirectoryProperties, (value) => value.toMap()),
      'defaultSharePermission': ?defaultSharePermission,
      'directoryServiceOptions': directoryServiceOptions,
    };
  }

  factory AzureFilesIdentityBasedAuthentication.fromMap(Map<String, dynamic> map) {
    return AzureFilesIdentityBasedAuthentication(
      activeDirectoryProperties: (() { final guardedValue = map['activeDirectoryProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActiveDirectoryProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultSharePermission: (() { final guardedValue = map['defaultSharePermission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryServiceOptions: pulumi.Input.fromValue(map['directoryServiceOptions'] as String),
    );
  }
}


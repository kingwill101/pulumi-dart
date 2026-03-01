// ignore_for_file: unused_element, unnecessary_cast

import 'active_directory_properties_response.dart';

/// Settings for Azure Files identity based authentication.
class AzureFilesIdentityBasedAuthenticationResponse {
  /// Required if directoryServiceOptions are AD, optional if they are AADKERB.
  final ActiveDirectoryPropertiesResponse? activeDirectoryProperties;
  /// Default share permission for users using Kerberos authentication if RBAC role is not assigned.
  final String? defaultSharePermission;
  /// Indicates the directory service used. Note that this enum may be extended in the future.
  final String directoryServiceOptions;

  /// Creates a new [AzureFilesIdentityBasedAuthenticationResponse].
  /// [activeDirectoryProperties] Required if directoryServiceOptions are AD, optional if they are AADKERB.
  /// [defaultSharePermission] Default share permission for users using Kerberos authentication if RBAC role is not assigned.
  /// [directoryServiceOptions] Indicates the directory service used. Note that this enum may be extended in the future.
  AzureFilesIdentityBasedAuthenticationResponse({
    this.activeDirectoryProperties,
    this.defaultSharePermission,
    required this.directoryServiceOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryProperties': ?activeDirectoryProperties == null ? null : activeDirectoryProperties!.toMap(),
      'defaultSharePermission': ?defaultSharePermission,
      'directoryServiceOptions': directoryServiceOptions,
    };
  }

  factory AzureFilesIdentityBasedAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AzureFilesIdentityBasedAuthenticationResponse(
      activeDirectoryProperties: map['activeDirectoryProperties'] == null ? null : ActiveDirectoryPropertiesResponse.fromMap((map['activeDirectoryProperties'] as Map).cast<String, dynamic>()),
      defaultSharePermission: map['defaultSharePermission'] == null ? null : map['defaultSharePermission'] as String,
      directoryServiceOptions: map['directoryServiceOptions'] as String,
    );
  }
}


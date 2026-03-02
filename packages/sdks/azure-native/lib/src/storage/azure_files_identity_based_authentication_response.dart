// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_properties_response.dart';

/// Settings for Azure Files identity based authentication.
class AzureFilesIdentityBasedAuthenticationResponse {
  /// Required if directoryServiceOptions are AD, optional if they are AADKERB.
  final pulumi.Input<ActiveDirectoryPropertiesResponse>? activeDirectoryProperties;
  /// Default share permission for users using Kerberos authentication if RBAC role is not assigned.
  final pulumi.Input<String>? defaultSharePermission;
  /// Indicates the directory service used. Note that this enum may be extended in the future.
  final pulumi.Input<String> directoryServiceOptions;

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
      'activeDirectoryProperties': ?pulumi.Input.mapOptionalInputValue<ActiveDirectoryPropertiesResponse, Map<String, dynamic>>(activeDirectoryProperties, (value) => value.toMap()),
      'defaultSharePermission': ?defaultSharePermission,
      'directoryServiceOptions': directoryServiceOptions,
    };
  }

  factory AzureFilesIdentityBasedAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return AzureFilesIdentityBasedAuthenticationResponse(
      activeDirectoryProperties: map['activeDirectoryProperties'] == null ? null : (ActiveDirectoryPropertiesResponse.fromMap((map['activeDirectoryProperties'] as Map).cast<String, dynamic>())).input(),
      defaultSharePermission: map['defaultSharePermission'] == null ? null : (map['defaultSharePermission'] as String).input(),
      directoryServiceOptions: (map['directoryServiceOptions'] as String).input(),
    );
  }
}


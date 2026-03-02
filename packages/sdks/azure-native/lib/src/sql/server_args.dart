// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity.dart';
import 'server_external_administrator.dart';

/// {@template pulumi_sql_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_sql_server_args_doc}
class ServerArgs {
  /// Administrator username for the server. Once created it cannot be changed.
  final pulumi.Input<String>? administratorLogin;
  /// The administrator login password (required for server creation).
  final pulumi.Input<String>? administratorLoginPassword;
  /// The Azure Active Directory administrator of the server. This can only be used at server create time. If used for server update, it will be ignored or it will result in an error. For updates individual APIs will need to be used.
  final pulumi.Input<ServerExternalAdministrator>? administrators;
  /// The Client id used for cross tenant CMK scenario
  final pulumi.Input<String>? federatedClientId;
  /// The Azure Active Directory identity of the server.
  final pulumi.Input<ResourceIdentity>? identity;
  /// Whether or not to enable IPv6 support for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final pulumi.Input<String>? isIPv6Enabled;
  /// A CMK URI of the key to use for encryption.
  final pulumi.Input<String>? keyId;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Minimal TLS version. Allowed values: 'None', 1.0', '1.1', '1.2', '1.3'
  final pulumi.Input<String>? minimalTlsVersion;
  /// The resource id of a user assigned identity to be used by default.
  final pulumi.Input<String>? primaryUserAssignedIdentityId;
  /// Whether or not public endpoint access is allowed for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled' or 'SecuredByPerimeter'
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// Whether or not to restrict outbound network access for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  final pulumi.Input<String>? restrictOutboundNetworkAccess;
  /// The name of the server.
  final pulumi.Input<String>? serverName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of the server.
  final pulumi.Input<String>? version;

  /// Creates a new [ServerArgs].
  /// [administratorLogin] Administrator username for the server. Once created it cannot be changed.
  /// [administratorLoginPassword] The administrator login password (required for server creation).
  /// [administrators] The Azure Active Directory administrator of the server. This can only be used at server create time. If used for server update, it will be ignored or it will result in an error. For updates individual APIs will need to be used.
  /// [federatedClientId] The Client id used for cross tenant CMK scenario
  /// [identity] The Azure Active Directory identity of the server.
  /// [isIPv6Enabled] Whether or not to enable IPv6 support for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  /// [keyId] A CMK URI of the key to use for encryption.
  /// [location] Resource location.
  /// [minimalTlsVersion] Minimal TLS version. Allowed values: 'None', 1.0', '1.1', '1.2', '1.3'
  /// [primaryUserAssignedIdentityId] The resource id of a user assigned identity to be used by default.
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled' or 'SecuredByPerimeter'
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [restrictOutboundNetworkAccess] Whether or not to restrict outbound network access for this server.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  /// [serverName] The name of the server.
  /// [tags] Resource tags.
  /// [version] The version of the server.
  ServerArgs({
    this.administratorLogin,
    this.administratorLoginPassword,
    this.administrators,
    this.federatedClientId,
    this.identity,
    this.isIPv6Enabled,
    this.keyId,
    this.location,
    this.minimalTlsVersion,
    this.primaryUserAssignedIdentityId,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.restrictOutboundNetworkAccess,
    this.serverName,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorLoginPassword': ?administratorLoginPassword,
      'administrators': ?pulumi.Input.mapOptionalInputValue<ServerExternalAdministrator, Map<String, dynamic>>(administrators, (value) => value.toMap()),
      'federatedClientId': ?federatedClientId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isIPv6Enabled': ?isIPv6Enabled,
      'keyId': ?keyId,
      'location': ?location,
      'minimalTlsVersion': ?minimalTlsVersion,
      'primaryUserAssignedIdentityId': ?primaryUserAssignedIdentityId,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'restrictOutboundNetworkAccess': ?restrictOutboundNetworkAccess,
      'serverName': ?serverName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory ServerArgs.fromMap(Map<String, dynamic> map) {
    return ServerArgs(
      administratorLogin: map['administratorLogin'] == null ? null : (map['administratorLogin'] as String).input(),
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : (map['administratorLoginPassword'] as String).input(),
      administrators: map['administrators'] == null ? null : (ServerExternalAdministrator.fromMap((map['administrators'] as Map).cast<String, dynamic>())).input(),
      federatedClientId: map['federatedClientId'] == null ? null : (map['federatedClientId'] as String).input(),
      identity: map['identity'] == null ? null : (ResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      isIPv6Enabled: map['isIPv6Enabled'] == null ? null : (map['isIPv6Enabled'] as String).input(),
      keyId: map['keyId'] == null ? null : (map['keyId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      minimalTlsVersion: map['minimalTlsVersion'] == null ? null : (map['minimalTlsVersion'] as String).input(),
      primaryUserAssignedIdentityId: map['primaryUserAssignedIdentityId'] == null ? null : (map['primaryUserAssignedIdentityId'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restrictOutboundNetworkAccess: map['restrictOutboundNetworkAccess'] == null ? null : (map['restrictOutboundNetworkAccess'] as String).input(),
      serverName: map['serverName'] == null ? null : (map['serverName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}


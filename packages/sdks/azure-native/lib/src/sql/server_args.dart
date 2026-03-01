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
    pulumi.Output<String>? administratorLogin,
    pulumi.Output<String>? administratorLoginPassword,
    pulumi.Output<ServerExternalAdministrator>? administrators,
    pulumi.Output<String>? federatedClientId,
    pulumi.Output<ResourceIdentity>? identity,
    pulumi.Output<String>? isIPv6Enabled,
    pulumi.Output<String>? keyId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? minimalTlsVersion,
    pulumi.Output<String>? primaryUserAssignedIdentityId,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? restrictOutboundNetworkAccess,
    pulumi.Output<String>? serverName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      administratorLogin = pulumi.Input.asOptionalInput<String>(administratorLogin),
      administratorLoginPassword = pulumi.Input.asOptionalInput<String>(administratorLoginPassword),
      administrators = pulumi.Input.asOptionalInput<ServerExternalAdministrator>(administrators),
      federatedClientId = pulumi.Input.asOptionalInput<String>(federatedClientId),
      identity = pulumi.Input.asOptionalInput<ResourceIdentity>(identity),
      isIPv6Enabled = pulumi.Input.asOptionalInput<String>(isIPv6Enabled),
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      location = pulumi.Input.asOptionalInput<String>(location),
      minimalTlsVersion = pulumi.Input.asOptionalInput<String>(minimalTlsVersion),
      primaryUserAssignedIdentityId = pulumi.Input.asOptionalInput<String>(primaryUserAssignedIdentityId),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restrictOutboundNetworkAccess = pulumi.Input.asOptionalInput<String>(restrictOutboundNetworkAccess),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      administratorLogin: map['administratorLogin'] == null ? null : pulumi.Output.create<String>(map['administratorLogin'] as String),
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : pulumi.Output.create<String>(map['administratorLoginPassword'] as String),
      administrators: map['administrators'] == null ? null : pulumi.Output.create<ServerExternalAdministrator>(ServerExternalAdministrator.fromMap((map['administrators'] as Map).cast<String, dynamic>())),
      federatedClientId: map['federatedClientId'] == null ? null : pulumi.Output.create<String>(map['federatedClientId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceIdentity>(ResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      isIPv6Enabled: map['isIPv6Enabled'] == null ? null : pulumi.Output.create<String>(map['isIPv6Enabled'] as String),
      keyId: map['keyId'] == null ? null : pulumi.Output.create<String>(map['keyId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minimalTlsVersion: map['minimalTlsVersion'] == null ? null : pulumi.Output.create<String>(map['minimalTlsVersion'] as String),
      primaryUserAssignedIdentityId: map['primaryUserAssignedIdentityId'] == null ? null : pulumi.Output.create<String>(map['primaryUserAssignedIdentityId'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restrictOutboundNetworkAccess: map['restrictOutboundNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['restrictOutboundNetworkAccess'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlexibleServerActiveDirectoryAdministratory resources.
class FlexibleServerActiveDirectoryAdministratoryState {
  /// The resource ID of the identity used for AAD Authentication.
  final pulumi.Input<String>? identityId;
  /// The login name of the principal to set as the server administrator
  final pulumi.Input<String>? login;
  /// The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity.
  final pulumi.Input<String>? objectId;
  /// The resource ID of the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverId;
  /// The Azure Tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [FlexibleServerActiveDirectoryAdministratoryState].
  /// [identityId] The resource ID of the identity used for AAD Authentication.
  /// [login] The login name of the principal to set as the server administrator
  /// [objectId] The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity.
  /// [serverId] The resource ID of the MySQL Flexible Server. Changing this forces a new resource to be created.
  /// [tenantId] The Azure Tenant ID.
  FlexibleServerActiveDirectoryAdministratoryState({
    this.identityId,
    this.login,
    this.objectId,
    this.serverId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityId': ?identityId,
      'login': ?login,
      'objectId': ?objectId,
      'serverId': ?serverId,
      'tenantId': ?tenantId,
    };
  }

  factory FlexibleServerActiveDirectoryAdministratoryState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerActiveDirectoryAdministratoryState(
      identityId: map['identityId'] == null ? null : (map['identityId'] as String).input(),
      login: map['login'] == null ? null : (map['login'] as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}


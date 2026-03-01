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
    pulumi.Output<String>? identityId,
    pulumi.Output<String>? login,
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? tenantId,
  }) :
      identityId = pulumi.Input.asOptionalInput<String>(identityId),
      login = pulumi.Input.asOptionalInput<String>(login),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      identityId: map['identityId'] == null ? null : pulumi.Output.create<String>(map['identityId'] as String),
      login: map['login'] == null ? null : pulumi.Output.create<String>(map['login'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}


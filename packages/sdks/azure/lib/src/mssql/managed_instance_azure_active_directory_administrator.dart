// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedInstanceAzureActiveDirectoryAdministrator {
  /// Specifies whether only Azure AD authentication can be used to log in to this SQL Managed Instance. When `true`, the `administratorLogin` and `administratorLoginPassword` properties can be omitted. Defaults to `false`.
  final pulumi.Input<bool?>? azureadAuthenticationOnlyEnabled;
  /// The login username of the Azure AD Administrator of this SQL Managed Instance.
  final pulumi.Input<String> loginUsername;
  /// The object id of the Azure AD Administrator of this SQL Managed Instance.
  final pulumi.Input<String> objectId;
  /// The principal type of the Azure AD Administrator of this SQL Managed Instance. Possible values are `Application`, `Group`, `User`.
  final pulumi.Input<String> principalType;
  /// The tenant id of the Azure AD Administrator of this SQL Managed Instance. Should be specified if the Azure AD Administrator is homed in a different tenant to the SQL Managed Instance.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [ManagedInstanceAzureActiveDirectoryAdministrator].
  /// [azureadAuthenticationOnlyEnabled] Specifies whether only Azure AD authentication can be used to log in to this SQL Managed Instance. When `true`, the `administratorLogin` and `administratorLoginPassword` properties can be omitted. Defaults to `false`.
  /// [loginUsername] The login username of the Azure AD Administrator of this SQL Managed Instance.
  /// [objectId] The object id of the Azure AD Administrator of this SQL Managed Instance.
  /// [principalType] The principal type of the Azure AD Administrator of this SQL Managed Instance. Possible values are `Application`, `Group`, `User`.
  /// [tenantId] The tenant id of the Azure AD Administrator of this SQL Managed Instance. Should be specified if the Azure AD Administrator is homed in a different tenant to the SQL Managed Instance.
  const ManagedInstanceAzureActiveDirectoryAdministrator({
    this.azureadAuthenticationOnlyEnabled,
    required this.loginUsername,
    required this.objectId,
    required this.principalType,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadAuthenticationOnlyEnabled': ?azureadAuthenticationOnlyEnabled,
      'loginUsername': loginUsername,
      'objectId': objectId,
      'principalType': principalType,
      'tenantId': ?tenantId,
    };
  }

  factory ManagedInstanceAzureActiveDirectoryAdministrator.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceAzureActiveDirectoryAdministrator(
      azureadAuthenticationOnlyEnabled: (() { final guardedValue = map['azureadAuthenticationOnlyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loginUsername: pulumi.Input.fromValue(map['loginUsername'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

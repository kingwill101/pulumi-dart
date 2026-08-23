// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceNamedValueValueFromKeyVault {
  /// The client ID of the User Assigned Identity, for the API Management Service, which will be used to access the key vault secret. The System Assigned Identity will be used if not specified.
  final pulumi.Input<String>? identityClientId;
  /// The resource ID of the Key Vault Secret.
  final pulumi.Input<String> secretId;

  /// Creates a new [WorkspaceNamedValueValueFromKeyVault].
  /// [identityClientId] The client ID of the User Assigned Identity, for the API Management Service, which will be used to access the key vault secret. The System Assigned Identity will be used if not specified.
  /// [secretId] The resource ID of the Key Vault Secret.
  const WorkspaceNamedValueValueFromKeyVault({
    this.identityClientId,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'secretId': secretId,
    };
  }

  factory WorkspaceNamedValueValueFromKeyVault.fromMap(Map<String, dynamic> map) {
    return WorkspaceNamedValueValueFromKeyVault(
      identityClientId: (() { final guardedValue = map['identityClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}

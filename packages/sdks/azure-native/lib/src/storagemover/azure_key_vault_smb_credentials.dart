// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Key Vault secret URIs which store the credentials.
class AzureKeyVaultSmbCredentials {
  /// The Azure Key Vault secret URI which stores the password. Use empty string to clean-up existing value.
  final pulumi.Input<String>? passwordUri;

  /// The Credentials type.
  /// Expected value is 'AzureKeyVaultSmb'.
  final pulumi.Input<String> type;

  /// The Azure Key Vault secret URI which stores the username. Use empty string to clean-up existing value.
  final pulumi.Input<String>? usernameUri;

  /// Creates a new [AzureKeyVaultSmbCredentials].
  /// [passwordUri] The Azure Key Vault secret URI which stores the password. Use empty string to clean-up existing value.
  /// [type] The Credentials type.
  /// [usernameUri] The Azure Key Vault secret URI which stores the username. Use empty string to clean-up existing value.
  AzureKeyVaultSmbCredentials({
    this.passwordUri,
    required this.type,
    this.usernameUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordUri': ?passwordUri,
      'type': type,
      'usernameUri': ?usernameUri,
    };
  }

  factory AzureKeyVaultSmbCredentials.fromMap(Map<String, dynamic> map) {
    return AzureKeyVaultSmbCredentials(
      passwordUri: (() {
        final guardedValue = map['passwordUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      usernameUri: (() {
        final guardedValue = map['usernameUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

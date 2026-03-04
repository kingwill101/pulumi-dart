// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_ssis_express_custom_setup_command_key_key_vault_password.dart';

class IntegrationRuntimeSsisExpressCustomSetupCommandKey {
  /// A `key_vault_secret_reference` block as defined below.
  final pulumi.Input<
    IntegrationRuntimeSsisExpressCustomSetupCommandKeyKeyVaultPassword
  >?
  keyVaultPassword;

  /// The password for the target device.
  final pulumi.Input<String>? password;

  /// The target computer or domain name.
  final pulumi.Input<String> targetName;

  /// The username for the target device.
  final pulumi.Input<String> userName;

  /// Creates a new [IntegrationRuntimeSsisExpressCustomSetupCommandKey].
  /// [keyVaultPassword] A `key_vault_secret_reference` block as defined below.
  /// [password] The password for the target device.
  /// [targetName] The target computer or domain name.
  /// [userName] The username for the target device.
  IntegrationRuntimeSsisExpressCustomSetupCommandKey({
    this.keyVaultPassword,
    this.password,
    required this.targetName,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultPassword':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeSsisExpressCustomSetupCommandKeyKeyVaultPassword,
            Map<String, dynamic>
          >(keyVaultPassword, (value) => value.toMap()),
      'password': ?password,
      'targetName': targetName,
      'userName': userName,
    };
  }

  factory IntegrationRuntimeSsisExpressCustomSetupCommandKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return IntegrationRuntimeSsisExpressCustomSetupCommandKey(
      keyVaultPassword: (() {
        final guardedValue = map['keyVaultPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeSsisExpressCustomSetupCommandKeyKeyVaultPassword.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetName: pulumi.Input.fromValue(map['targetName'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}

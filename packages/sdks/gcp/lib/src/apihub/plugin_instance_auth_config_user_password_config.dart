// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_auth_config_user_password_config_password.dart';

class PluginInstanceAuthConfigUserPasswordConfig {
  /// Secret provides a reference to entries in Secret Manager.
  /// Structure is documented below.
  final pulumi.Input<PluginInstanceAuthConfigUserPasswordConfigPassword> password;
  /// Username.
  final pulumi.Input<String> username;

  /// Creates a new [PluginInstanceAuthConfigUserPasswordConfig].
  /// [password] Secret provides a reference to entries in Secret Manager.
  /// [username] Username.
  const PluginInstanceAuthConfigUserPasswordConfig({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': pulumi.Input.mapInputValue<PluginInstanceAuthConfigUserPasswordConfigPassword, Map<String, dynamic>>(password, (value) => value.toMap()),
      'username': username,
    };
  }

  factory PluginInstanceAuthConfigUserPasswordConfig.fromMap(Map<String, dynamic> map) {
    return PluginInstanceAuthConfigUserPasswordConfig(
      password: pulumi.Input.fromValue(PluginInstanceAuthConfigUserPasswordConfigPassword.fromMap((map['password']! as Map).cast<String, dynamic>())),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PluginInstanceAuthConfigUserPasswordConfigPassword {
  /// The resource name of the secret version in the format,
  /// format as: `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [PluginInstanceAuthConfigUserPasswordConfigPassword].
  /// [secretVersion] The resource name of the secret version in the format,
  PluginInstanceAuthConfigUserPasswordConfigPassword({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretVersion': secretVersion};
  }

  factory PluginInstanceAuthConfigUserPasswordConfigPassword.fromMap(
    Map<String, dynamic> map,
  ) {
    return PluginInstanceAuthConfigUserPasswordConfigPassword(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}

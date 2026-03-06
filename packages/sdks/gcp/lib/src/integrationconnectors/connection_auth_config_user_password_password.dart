// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthConfigUserPasswordPassword {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionAuthConfigUserPasswordPassword].
  /// [secretVersion] The resource name of the secret version in the format,
  const ConnectionAuthConfigUserPasswordPassword({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionAuthConfigUserPasswordPassword.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigUserPasswordPassword(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}


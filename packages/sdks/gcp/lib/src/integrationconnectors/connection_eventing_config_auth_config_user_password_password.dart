// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionEventingConfigAuthConfigUserPasswordPassword {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionEventingConfigAuthConfigUserPasswordPassword].
  /// [secretVersion] The resource name of the secret version in the format,
  ConnectionEventingConfigAuthConfigUserPasswordPassword({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionEventingConfigAuthConfigUserPasswordPassword.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigAuthConfigUserPasswordPassword(
      secretVersion: (map['secretVersion'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthConfigOauth2AuthCodeFlowClientSecret {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionAuthConfigOauth2AuthCodeFlowClientSecret].
  /// [secretVersion] The resource name of the secret version in the format,
  ConnectionAuthConfigOauth2AuthCodeFlowClientSecret({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionAuthConfigOauth2AuthCodeFlowClientSecret.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigOauth2AuthCodeFlowClientSecret(
      secretVersion: (map['secretVersion'] as String).input(),
    );
  }
}


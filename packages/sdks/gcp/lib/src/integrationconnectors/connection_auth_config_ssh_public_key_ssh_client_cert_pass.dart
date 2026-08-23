// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthConfigSshPublicKeySshClientCertPass {
  /// The resource name of the secret version in the format,
  /// format as: projects/*/secrets/*/versions/*.
  ///
  /// &lt;a name="nestedAuthConfigOauth2AuthCodeFlow"&gt;&lt;/a&gt;The `oauth2AuthCodeFlow` block supports:
  final pulumi.Input<String> secretVersion;

  /// Creates a new [ConnectionAuthConfigSshPublicKeySshClientCertPass].
  /// [secretVersion] The resource name of the secret version in the format,
  const ConnectionAuthConfigSshPublicKeySshClientCertPass({
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': secretVersion,
    };
  }

  factory ConnectionAuthConfigSshPublicKeySshClientCertPass.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfigSshPublicKeySshClientCertPass(
      secretVersion: pulumi.Input.fromValue(map['secretVersion'] as String),
    );
  }
}

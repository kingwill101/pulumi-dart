// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret provides a reference to entries in Secret Manager.
class Secret {
  /// The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.
  final pulumi.Input<String>? secretVersion;

  /// Creates a new [Secret].
  /// [secretVersion] The resource name of the secret version in the format, format as: `projects/*/secrets/*/versions/*`.
  Secret({
    this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersion': ?secretVersion,
    };
  }

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      secretVersion: map['secretVersion'] == null ? null : (map['secretVersion']! as String).input(),
    );
  }
}


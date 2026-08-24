// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsAccountSettingsCertificate {
  /// Specify the UUID of the certificate used for interception. Ensure the certificate is available at the edge(previously called 'active'). A nil UUID directs Cloudflare to use the Root CA.
  final pulumi.Input<String> id;

  /// Creates a new [TeamsAccountSettingsCertificate].
  /// [id] Specify the UUID of the certificate used for interception. Ensure the certificate is available at the edge(previously called 'active'). A nil UUID directs Cloudflare to use the Root CA.
  const TeamsAccountSettingsCertificate({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory TeamsAccountSettingsCertificate.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsCertificate(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

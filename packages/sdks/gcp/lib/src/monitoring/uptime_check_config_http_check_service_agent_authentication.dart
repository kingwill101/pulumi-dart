// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UptimeCheckConfigHttpCheckServiceAgentAuthentication {
  /// The type of authentication to use.
  /// Possible values are: `SERVICE_AGENT_AUTHENTICATION_TYPE_UNSPECIFIED`, `OIDC_TOKEN`.
  final pulumi.Input<String>? type;

  /// Creates a new [UptimeCheckConfigHttpCheckServiceAgentAuthentication].
  /// [type] The type of authentication to use.
  UptimeCheckConfigHttpCheckServiceAgentAuthentication({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory UptimeCheckConfigHttpCheckServiceAgentAuthentication.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigHttpCheckServiceAgentAuthentication(
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}


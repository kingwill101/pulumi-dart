// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityProfileWildfireAnalysisProfileWildfireInlineMlOverride {
  /// Threat action override.
  /// Possible values are: `WILDFIRE_DEFAULT_ACTION`, `WILDFIRE_ALLOW`, `WILDFIRE_ALERT`, `WILDFIRE_DENY`.
  final pulumi.Input<String> action;
  /// Required protocol to match.
  /// Possible values are: `WILDFIRE_SMTP`, `WILDFIRE_SMB`, `WILDFIRE_POP3`, `WILDFIRE_IMAP`, `WILDFIRE_HTTP2`, `WILDFIRE_HTTP`, `WILDFIRE_FTP`.
  final pulumi.Input<String> protocol;

  /// Creates a new [SecurityProfileWildfireAnalysisProfileWildfireInlineMlOverride].
  /// [action] Threat action override.
  /// [protocol] Required protocol to match.
  const SecurityProfileWildfireAnalysisProfileWildfireInlineMlOverride({
    required this.action,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'protocol': protocol,
    };
  }

  factory SecurityProfileWildfireAnalysisProfileWildfireInlineMlOverride.fromMap(Map<String, dynamic> map) {
    return SecurityProfileWildfireAnalysisProfileWildfireInlineMlOverride(
      action: pulumi.Input.fromValue(map['action'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

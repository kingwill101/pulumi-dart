// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyConnectionRulesRdp {
  /// Clipboard formats allowed when copying from local machine to remote RDP session.
  final pulumi.Input<List<String>> allowedClipboardLocalToRemoteFormats;
  /// Clipboard formats allowed when copying from remote RDP session to local machine.
  final pulumi.Input<List<String>> allowedClipboardRemoteToLocalFormats;

  /// Creates a new [GetZeroTrustAccessPolicyConnectionRulesRdp].
  /// [allowedClipboardLocalToRemoteFormats] Clipboard formats allowed when copying from local machine to remote RDP session.
  /// [allowedClipboardRemoteToLocalFormats] Clipboard formats allowed when copying from remote RDP session to local machine.
  const GetZeroTrustAccessPolicyConnectionRulesRdp({
    required this.allowedClipboardLocalToRemoteFormats,
    required this.allowedClipboardRemoteToLocalFormats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClipboardLocalToRemoteFormats': allowedClipboardLocalToRemoteFormats,
      'allowedClipboardRemoteToLocalFormats': allowedClipboardRemoteToLocalFormats,
    };
  }

  factory GetZeroTrustAccessPolicyConnectionRulesRdp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyConnectionRulesRdp(
      allowedClipboardLocalToRemoteFormats: pulumi.Input.fromValue((map['allowedClipboardLocalToRemoteFormats'] as List).cast<String>()),
      allowedClipboardRemoteToLocalFormats: pulumi.Input.fromValue((map['allowedClipboardRemoteToLocalFormats'] as List).cast<String>()),
    );
  }
}

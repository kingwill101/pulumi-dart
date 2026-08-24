// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyConnectionRulesRdp {
  /// Clipboard formats allowed when copying from local machine to remote RDP session.
  final pulumi.Input<List<String>?>? allowedClipboardLocalToRemoteFormats;
  /// Clipboard formats allowed when copying from remote RDP session to local machine.
  final pulumi.Input<List<String>?>? allowedClipboardRemoteToLocalFormats;

  /// Creates a new [ZeroTrustAccessApplicationPolicyConnectionRulesRdp].
  /// [allowedClipboardLocalToRemoteFormats] Clipboard formats allowed when copying from local machine to remote RDP session.
  /// [allowedClipboardRemoteToLocalFormats] Clipboard formats allowed when copying from remote RDP session to local machine.
  const ZeroTrustAccessApplicationPolicyConnectionRulesRdp({
    this.allowedClipboardLocalToRemoteFormats,
    this.allowedClipboardRemoteToLocalFormats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedClipboardLocalToRemoteFormats': ?allowedClipboardLocalToRemoteFormats,
      'allowedClipboardRemoteToLocalFormats': ?allowedClipboardRemoteToLocalFormats,
    };
  }

  factory ZeroTrustAccessApplicationPolicyConnectionRulesRdp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyConnectionRulesRdp(
      allowedClipboardLocalToRemoteFormats: (() { final guardedValue = map['allowedClipboardLocalToRemoteFormats']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedClipboardRemoteToLocalFormats: (() { final guardedValue = map['allowedClipboardRemoteToLocalFormats']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

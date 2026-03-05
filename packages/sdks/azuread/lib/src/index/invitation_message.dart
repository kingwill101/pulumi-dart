// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InvitationMessage {
  /// Email addresses of additional recipients the invitation message should be sent to. Only 1 additional recipient is currently supported by Azure.
  final pulumi.Input<String>? additionalRecipients;
  /// Customized message body you want to send if you don't want to send the default message. Cannot be specified with `language`.
  final pulumi.Input<String>? body;
  /// The language you want to send the default message in. The value specified must be in ISO 639 format. Defaults to `en-US`. Cannot be specified with `body`.
  final pulumi.Input<String>? language;

  /// Creates a new [InvitationMessage].
  /// [additionalRecipients] Email addresses of additional recipients the invitation message should be sent to. Only 1 additional recipient is currently supported by Azure.
  /// [body] Customized message body you want to send if you don't want to send the default message. Cannot be specified with `language`.
  /// [language] The language you want to send the default message in. The value specified must be in ISO 639 format. Defaults to `en-US`. Cannot be specified with `body`.
  InvitationMessage({
    this.additionalRecipients,
    this.body,
    this.language,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalRecipients': ?additionalRecipients,
      'body': ?body,
      'language': ?language,
    };
  }

  factory InvitationMessage.fromMap(Map<String, dynamic> map) {
    return InvitationMessage(
      additionalRecipients: (() { final guardedValue = map['additionalRecipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


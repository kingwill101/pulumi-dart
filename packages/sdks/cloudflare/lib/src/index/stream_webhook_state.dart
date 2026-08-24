// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StreamWebhook resources.
class StreamWebhookState {
  /// The account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// The date and time the webhook was last modified.
  final pulumi.Input<String?>? modified;
  /// The URL where webhooks will be sent.
  final pulumi.Input<String?>? notificationUrl;
  /// The secret used to verify webhook signatures.
  final pulumi.Input<String?>? secret;

  /// Creates a new [StreamWebhookState].
  /// [accountId] The account identifier tag.
  /// [modified] The date and time the webhook was last modified.
  /// [notificationUrl] The URL where webhooks will be sent.
  /// [secret] The secret used to verify webhook signatures.
  const StreamWebhookState({
    this.accountId,
    this.modified,
    this.notificationUrl,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'modified': ?modified,
      'notificationUrl': ?notificationUrl,
      'secret': ?secret,
    };
  }

  factory StreamWebhookState.fromMap(Map<String, dynamic> map) {
    return StreamWebhookState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationUrl: (() { final guardedValue = map['notificationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

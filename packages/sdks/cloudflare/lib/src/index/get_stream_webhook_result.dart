// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStreamWebhook.
class GetStreamWebhookResult {
  /// The account identifier tag.
  final String? accountId;
  /// The date and time the webhook was last modified.
  final String? modified;
  /// The URL where webhooks will be sent.
  final String? notificationUrl;
  /// The secret used to verify webhook signatures.
  final String? secret;

  /// Creates a new [GetStreamWebhookResult].
  /// [accountId] The account identifier tag.
  /// [modified] The date and time the webhook was last modified.
  /// [notificationUrl] The URL where webhooks will be sent.
  /// [secret] The secret used to verify webhook signatures.
  const GetStreamWebhookResult({
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

  factory GetStreamWebhookResult.fromMap(Map<String, dynamic> map) {
    return GetStreamWebhookResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationUrl: (() { final guardedValue = map['notificationUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_stream_webhook_stream_webhook_args_doc}
/// The set of arguments for StreamWebhook.
/// {@endtemplate}
/// {@macro pulumi_index_stream_webhook_stream_webhook_args_doc}
class StreamWebhookArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// The URL where webhooks will be sent.
  final pulumi.Input<String?>? notificationUrl;

  /// Creates a new [StreamWebhookArgs].
  /// [accountId] The account identifier tag.
  /// [notificationUrl] The URL where webhooks will be sent.
  const StreamWebhookArgs({
    required this.accountId,
    this.notificationUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'notificationUrl': ?notificationUrl,
    };
  }

  factory StreamWebhookArgs.fromMap(Map<String, dynamic> map) {
    return StreamWebhookArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      notificationUrl: (() { final guardedValue = map['notificationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

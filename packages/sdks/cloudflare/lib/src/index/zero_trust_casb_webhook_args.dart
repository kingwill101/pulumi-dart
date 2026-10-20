// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_webhook_header.dart';

/// {@template pulumi_index_zero_trust_casb_webhook_zero_trust_casb_webhook_args_doc}
/// The set of arguments for ZeroTrustCasbWebhook.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_casb_webhook_zero_trust_casb_webhook_args_doc}
class ZeroTrustCasbWebhookArgs {
  final pulumi.Input<String> accountId;
  /// Type of authentication used for the webhook.
  /// Available values: "Basic Auth", "None", "Bearer Auth", "Static Headers", "HMAC-Signing".
  final pulumi.Input<String> authenticationType;
  /// Target URL for the webhook configuration. Where resulting data will be sent.
  final pulumi.Input<String> destinationUrl;
  /// List of custom headers to include in webhook requests.
  final pulumi.Input<List<ZeroTrustCasbWebhookHeader>?>? headers;
  /// Account-specified display label for the webhook configuration.
  final pulumi.Input<String> label;
  /// Secret key used for HMAC signing when authenticationType is "HMAC-Signing".
  final pulumi.Input<String?>? signingSecret;
  /// Status of the webhook configuration. Defaults to enabled when omitted.
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String?>? status;

  /// Creates a new [ZeroTrustCasbWebhookArgs].
  /// [accountId] Required.
  /// [authenticationType] Type of authentication used for the webhook.
  /// [destinationUrl] Target URL for the webhook configuration. Where resulting data will be sent.
  /// [headers] List of custom headers to include in webhook requests.
  /// [label] Account-specified display label for the webhook configuration.
  /// [signingSecret] Secret key used for HMAC signing when authenticationType is "HMAC-Signing".
  /// [status] Status of the webhook configuration. Defaults to enabled when omitted.
  const ZeroTrustCasbWebhookArgs({
    required this.accountId,
    required this.authenticationType,
    required this.destinationUrl,
    this.headers,
    required this.label,
    this.signingSecret,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'authenticationType': authenticationType,
      'destinationUrl': destinationUrl,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustCasbWebhookHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ZeroTrustCasbWebhookHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': label,
      'signingSecret': ?signingSecret,
      'status': ?status,
    };
  }

  factory ZeroTrustCasbWebhookArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbWebhookArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      destinationUrl: pulumi.Input.fromValue(map['destinationUrl'] as String),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustCasbWebhookHeader>(guardedValue, (value) => ZeroTrustCasbWebhookHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      signingSecret: (() { final guardedValue = map['signingSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

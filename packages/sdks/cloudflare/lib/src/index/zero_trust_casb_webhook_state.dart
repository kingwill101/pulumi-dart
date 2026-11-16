// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_webhook_header.dart';

/// Input properties used for looking up and filtering ZeroTrustCasbWebhook resources.
class ZeroTrustCasbWebhookState {
  final pulumi.Input<String?>? accountId;
  /// Type of authentication used for the webhook.
  /// Available values: "Basic Auth", "None", "Bearer Auth", "Static Headers", "HMAC-Signing".
  final pulumi.Input<String?>? authenticationType;
  /// Timestamp when the webhook configuration was created.
  final pulumi.Input<String?>? createdAt;
  /// Target URL for the webhook configuration. Where resulting data will be sent.
  final pulumi.Input<String?>? destinationUrl;
  /// List of custom headers to include in webhook requests.
  final pulumi.Input<List<ZeroTrustCasbWebhookHeader>?>? headers;
  /// Account-specified display label for the webhook configuration.
  final pulumi.Input<String?>? label;
  /// Secret key used for HMAC signing when authenticationType is "HMAC-Signing".
  final pulumi.Input<String?>? signingSecret;
  /// Status of the webhook configuration. Defaults to enabled when omitted.
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String?>? status;
  /// Timestamp when the webhook configuration was last updated.
  final pulumi.Input<String?>? updatedAt;
  /// Version number of the configuration.
  final pulumi.Input<int?>? version;

  /// Creates a new [ZeroTrustCasbWebhookState].
  /// [accountId] Optional.
  /// [authenticationType] Type of authentication used for the webhook.
  /// [createdAt] Timestamp when the webhook configuration was created.
  /// [destinationUrl] Target URL for the webhook configuration. Where resulting data will be sent.
  /// [headers] List of custom headers to include in webhook requests.
  /// [label] Account-specified display label for the webhook configuration.
  /// [signingSecret] Secret key used for HMAC signing when authenticationType is "HMAC-Signing".
  /// [status] Status of the webhook configuration. Defaults to enabled when omitted.
  /// [updatedAt] Timestamp when the webhook configuration was last updated.
  /// [version] Version number of the configuration.
  const ZeroTrustCasbWebhookState({
    this.accountId,
    this.authenticationType,
    this.createdAt,
    this.destinationUrl,
    this.headers,
    this.label,
    this.signingSecret,
    this.status,
    this.updatedAt,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'authenticationType': ?authenticationType,
      'createdAt': ?createdAt,
      'destinationUrl': ?destinationUrl,
      'headers': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustCasbWebhookHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<ZeroTrustCasbWebhookHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': ?label,
      'signingSecret': ?signingSecret,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'version': ?version,
    };
  }

  factory ZeroTrustCasbWebhookState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbWebhookState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationUrl: (() { final guardedValue = map['destinationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustCasbWebhookHeader>(guardedValue, (value) => ZeroTrustCasbWebhookHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingSecret: (() { final guardedValue = map['signingSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

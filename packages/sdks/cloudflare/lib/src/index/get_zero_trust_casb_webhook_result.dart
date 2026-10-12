// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_webhook_header.dart';

/// Result data returned by getZeroTrustCasbWebhook.
class GetZeroTrustCasbWebhookResult {
  final String? accountId;
  /// Type of authentication used for the webhook.
  /// Available values: "Basic Auth", "None", "Bearer Auth", "Static Headers", "HMAC-Signing".
  final String? authenticationType;
  /// Timestamp when the webhook configuration was created.
  final String? createdAt;
  /// Target URL for the webhook configuration. Where resulting data will be sent.
  final String? destinationUrl;
  /// List of header keys configured for this webhook. Values are not included for security reasons.
  final List<GetZeroTrustCasbWebhookHeader>? headers;
  /// The ID of this resource.
  final String? id;
  /// Account-specified display label for the webhook configuration.
  final String? label;
  /// Current status of the webhook configuration. If disabled, data cannot be sent through this configuration.
  /// Available values: "enabled", "disabled".
  final String? status;
  /// Timestamp when the webhook configuration was last updated.
  final String? updatedAt;
  /// Version number of the configuration.
  final int? version;
  final String? webhookId;

  /// Creates a new [GetZeroTrustCasbWebhookResult].
  /// [accountId] Optional.
  /// [authenticationType] Type of authentication used for the webhook.
  /// [createdAt] Timestamp when the webhook configuration was created.
  /// [destinationUrl] Target URL for the webhook configuration. Where resulting data will be sent.
  /// [headers] List of header keys configured for this webhook. Values are not included for security reasons.
  /// [id] The ID of this resource.
  /// [label] Account-specified display label for the webhook configuration.
  /// [status] Current status of the webhook configuration. If disabled, data cannot be sent through this configuration.
  /// [updatedAt] Timestamp when the webhook configuration was last updated.
  /// [version] Version number of the configuration.
  /// [webhookId] Optional.
  const GetZeroTrustCasbWebhookResult({
    this.accountId,
    this.authenticationType,
    this.createdAt,
    this.destinationUrl,
    this.headers,
    this.id,
    this.label,
    this.status,
    this.updatedAt,
    this.version,
    this.webhookId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'authenticationType': ?authenticationType,
      'createdAt': ?createdAt,
      'destinationUrl': ?destinationUrl,
      'headers': ?(() { final guardedValue = headers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustCasbWebhookHeader, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'label': ?label,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'version': ?version,
      'webhookId': ?webhookId,
    };
  }

  factory GetZeroTrustCasbWebhookResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbWebhookResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationUrl: (() { final guardedValue = map['destinationUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustCasbWebhookHeader>(guardedValue, (value) => GetZeroTrustCasbWebhookHeader.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      webhookId: (() { final guardedValue = map['webhookId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

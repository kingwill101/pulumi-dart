// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_casb_webhooks_result_header.dart';

class GetZeroTrustCasbWebhooksResult {
  /// Type of authentication used for the webhook.
  /// Available values: "Basic Auth", "None", "Bearer Auth", "Static Headers", "HMAC-Signing".
  final pulumi.Input<String> authenticationType;
  /// Timestamp when the webhook configuration was created.
  final pulumi.Input<String> createdAt;
  /// Target URL for the webhook configuration. Where resulting data will be sent.
  final pulumi.Input<String> destinationUrl;
  /// List of header keys configured for this webhook. Values are not included for security reasons.
  final pulumi.Input<List<GetZeroTrustCasbWebhooksResultHeader>> headers;
  /// Unique identifier for the specific webhook configuration.
  final pulumi.Input<String> id;
  /// Account-specified display label for the webhook configuration.
  final pulumi.Input<String> label;
  /// Current status of the webhook configuration. If disabled, data cannot be sent through this configuration.
  /// Available values: "enabled", "disabled".
  final pulumi.Input<String> status;
  /// Timestamp when the webhook configuration was last updated.
  final pulumi.Input<String> updatedAt;
  /// Version number of the configuration.
  final pulumi.Input<int> version;

  /// Creates a new [GetZeroTrustCasbWebhooksResult].
  /// [authenticationType] Type of authentication used for the webhook.
  /// [createdAt] Timestamp when the webhook configuration was created.
  /// [destinationUrl] Target URL for the webhook configuration. Where resulting data will be sent.
  /// [headers] List of header keys configured for this webhook. Values are not included for security reasons.
  /// [id] Unique identifier for the specific webhook configuration.
  /// [label] Account-specified display label for the webhook configuration.
  /// [status] Current status of the webhook configuration. If disabled, data cannot be sent through this configuration.
  /// [updatedAt] Timestamp when the webhook configuration was last updated.
  /// [version] Version number of the configuration.
  const GetZeroTrustCasbWebhooksResult({
    required this.authenticationType,
    required this.createdAt,
    required this.destinationUrl,
    required this.headers,
    required this.id,
    required this.label,
    required this.status,
    required this.updatedAt,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'createdAt': createdAt,
      'destinationUrl': destinationUrl,
      'headers': pulumi.Input.mapInputValue<List<GetZeroTrustCasbWebhooksResultHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GetZeroTrustCasbWebhooksResultHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'label': label,
      'status': status,
      'updatedAt': updatedAt,
      'version': version,
    };
  }

  factory GetZeroTrustCasbWebhooksResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCasbWebhooksResult(
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      destinationUrl: pulumi.Input.fromValue(map['destinationUrl'] as String),
      headers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustCasbWebhooksResultHeader>(map['headers']!, (value) => GetZeroTrustCasbWebhooksResultHeader.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      version: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['version'])),
    );
  }
}

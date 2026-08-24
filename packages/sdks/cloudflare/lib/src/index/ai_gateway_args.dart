// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dlp.dart';
import 'ai_gateway_guardrails.dart';
import 'ai_gateway_otel.dart';
import 'ai_gateway_spend_limits.dart';
import 'ai_gateway_stripe.dart';

/// {@template pulumi_index_ai_gateway_ai_gateway_args_doc}
/// The set of arguments for AiGateway.
/// {@endtemplate}
/// {@macro pulumi_index_ai_gateway_ai_gateway_args_doc}
class AiGatewayArgs {
  final pulumi.Input<String> accountId;
  /// gateway id
  final pulumi.Input<String> aiGatewayId;
  final pulumi.Input<bool?>? authentication;
  final pulumi.Input<bool> cacheInvalidateOnUpdate;
  final pulumi.Input<int> cacheTtl;
  final pulumi.Input<bool> collectLogs;
  final pulumi.Input<AiGatewayDlp?>? dlp;
  final pulumi.Input<AiGatewayGuardrails?>? guardrails;
  final pulumi.Input<int?>? logManagement;
  /// Available values: "STOP*INSERTING", "DELETE*OLDEST".
  final pulumi.Input<String?>? logManagementStrategy;
  final pulumi.Input<bool?>? logpush;
  final pulumi.Input<String?>? logpushPublicKey;
  final pulumi.Input<List<AiGatewayOtel>?>? otels;
  final pulumi.Input<int> rateLimitingInterval;
  final pulumi.Input<int> rateLimitingLimit;
  /// Available values: "fixed", "sliding".
  final pulumi.Input<String?>? rateLimitingTechnique;
  /// Backoff strategy for retry delays
  /// Available values: "constant", "linear", "exponential".
  final pulumi.Input<String?>? retryBackoff;
  /// Delay between retry attempts in milliseconds (0-5000)
  final pulumi.Input<int?>? retryDelay;
  /// Maximum number of retry attempts for failed requests (1-5)
  final pulumi.Input<int?>? retryMaxAttempts;
  final pulumi.Input<AiGatewaySpendLimits?>? spendLimits;
  final pulumi.Input<String?>? storeId;
  final pulumi.Input<AiGatewayStripe?>? stripe;
  /// Controls how Workers AI inference calls routed through this gateway are billed. Only 'postpaid' is currently supported.
  /// Available values: "postpaid".
  final pulumi.Input<String?>? workersAiBillingMode;
  final pulumi.Input<bool?>? zdr;

  /// Creates a new [AiGatewayArgs].
  /// [accountId] Required.
  /// [aiGatewayId] gateway id
  /// [authentication] Optional.
  /// [cacheInvalidateOnUpdate] Required.
  /// [cacheTtl] Required.
  /// [collectLogs] Required.
  /// [dlp] Optional.
  /// [guardrails] Optional.
  /// [logManagement] Optional.
  /// [logManagementStrategy] Available values: "STOP*INSERTING", "DELETE*OLDEST".
  /// [logpush] Optional.
  /// [logpushPublicKey] Optional.
  /// [otels] Optional.
  /// [rateLimitingInterval] Required.
  /// [rateLimitingLimit] Required.
  /// [rateLimitingTechnique] Available values: "fixed", "sliding".
  /// [retryBackoff] Backoff strategy for retry delays
  /// [retryDelay] Delay between retry attempts in milliseconds (0-5000)
  /// [retryMaxAttempts] Maximum number of retry attempts for failed requests (1-5)
  /// [spendLimits] Optional.
  /// [storeId] Optional.
  /// [stripe] Optional.
  /// [workersAiBillingMode] Controls how Workers AI inference calls routed through this gateway are billed. Only 'postpaid' is currently supported.
  /// [zdr] Optional.
  const AiGatewayArgs({
    required this.accountId,
    required this.aiGatewayId,
    this.authentication,
    required this.cacheInvalidateOnUpdate,
    required this.cacheTtl,
    required this.collectLogs,
    this.dlp,
    this.guardrails,
    this.logManagement,
    this.logManagementStrategy,
    this.logpush,
    this.logpushPublicKey,
    this.otels,
    required this.rateLimitingInterval,
    required this.rateLimitingLimit,
    this.rateLimitingTechnique,
    this.retryBackoff,
    this.retryDelay,
    this.retryMaxAttempts,
    this.spendLimits,
    this.storeId,
    this.stripe,
    this.workersAiBillingMode,
    this.zdr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'aiGatewayId': aiGatewayId,
      'authentication': ?authentication,
      'cacheInvalidateOnUpdate': cacheInvalidateOnUpdate,
      'cacheTtl': cacheTtl,
      'collectLogs': collectLogs,
      'dlp': ?pulumi.Input.mapOptionalInputValue<AiGatewayDlp, Map<String, dynamic>>(dlp, (value) => value.toMap()),
      'guardrails': ?pulumi.Input.mapOptionalInputValue<AiGatewayGuardrails, Map<String, dynamic>>(guardrails, (value) => value.toMap()),
      'logManagement': ?logManagement,
      'logManagementStrategy': ?logManagementStrategy,
      'logpush': ?logpush,
      'logpushPublicKey': ?logpushPublicKey,
      'otels': ?pulumi.Input.mapOptionalInputValue<List<AiGatewayOtel>, List<Map<String, dynamic>>>(otels, (value) => pulumi.Input.encodeList<AiGatewayOtel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rateLimitingInterval': rateLimitingInterval,
      'rateLimitingLimit': rateLimitingLimit,
      'rateLimitingTechnique': ?rateLimitingTechnique,
      'retryBackoff': ?retryBackoff,
      'retryDelay': ?retryDelay,
      'retryMaxAttempts': ?retryMaxAttempts,
      'spendLimits': ?pulumi.Input.mapOptionalInputValue<AiGatewaySpendLimits, Map<String, dynamic>>(spendLimits, (value) => value.toMap()),
      'storeId': ?storeId,
      'stripe': ?pulumi.Input.mapOptionalInputValue<AiGatewayStripe, Map<String, dynamic>>(stripe, (value) => value.toMap()),
      'workersAiBillingMode': ?workersAiBillingMode,
      'zdr': ?zdr,
    };
  }

  factory AiGatewayArgs.fromMap(Map<String, dynamic> map) {
    return AiGatewayArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      aiGatewayId: pulumi.Input.fromValue(map['aiGatewayId'] as String),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheInvalidateOnUpdate: pulumi.Input.fromValue(map['cacheInvalidateOnUpdate'] as bool),
      cacheTtl: pulumi.Input.fromValue((map['cacheTtl'] as num).toInt()),
      collectLogs: pulumi.Input.fromValue(map['collectLogs'] as bool),
      dlp: (() { final guardedValue = map['dlp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDlp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      guardrails: (() { final guardedValue = map['guardrails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayGuardrails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logManagement: (() { final guardedValue = map['logManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      logManagementStrategy: (() { final guardedValue = map['logManagementStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logpush: (() { final guardedValue = map['logpush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logpushPublicKey: (() { final guardedValue = map['logpushPublicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      otels: (() { final guardedValue = map['otels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiGatewayOtel>(guardedValue, (value) => AiGatewayOtel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rateLimitingInterval: pulumi.Input.fromValue((map['rateLimitingInterval'] as num).toInt()),
      rateLimitingLimit: pulumi.Input.fromValue((map['rateLimitingLimit'] as num).toInt()),
      rateLimitingTechnique: (() { final guardedValue = map['rateLimitingTechnique']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryBackoff: (() { final guardedValue = map['retryBackoff']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryDelay: (() { final guardedValue = map['retryDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      retryMaxAttempts: (() { final guardedValue = map['retryMaxAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      spendLimits: (() { final guardedValue = map['spendLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewaySpendLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storeId: (() { final guardedValue = map['storeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stripe: (() { final guardedValue = map['stripe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayStripe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workersAiBillingMode: (() { final guardedValue = map['workersAiBillingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zdr: (() { final guardedValue = map['zdr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

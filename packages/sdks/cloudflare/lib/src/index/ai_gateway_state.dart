// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dlp.dart';
import 'ai_gateway_guardrails.dart';
import 'ai_gateway_otel.dart';
import 'ai_gateway_spend_limits.dart';
import 'ai_gateway_stripe.dart';

/// Input properties used for looking up and filtering AiGateway resources.
class AiGatewayState {
  final pulumi.Input<String?>? accountId;
  /// gateway id
  final pulumi.Input<String?>? aiGatewayId;
  final pulumi.Input<bool?>? authentication;
  final pulumi.Input<bool?>? cacheInvalidateOnUpdate;
  final pulumi.Input<int?>? cacheTtl;
  final pulumi.Input<bool?>? collectLogs;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<AiGatewayDlp?>? dlp;
  final pulumi.Input<AiGatewayGuardrails?>? guardrails;
  final pulumi.Input<bool?>? isDefault;
  final pulumi.Input<bool?>? logClassification;
  final pulumi.Input<int?>? logManagement;
  /// Available values: "STOP*INSERTING", "DELETE*OLDEST".
  final pulumi.Input<String?>? logManagementStrategy;
  final pulumi.Input<bool?>? logpush;
  final pulumi.Input<String?>? logpushPublicKey;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<List<AiGatewayOtel>?>? otels;
  final pulumi.Input<int?>? rateLimitingInterval;
  final pulumi.Input<int?>? rateLimitingLimit;
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
  /// Controls how Workers AI inference calls routed through this gateway are billed. 'postpaid' bills the account directly through Workers AI; 'unified' deducts credits via AI Gateway using neuron-based pricing and delegates billing to AI Gateway.
  /// Available values: "postpaid", "unified".
  final pulumi.Input<String?>? workersAiBillingMode;
  final pulumi.Input<bool?>? zdr;

  /// Creates a new [AiGatewayState].
  /// [accountId] Optional.
  /// [aiGatewayId] gateway id
  /// [authentication] Optional.
  /// [cacheInvalidateOnUpdate] Optional.
  /// [cacheTtl] Optional.
  /// [collectLogs] Optional.
  /// [createdAt] Optional.
  /// [dlp] Optional.
  /// [guardrails] Optional.
  /// [isDefault] Optional.
  /// [logClassification] Optional.
  /// [logManagement] Optional.
  /// [logManagementStrategy] Available values: "STOP*INSERTING", "DELETE*OLDEST".
  /// [logpush] Optional.
  /// [logpushPublicKey] Optional.
  /// [modifiedAt] Optional.
  /// [otels] Optional.
  /// [rateLimitingInterval] Optional.
  /// [rateLimitingLimit] Optional.
  /// [rateLimitingTechnique] Available values: "fixed", "sliding".
  /// [retryBackoff] Backoff strategy for retry delays
  /// [retryDelay] Delay between retry attempts in milliseconds (0-5000)
  /// [retryMaxAttempts] Maximum number of retry attempts for failed requests (1-5)
  /// [spendLimits] Optional.
  /// [storeId] Optional.
  /// [stripe] Optional.
  /// [workersAiBillingMode] Controls how Workers AI inference calls routed through this gateway are billed. 'postpaid' bills the account directly through Workers AI; 'unified' deducts credits via AI Gateway using neuron-based pricing and delegates billing to AI Gateway.
  /// [zdr] Optional.
  const AiGatewayState({
    this.accountId,
    this.aiGatewayId,
    this.authentication,
    this.cacheInvalidateOnUpdate,
    this.cacheTtl,
    this.collectLogs,
    this.createdAt,
    this.dlp,
    this.guardrails,
    this.isDefault,
    this.logClassification,
    this.logManagement,
    this.logManagementStrategy,
    this.logpush,
    this.logpushPublicKey,
    this.modifiedAt,
    this.otels,
    this.rateLimitingInterval,
    this.rateLimitingLimit,
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
      'accountId': ?accountId,
      'aiGatewayId': ?aiGatewayId,
      'authentication': ?authentication,
      'cacheInvalidateOnUpdate': ?cacheInvalidateOnUpdate,
      'cacheTtl': ?cacheTtl,
      'collectLogs': ?collectLogs,
      'createdAt': ?createdAt,
      'dlp': ?pulumi.Input.mapOptionalInputValue<AiGatewayDlp, Map<String, dynamic>>(dlp, (value) => value.toMap()),
      'guardrails': ?pulumi.Input.mapOptionalInputValue<AiGatewayGuardrails, Map<String, dynamic>>(guardrails, (value) => value.toMap()),
      'isDefault': ?isDefault,
      'logClassification': ?logClassification,
      'logManagement': ?logManagement,
      'logManagementStrategy': ?logManagementStrategy,
      'logpush': ?logpush,
      'logpushPublicKey': ?logpushPublicKey,
      'modifiedAt': ?modifiedAt,
      'otels': ?pulumi.Input.mapOptionalInputValue<List<AiGatewayOtel>, List<Map<String, dynamic>>>(otels, (value) => pulumi.Input.encodeList<AiGatewayOtel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rateLimitingInterval': ?rateLimitingInterval,
      'rateLimitingLimit': ?rateLimitingLimit,
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

  factory AiGatewayState.fromMap(Map<String, dynamic> map) {
    return AiGatewayState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aiGatewayId: (() { final guardedValue = map['aiGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheInvalidateOnUpdate: (() { final guardedValue = map['cacheInvalidateOnUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheTtl: (() { final guardedValue = map['cacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      collectLogs: (() { final guardedValue = map['collectLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dlp: (() { final guardedValue = map['dlp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDlp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      guardrails: (() { final guardedValue = map['guardrails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayGuardrails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logClassification: (() { final guardedValue = map['logClassification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logManagement: (() { final guardedValue = map['logManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      logManagementStrategy: (() { final guardedValue = map['logManagementStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logpush: (() { final guardedValue = map['logpush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logpushPublicKey: (() { final guardedValue = map['logpushPublicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      otels: (() { final guardedValue = map['otels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiGatewayOtel>(guardedValue, (value) => AiGatewayOtel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rateLimitingInterval: (() { final guardedValue = map['rateLimitingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      rateLimitingLimit: (() { final guardedValue = map['rateLimitingLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
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

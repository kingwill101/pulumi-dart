// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateway_dlp.dart';
import 'get_ai_gateway_filter.dart';
import 'get_ai_gateway_guardrails.dart';
import 'get_ai_gateway_otel.dart';
import 'get_ai_gateway_spend_limits.dart';
import 'get_ai_gateway_stripe.dart';

/// Result data returned by getAiGateway.
class GetAiGatewayResult {
  final String? accountId;
  final bool? authentication;
  final bool? cacheInvalidateOnUpdate;
  final int? cacheTtl;
  final bool? collectLogs;
  final String? createdAt;
  final GetAiGatewayDlp? dlp;
  final GetAiGatewayFilter? filter;
  final GetAiGatewayGuardrails? guardrails;
  /// gateway id
  final String? id;
  final bool? isDefault;
  final bool? logClassification;
  final int? logManagement;
  /// Available values: "STOP*INSERTING", "DELETE*OLDEST".
  final String? logManagementStrategy;
  final bool? logpush;
  final String? logpushPublicKey;
  final String? modifiedAt;
  final List<GetAiGatewayOtel>? otels;
  final int? rateLimitingInterval;
  final int? rateLimitingLimit;
  /// Available values: "fixed", "sliding".
  final String? rateLimitingTechnique;
  /// Backoff strategy for retry delays
  /// Available values: "constant", "linear", "exponential".
  final String? retryBackoff;
  /// Delay between retry attempts in milliseconds (0-5000)
  final int? retryDelay;
  /// Maximum number of retry attempts for failed requests (1-5)
  final int? retryMaxAttempts;
  final GetAiGatewaySpendLimits? spendLimits;
  final String? storeId;
  final GetAiGatewayStripe? stripe;
  /// Controls how Workers AI inference calls routed through this gateway are billed. 'postpaid' bills the account directly through Workers AI; 'unified' deducts credits via AI Gateway using neuron-based pricing and delegates billing to AI Gateway.
  /// Available values: "postpaid", "unified".
  final String? workersAiBillingMode;
  final bool? zdr;

  /// Creates a new [GetAiGatewayResult].
  /// [accountId] Optional.
  /// [authentication] Optional.
  /// [cacheInvalidateOnUpdate] Optional.
  /// [cacheTtl] Optional.
  /// [collectLogs] Optional.
  /// [createdAt] Optional.
  /// [dlp] Optional.
  /// [filter] Optional.
  /// [guardrails] Optional.
  /// [id] gateway id
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
  const GetAiGatewayResult({
    this.accountId,
    this.authentication,
    this.cacheInvalidateOnUpdate,
    this.cacheTtl,
    this.collectLogs,
    this.createdAt,
    this.dlp,
    this.filter,
    this.guardrails,
    this.id,
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
      'authentication': ?authentication,
      'cacheInvalidateOnUpdate': ?cacheInvalidateOnUpdate,
      'cacheTtl': ?cacheTtl,
      'collectLogs': ?collectLogs,
      'createdAt': ?createdAt,
      'dlp': ?dlp?.toMap(),
      'filter': ?filter?.toMap(),
      'guardrails': ?guardrails?.toMap(),
      'id': ?id,
      'isDefault': ?isDefault,
      'logClassification': ?logClassification,
      'logManagement': ?logManagement,
      'logManagementStrategy': ?logManagementStrategy,
      'logpush': ?logpush,
      'logpushPublicKey': ?logpushPublicKey,
      'modifiedAt': ?modifiedAt,
      'otels': ?(() { final guardedValue = otels; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAiGatewayOtel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rateLimitingInterval': ?rateLimitingInterval,
      'rateLimitingLimit': ?rateLimitingLimit,
      'rateLimitingTechnique': ?rateLimitingTechnique,
      'retryBackoff': ?retryBackoff,
      'retryDelay': ?retryDelay,
      'retryMaxAttempts': ?retryMaxAttempts,
      'spendLimits': ?spendLimits?.toMap(),
      'storeId': ?storeId,
      'stripe': ?stripe?.toMap(),
      'workersAiBillingMode': ?workersAiBillingMode,
      'zdr': ?zdr,
    };
  }

  factory GetAiGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      cacheInvalidateOnUpdate: (() { final guardedValue = map['cacheInvalidateOnUpdate']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      cacheTtl: (() { final guardedValue = map['cacheTtl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      collectLogs: (() { final guardedValue = map['collectLogs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dlp: (() { final guardedValue = map['dlp']; if (guardedValue == null) return null; return GetAiGatewayDlp.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetAiGatewayFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      guardrails: (() { final guardedValue = map['guardrails']; if (guardedValue == null) return null; return GetAiGatewayGuardrails.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      logClassification: (() { final guardedValue = map['logClassification']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      logManagement: (() { final guardedValue = map['logManagement']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      logManagementStrategy: (() { final guardedValue = map['logManagementStrategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logpush: (() { final guardedValue = map['logpush']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      logpushPublicKey: (() { final guardedValue = map['logpushPublicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      otels: (() { final guardedValue = map['otels']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAiGatewayOtel>(guardedValue, (value) => GetAiGatewayOtel.fromMap((value as Map).cast<String, dynamic>())); })(),
      rateLimitingInterval: (() { final guardedValue = map['rateLimitingInterval']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      rateLimitingLimit: (() { final guardedValue = map['rateLimitingLimit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      rateLimitingTechnique: (() { final guardedValue = map['rateLimitingTechnique']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retryBackoff: (() { final guardedValue = map['retryBackoff']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retryDelay: (() { final guardedValue = map['retryDelay']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      retryMaxAttempts: (() { final guardedValue = map['retryMaxAttempts']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      spendLimits: (() { final guardedValue = map['spendLimits']; if (guardedValue == null) return null; return GetAiGatewaySpendLimits.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storeId: (() { final guardedValue = map['storeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stripe: (() { final guardedValue = map['stripe']; if (guardedValue == null) return null; return GetAiGatewayStripe.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      workersAiBillingMode: (() { final guardedValue = map['workersAiBillingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zdr: (() { final guardedValue = map['zdr']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

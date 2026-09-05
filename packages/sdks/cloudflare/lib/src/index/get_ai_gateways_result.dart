// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateways_result_dlp.dart';
import 'get_ai_gateways_result_guardrails.dart';
import 'get_ai_gateways_result_otel.dart';
import 'get_ai_gateways_result_spend_limits.dart';
import 'get_ai_gateways_result_stripe.dart';

class GetAiGatewaysResult {
  final pulumi.Input<bool> authentication;
  final pulumi.Input<bool> cacheInvalidateOnUpdate;
  final pulumi.Input<int> cacheTtl;
  final pulumi.Input<bool> collectLogs;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<GetAiGatewaysResultDlp> dlp;
  final pulumi.Input<GetAiGatewaysResultGuardrails> guardrails;
  /// gateway id
  final pulumi.Input<String> id;
  final pulumi.Input<bool> isDefault;
  final pulumi.Input<bool> logClassification;
  final pulumi.Input<int> logManagement;
  /// Available values: "STOP*INSERTING", "DELETE*OLDEST".
  final pulumi.Input<String> logManagementStrategy;
  final pulumi.Input<bool> logpush;
  final pulumi.Input<String> logpushPublicKey;
  final pulumi.Input<String> modifiedAt;
  final pulumi.Input<List<GetAiGatewaysResultOtel>> otels;
  final pulumi.Input<int> rateLimitingInterval;
  final pulumi.Input<int> rateLimitingLimit;
  /// Available values: "fixed", "sliding".
  final pulumi.Input<String> rateLimitingTechnique;
  /// Backoff strategy for retry delays
  /// Available values: "constant", "linear", "exponential".
  final pulumi.Input<String> retryBackoff;
  /// Delay between retry attempts in milliseconds (0-5000)
  final pulumi.Input<int> retryDelay;
  /// Maximum number of retry attempts for failed requests (1-5)
  final pulumi.Input<int> retryMaxAttempts;
  final pulumi.Input<GetAiGatewaysResultSpendLimits> spendLimits;
  final pulumi.Input<String> storeId;
  final pulumi.Input<GetAiGatewaysResultStripe> stripe;
  /// Controls how Workers AI inference calls routed through this gateway are billed. 'postpaid' bills the account directly through Workers AI; 'unified' deducts credits via AI Gateway using neuron-based pricing and delegates billing to AI Gateway.
  /// Available values: "postpaid", "unified".
  final pulumi.Input<String> workersAiBillingMode;
  final pulumi.Input<bool> zdr;

  /// Creates a new [GetAiGatewaysResult].
  /// [authentication] Required.
  /// [cacheInvalidateOnUpdate] Required.
  /// [cacheTtl] Required.
  /// [collectLogs] Required.
  /// [createdAt] Required.
  /// [dlp] Required.
  /// [guardrails] Required.
  /// [id] gateway id
  /// [isDefault] Required.
  /// [logClassification] Required.
  /// [logManagement] Required.
  /// [logManagementStrategy] Available values: "STOP*INSERTING", "DELETE*OLDEST".
  /// [logpush] Required.
  /// [logpushPublicKey] Required.
  /// [modifiedAt] Required.
  /// [otels] Required.
  /// [rateLimitingInterval] Required.
  /// [rateLimitingLimit] Required.
  /// [rateLimitingTechnique] Available values: "fixed", "sliding".
  /// [retryBackoff] Backoff strategy for retry delays
  /// [retryDelay] Delay between retry attempts in milliseconds (0-5000)
  /// [retryMaxAttempts] Maximum number of retry attempts for failed requests (1-5)
  /// [spendLimits] Required.
  /// [storeId] Required.
  /// [stripe] Required.
  /// [workersAiBillingMode] Controls how Workers AI inference calls routed through this gateway are billed. 'postpaid' bills the account directly through Workers AI; 'unified' deducts credits via AI Gateway using neuron-based pricing and delegates billing to AI Gateway.
  /// [zdr] Required.
  const GetAiGatewaysResult({
    required this.authentication,
    required this.cacheInvalidateOnUpdate,
    required this.cacheTtl,
    required this.collectLogs,
    required this.createdAt,
    required this.dlp,
    required this.guardrails,
    required this.id,
    required this.isDefault,
    required this.logClassification,
    required this.logManagement,
    required this.logManagementStrategy,
    required this.logpush,
    required this.logpushPublicKey,
    required this.modifiedAt,
    required this.otels,
    required this.rateLimitingInterval,
    required this.rateLimitingLimit,
    required this.rateLimitingTechnique,
    required this.retryBackoff,
    required this.retryDelay,
    required this.retryMaxAttempts,
    required this.spendLimits,
    required this.storeId,
    required this.stripe,
    required this.workersAiBillingMode,
    required this.zdr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': authentication,
      'cacheInvalidateOnUpdate': cacheInvalidateOnUpdate,
      'cacheTtl': cacheTtl,
      'collectLogs': collectLogs,
      'createdAt': createdAt,
      'dlp': pulumi.Input.mapInputValue<GetAiGatewaysResultDlp, Map<String, dynamic>>(dlp, (value) => value.toMap()),
      'guardrails': pulumi.Input.mapInputValue<GetAiGatewaysResultGuardrails, Map<String, dynamic>>(guardrails, (value) => value.toMap()),
      'id': id,
      'isDefault': isDefault,
      'logClassification': logClassification,
      'logManagement': logManagement,
      'logManagementStrategy': logManagementStrategy,
      'logpush': logpush,
      'logpushPublicKey': logpushPublicKey,
      'modifiedAt': modifiedAt,
      'otels': pulumi.Input.mapInputValue<List<GetAiGatewaysResultOtel>, List<Map<String, dynamic>>>(otels, (value) => pulumi.Input.encodeList<GetAiGatewaysResultOtel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rateLimitingInterval': rateLimitingInterval,
      'rateLimitingLimit': rateLimitingLimit,
      'rateLimitingTechnique': rateLimitingTechnique,
      'retryBackoff': retryBackoff,
      'retryDelay': retryDelay,
      'retryMaxAttempts': retryMaxAttempts,
      'spendLimits': pulumi.Input.mapInputValue<GetAiGatewaysResultSpendLimits, Map<String, dynamic>>(spendLimits, (value) => value.toMap()),
      'storeId': storeId,
      'stripe': pulumi.Input.mapInputValue<GetAiGatewaysResultStripe, Map<String, dynamic>>(stripe, (value) => value.toMap()),
      'workersAiBillingMode': workersAiBillingMode,
      'zdr': zdr,
    };
  }

  factory GetAiGatewaysResult.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaysResult(
      authentication: pulumi.Input.fromValue(map['authentication'] as bool),
      cacheInvalidateOnUpdate: pulumi.Input.fromValue(map['cacheInvalidateOnUpdate'] as bool),
      cacheTtl: pulumi.Input.fromValue((map['cacheTtl'] as num).toInt()),
      collectLogs: pulumi.Input.fromValue(map['collectLogs'] as bool),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      dlp: pulumi.Input.fromValue(GetAiGatewaysResultDlp.fromMap((map['dlp']! as Map).cast<String, dynamic>())),
      guardrails: pulumi.Input.fromValue(GetAiGatewaysResultGuardrails.fromMap((map['guardrails']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      logClassification: pulumi.Input.fromValue(map['logClassification'] as bool),
      logManagement: pulumi.Input.fromValue((map['logManagement'] as num).toInt()),
      logManagementStrategy: pulumi.Input.fromValue(map['logManagementStrategy'] as String),
      logpush: pulumi.Input.fromValue(map['logpush'] as bool),
      logpushPublicKey: pulumi.Input.fromValue(map['logpushPublicKey'] as String),
      modifiedAt: pulumi.Input.fromValue(map['modifiedAt'] as String),
      otels: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiGatewaysResultOtel>(map['otels']!, (value) => GetAiGatewaysResultOtel.fromMap((value as Map).cast<String, dynamic>()))),
      rateLimitingInterval: pulumi.Input.fromValue((map['rateLimitingInterval'] as num).toInt()),
      rateLimitingLimit: pulumi.Input.fromValue((map['rateLimitingLimit'] as num).toInt()),
      rateLimitingTechnique: pulumi.Input.fromValue(map['rateLimitingTechnique'] as String),
      retryBackoff: pulumi.Input.fromValue(map['retryBackoff'] as String),
      retryDelay: pulumi.Input.fromValue((map['retryDelay'] as num).toInt()),
      retryMaxAttempts: pulumi.Input.fromValue((map['retryMaxAttempts'] as num).toInt()),
      spendLimits: pulumi.Input.fromValue(GetAiGatewaysResultSpendLimits.fromMap((map['spendLimits']! as Map).cast<String, dynamic>())),
      storeId: pulumi.Input.fromValue(map['storeId'] as String),
      stripe: pulumi.Input.fromValue(GetAiGatewaysResultStripe.fromMap((map['stripe']! as Map).cast<String, dynamic>())),
      workersAiBillingMode: pulumi.Input.fromValue(map['workersAiBillingMode'] as String),
      zdr: pulumi.Input.fromValue(map['zdr'] as bool),
    );
  }
}

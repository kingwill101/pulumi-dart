// ignore_for_file: unused_element, unnecessary_cast

import 'async_operation_polling_rules_response.dart';

class ResourceProviderAuthorizationRulesResponse {
  /// The async operation polling rules.
  final AsyncOperationPollingRulesResponse? asyncOperationPollingRules;

  /// Creates a new [ResourceProviderAuthorizationRulesResponse].
  /// [asyncOperationPollingRules] The async operation polling rules.
  ResourceProviderAuthorizationRulesResponse({
    this.asyncOperationPollingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncOperationPollingRules': ?asyncOperationPollingRules == null ? null : asyncOperationPollingRules!.toMap(),
    };
  }

  factory ResourceProviderAuthorizationRulesResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorizationRulesResponse(
      asyncOperationPollingRules: map['asyncOperationPollingRules'] == null ? null : AsyncOperationPollingRulesResponse.fromMap((map['asyncOperationPollingRules'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'async_operation_polling_rules_response.dart';

class ResourceProviderAuthorizationRulesResponse {
  /// The async operation polling rules.
  final pulumi.Input<AsyncOperationPollingRulesResponse>? asyncOperationPollingRules;

  /// Creates a new [ResourceProviderAuthorizationRulesResponse].
  /// [asyncOperationPollingRules] The async operation polling rules.
  const ResourceProviderAuthorizationRulesResponse({
    this.asyncOperationPollingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncOperationPollingRules': ?pulumi.Input.mapOptionalInputValue<AsyncOperationPollingRulesResponse, Map<String, dynamic>>(asyncOperationPollingRules, (value) => value.toMap()),
    };
  }

  factory ResourceProviderAuthorizationRulesResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorizationRulesResponse(
      asyncOperationPollingRules: (() { final guardedValue = map['asyncOperationPollingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AsyncOperationPollingRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

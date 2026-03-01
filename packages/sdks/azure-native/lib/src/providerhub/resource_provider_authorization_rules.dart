// ignore_for_file: unused_element, unnecessary_cast

import 'async_operation_polling_rules.dart';

class ResourceProviderAuthorizationRules {
  /// The async operation polling rules.
  final AsyncOperationPollingRules? asyncOperationPollingRules;

  /// Creates a new [ResourceProviderAuthorizationRules].
  /// [asyncOperationPollingRules] The async operation polling rules.
  ResourceProviderAuthorizationRules({
    this.asyncOperationPollingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncOperationPollingRules': ?asyncOperationPollingRules == null ? null : asyncOperationPollingRules!.toMap(),
    };
  }

  factory ResourceProviderAuthorizationRules.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorizationRules(
      asyncOperationPollingRules: map['asyncOperationPollingRules'] == null ? null : AsyncOperationPollingRules.fromMap((map['asyncOperationPollingRules'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'async_operation_polling_rules.dart';

class ResourceProviderAuthorizationRules {
  /// The async operation polling rules.
  final pulumi.Input<AsyncOperationPollingRules>? asyncOperationPollingRules;

  /// Creates a new [ResourceProviderAuthorizationRules].
  /// [asyncOperationPollingRules] The async operation polling rules.
  const ResourceProviderAuthorizationRules({
    this.asyncOperationPollingRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncOperationPollingRules': ?pulumi.Input.mapOptionalInputValue<AsyncOperationPollingRules, Map<String, dynamic>>(asyncOperationPollingRules, (value) => value.toMap()),
    };
  }

  factory ResourceProviderAuthorizationRules.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorizationRules(
      asyncOperationPollingRules: (() { final guardedValue = map['asyncOperationPollingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AsyncOperationPollingRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

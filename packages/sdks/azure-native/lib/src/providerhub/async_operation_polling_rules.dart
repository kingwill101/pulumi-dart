// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AsyncOperationPollingRules {
  /// The additional options.
  final pulumi.Input<dynamic>? additionalOptions;
  /// The authorization actions.
  final pulumi.Input<List<String>?>? authorizationActions;

  /// Creates a new [AsyncOperationPollingRules].
  /// [additionalOptions] The additional options.
  /// [authorizationActions] The authorization actions.
  const AsyncOperationPollingRules({
    this.additionalOptions,
    this.authorizationActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalOptions': ?additionalOptions,
      'authorizationActions': ?authorizationActions,
    };
  }

  factory AsyncOperationPollingRules.fromMap(Map<String, dynamic> map) {
    return AsyncOperationPollingRules(
      additionalOptions: (() { final guardedValue = map['additionalOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      authorizationActions: (() { final guardedValue = map['authorizationActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

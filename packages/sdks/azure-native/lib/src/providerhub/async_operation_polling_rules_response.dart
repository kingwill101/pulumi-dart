// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AsyncOperationPollingRulesResponse {
  /// The additional options.
  final pulumi.Input<String>? additionalOptions;
  /// The authorization actions.
  final pulumi.Input<List<String>>? authorizationActions;

  /// Creates a new [AsyncOperationPollingRulesResponse].
  /// [additionalOptions] The additional options.
  /// [authorizationActions] The authorization actions.
  const AsyncOperationPollingRulesResponse({
    this.additionalOptions,
    this.authorizationActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalOptions': ?additionalOptions,
      'authorizationActions': ?authorizationActions,
    };
  }

  factory AsyncOperationPollingRulesResponse.fromMap(Map<String, dynamic> map) {
    return AsyncOperationPollingRulesResponse(
      additionalOptions: (() { final guardedValue = map['additionalOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationActions: (() { final guardedValue = map['authorizationActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


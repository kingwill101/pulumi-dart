// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleActionsUrlRedirect {
  /// The fragment to use in the redirect. The value must be a string between `1` and `1024` characters in length and must not start with `#`. Leave this unset to preserve the incoming fragment.
  final pulumi.Input<String?>? destinationFragment;
  /// The host name you want the request to be redirected to. The value must be a string between `1` and `2048` characters in length. Leave this unset to preserve the incoming host.
  final pulumi.Input<String?>? destinationHostName;
  /// The path to use in the redirect. The value must be a string and include the leading `/`. Leave this unset to preserve the incoming path.
  final pulumi.Input<String?>? destinationPath;
  /// The query string used in the redirect URL. The value must be in the `&lt;key&gt;=&lt;value&gt;` or `&lt;key&gt;={&lt;action_server_variable&gt;}` format and must not include the leading `?`. Leave this unset to preserve the incoming query string. The maximum allowed length for this field is `2048` characters.
  final pulumi.Input<String?>? queryString;
  /// The protocol the request is redirected as. Possible values are `MatchRequest`, `Http`, and `Https`. Defaults to `MatchRequest`.
  final pulumi.Input<String?>? redirectProtocol;
  /// The response type to return to the requestor. Possible values are `Moved`, `Found`, `TemporaryRedirect`, and `PermanentRedirect`.
  final pulumi.Input<String> redirectType;

  /// Creates a new [FrontdoorBatchRuleSetRuleActionsUrlRedirect].
  /// [destinationFragment] The fragment to use in the redirect. The value must be a string between `1` and `1024` characters in length and must not start with `#`. Leave this unset to preserve the incoming fragment.
  /// [destinationHostName] The host name you want the request to be redirected to. The value must be a string between `1` and `2048` characters in length. Leave this unset to preserve the incoming host.
  /// [destinationPath] The path to use in the redirect. The value must be a string and include the leading `/`. Leave this unset to preserve the incoming path.
  /// [queryString] The query string used in the redirect URL. The value must be in the `&lt;key&gt;=&lt;value&gt;` or `&lt;key&gt;={&lt;action_server_variable&gt;}` format and must not include the leading `?`. Leave this unset to preserve the incoming query string. The maximum allowed length for this field is `2048` characters.
  /// [redirectProtocol] The protocol the request is redirected as. Possible values are `MatchRequest`, `Http`, and `Https`. Defaults to `MatchRequest`.
  /// [redirectType] The response type to return to the requestor. Possible values are `Moved`, `Found`, `TemporaryRedirect`, and `PermanentRedirect`.
  const FrontdoorBatchRuleSetRuleActionsUrlRedirect({
    this.destinationFragment,
    this.destinationHostName,
    this.destinationPath,
    this.queryString,
    this.redirectProtocol,
    required this.redirectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFragment': ?destinationFragment,
      'destinationHostName': ?destinationHostName,
      'destinationPath': ?destinationPath,
      'queryString': ?queryString,
      'redirectProtocol': ?redirectProtocol,
      'redirectType': redirectType,
    };
  }

  factory FrontdoorBatchRuleSetRuleActionsUrlRedirect.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleActionsUrlRedirect(
      destinationFragment: (() { final guardedValue = map['destinationFragment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationHostName: (() { final guardedValue = map['destinationHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPath: (() { final guardedValue = map['destinationPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectProtocol: (() { final guardedValue = map['redirectProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectType: pulumi.Input.fromValue(map['redirectType'] as String),
    );
  }
}

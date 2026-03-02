// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorRuleActionsUrlRedirectAction {
  /// The fragment to use in the redirect. The value must be a string between `0` and `1024` characters in length, leave blank to preserve the incoming fragment. Defaults to `""`.
  final pulumi.Input<String>? destinationFragment;
  /// The host name you want the request to be redirected to. The value must be a string between `0` and `2048` characters in length, leave blank to preserve the incoming host.
  final pulumi.Input<String> destinationHostname;
  /// The path to use in the redirect. The value must be a string and include the leading `/`, leave blank to preserve the incoming path. Defaults to `""`.
  final pulumi.Input<String>? destinationPath;
  /// The query string used in the redirect URL. The value must be in the &lt;key>=&lt;value> or &lt;key>={`action_server_variable`} format and must not include the leading `?`, leave blank to preserve the incoming query string. Maximum allowed length for this field is `2048` characters. Defaults to `""`.
  final pulumi.Input<String>? queryString;
  /// The protocol the request will be redirected as. Possible values include `MatchRequest`, `Http` or `Https`. Defaults to `MatchRequest`.
  final pulumi.Input<String>? redirectProtocol;
  /// The response type to return to the requestor. Possible values include `Moved`, `Found` , `TemporaryRedirect` or `PermanentRedirect`.
  final pulumi.Input<String> redirectType;

  /// Creates a new [FrontdoorRuleActionsUrlRedirectAction].
  /// [destinationFragment] The fragment to use in the redirect. The value must be a string between `0` and `1024` characters in length, leave blank to preserve the incoming fragment. Defaults to `""`.
  /// [destinationHostname] The host name you want the request to be redirected to. The value must be a string between `0` and `2048` characters in length, leave blank to preserve the incoming host.
  /// [destinationPath] The path to use in the redirect. The value must be a string and include the leading `/`, leave blank to preserve the incoming path. Defaults to `""`.
  /// [queryString] The query string used in the redirect URL. The value must be in the &lt;key>=&lt;value> or &lt;key>={`action_server_variable`} format and must not include the leading `?`, leave blank to preserve the incoming query string. Maximum allowed length for this field is `2048` characters. Defaults to `""`.
  /// [redirectProtocol] The protocol the request will be redirected as. Possible values include `MatchRequest`, `Http` or `Https`. Defaults to `MatchRequest`.
  /// [redirectType] The response type to return to the requestor. Possible values include `Moved`, `Found` , `TemporaryRedirect` or `PermanentRedirect`.
  FrontdoorRuleActionsUrlRedirectAction({
    this.destinationFragment,
    required this.destinationHostname,
    this.destinationPath,
    this.queryString,
    this.redirectProtocol,
    required this.redirectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFragment': ?destinationFragment,
      'destinationHostname': destinationHostname,
      'destinationPath': ?destinationPath,
      'queryString': ?queryString,
      'redirectProtocol': ?redirectProtocol,
      'redirectType': redirectType,
    };
  }

  factory FrontdoorRuleActionsUrlRedirectAction.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleActionsUrlRedirectAction(
      destinationFragment: map['destinationFragment'] == null ? null : (map['destinationFragment'] as String).input(),
      destinationHostname: (map['destinationHostname'] as String).input(),
      destinationPath: map['destinationPath'] == null ? null : (map['destinationPath'] as String).input(),
      queryString: map['queryString'] == null ? null : (map['queryString'] as String).input(),
      redirectProtocol: map['redirectProtocol'] == null ? null : (map['redirectProtocol'] as String).input(),
      redirectType: (map['redirectType'] as String).input(),
    );
  }
}


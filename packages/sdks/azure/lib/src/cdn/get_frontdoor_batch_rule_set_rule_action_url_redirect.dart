// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorBatchRuleSetRuleActionUrlRedirect {
  /// The destination fragment for the redirect action.
  final pulumi.Input<String> destinationFragment;
  /// The destination host name for the redirect action.
  final pulumi.Input<String> destinationHostName;
  /// The destination path for the rewrite action.
  final pulumi.Input<String> destinationPath;
  /// One or more `queryString` blocks as defined below.
  final pulumi.Input<String> queryString;
  /// The redirect protocol for the redirect action.
  final pulumi.Input<String> redirectProtocol;
  /// The redirect type for the redirect action.
  final pulumi.Input<String> redirectType;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleActionUrlRedirect].
  /// [destinationFragment] The destination fragment for the redirect action.
  /// [destinationHostName] The destination host name for the redirect action.
  /// [destinationPath] The destination path for the rewrite action.
  /// [queryString] One or more `queryString` blocks as defined below.
  /// [redirectProtocol] The redirect protocol for the redirect action.
  /// [redirectType] The redirect type for the redirect action.
  const GetFrontdoorBatchRuleSetRuleActionUrlRedirect({
    required this.destinationFragment,
    required this.destinationHostName,
    required this.destinationPath,
    required this.queryString,
    required this.redirectProtocol,
    required this.redirectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFragment': destinationFragment,
      'destinationHostName': destinationHostName,
      'destinationPath': destinationPath,
      'queryString': queryString,
      'redirectProtocol': redirectProtocol,
      'redirectType': redirectType,
    };
  }

  factory GetFrontdoorBatchRuleSetRuleActionUrlRedirect.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleActionUrlRedirect(
      destinationFragment: pulumi.Input.fromValue(map['destinationFragment'] as String),
      destinationHostName: pulumi.Input.fromValue(map['destinationHostName'] as String),
      destinationPath: pulumi.Input.fromValue(map['destinationPath'] as String),
      queryString: pulumi.Input.fromValue(map['queryString'] as String),
      redirectProtocol: pulumi.Input.fromValue(map['redirectProtocol'] as String),
      redirectType: pulumi.Input.fromValue(map['redirectType'] as String),
    );
  }
}

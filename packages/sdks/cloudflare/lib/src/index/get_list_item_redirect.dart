// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListItemRedirect {
  final pulumi.Input<bool> includeSubdomains;
  final pulumi.Input<bool> preservePathSuffix;
  final pulumi.Input<bool> preserveQueryString;
  final pulumi.Input<String> sourceUrl;
  /// Available values: 301, 302, 307, 308.
  final pulumi.Input<int> statusCode;
  final pulumi.Input<bool> subpathMatching;
  final pulumi.Input<String> targetUrl;

  /// Creates a new [GetListItemRedirect].
  /// [includeSubdomains] Required.
  /// [preservePathSuffix] Required.
  /// [preserveQueryString] Required.
  /// [sourceUrl] Required.
  /// [statusCode] Available values: 301, 302, 307, 308.
  /// [subpathMatching] Required.
  /// [targetUrl] Required.
  const GetListItemRedirect({
    required this.includeSubdomains,
    required this.preservePathSuffix,
    required this.preserveQueryString,
    required this.sourceUrl,
    required this.statusCode,
    required this.subpathMatching,
    required this.targetUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeSubdomains': includeSubdomains,
      'preservePathSuffix': preservePathSuffix,
      'preserveQueryString': preserveQueryString,
      'sourceUrl': sourceUrl,
      'statusCode': statusCode,
      'subpathMatching': subpathMatching,
      'targetUrl': targetUrl,
    };
  }

  factory GetListItemRedirect.fromMap(Map<String, dynamic> map) {
    return GetListItemRedirect(
      includeSubdomains: pulumi.Input.fromValue(map['includeSubdomains'] as bool),
      preservePathSuffix: pulumi.Input.fromValue(map['preservePathSuffix'] as bool),
      preserveQueryString: pulumi.Input.fromValue(map['preserveQueryString'] as bool),
      sourceUrl: pulumi.Input.fromValue(map['sourceUrl'] as String),
      statusCode: pulumi.Input.fromValue((map['statusCode'] as num).toInt()),
      subpathMatching: pulumi.Input.fromValue(map['subpathMatching'] as bool),
      targetUrl: pulumi.Input.fromValue(map['targetUrl'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListItemRedirect {
  final pulumi.Input<bool?>? includeSubdomains;
  final pulumi.Input<bool?>? preservePathSuffix;
  final pulumi.Input<bool?>? preserveQueryString;
  final pulumi.Input<String> sourceUrl;
  /// Available values: 301, 302, 307, 308.
  final pulumi.Input<int?>? statusCode;
  final pulumi.Input<bool?>? subpathMatching;
  final pulumi.Input<String> targetUrl;

  /// Creates a new [ListItemRedirect].
  /// [includeSubdomains] Optional.
  /// [preservePathSuffix] Optional.
  /// [preserveQueryString] Optional.
  /// [sourceUrl] Required.
  /// [statusCode] Available values: 301, 302, 307, 308.
  /// [subpathMatching] Optional.
  /// [targetUrl] Required.
  const ListItemRedirect({
    this.includeSubdomains,
    this.preservePathSuffix,
    this.preserveQueryString,
    required this.sourceUrl,
    this.statusCode,
    this.subpathMatching,
    required this.targetUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeSubdomains': ?includeSubdomains,
      'preservePathSuffix': ?preservePathSuffix,
      'preserveQueryString': ?preserveQueryString,
      'sourceUrl': sourceUrl,
      'statusCode': ?statusCode,
      'subpathMatching': ?subpathMatching,
      'targetUrl': targetUrl,
    };
  }

  factory ListItemRedirect.fromMap(Map<String, dynamic> map) {
    return ListItemRedirect(
      includeSubdomains: (() { final guardedValue = map['includeSubdomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preservePathSuffix: (() { final guardedValue = map['preservePathSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preserveQueryString: (() { final guardedValue = map['preserveQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceUrl: pulumi.Input.fromValue(map['sourceUrl'] as String),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      subpathMatching: (() { final guardedValue = map['subpathMatching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetUrl: pulumi.Input.fromValue(map['targetUrl'] as String),
    );
  }
}

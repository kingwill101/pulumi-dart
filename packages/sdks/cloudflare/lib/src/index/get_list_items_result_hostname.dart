// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListItemsResultHostname {
  /// Only applies to wildcard hostnames (e.g., *.example.com). When true (default), the rule blocks only subdomains. When false, the rule blocks both the root domain and subdomains.
  final pulumi.Input<bool> excludeExactHostname;
  final pulumi.Input<String> urlHostname;

  /// Creates a new [GetListItemsResultHostname].
  /// [excludeExactHostname] Only applies to wildcard hostnames (e.g., *.example.com). When true (default), the rule blocks only subdomains. When false, the rule blocks both the root domain and subdomains.
  /// [urlHostname] Required.
  const GetListItemsResultHostname({
    required this.excludeExactHostname,
    required this.urlHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExactHostname': excludeExactHostname,
      'urlHostname': urlHostname,
    };
  }

  factory GetListItemsResultHostname.fromMap(Map<String, dynamic> map) {
    return GetListItemsResultHostname(
      excludeExactHostname: pulumi.Input.fromValue(map['excludeExactHostname'] as bool),
      urlHostname: pulumi.Input.fromValue(map['urlHostname'] as String),
    );
  }
}

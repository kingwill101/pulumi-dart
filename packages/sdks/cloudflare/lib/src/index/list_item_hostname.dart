// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListItemHostname {
  /// Only applies to wildcard hostnames (e.g., *.example.com). When true (default), only subdomains are blocked. When false, both the root domain and subdomains are blocked.
  final pulumi.Input<bool?>? excludeExactHostname;
  final pulumi.Input<String> urlHostname;

  /// Creates a new [ListItemHostname].
  /// [excludeExactHostname] Only applies to wildcard hostnames (e.g., *.example.com). When true (default), only subdomains are blocked. When false, both the root domain and subdomains are blocked.
  /// [urlHostname] Required.
  const ListItemHostname({
    this.excludeExactHostname,
    required this.urlHostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExactHostname': ?excludeExactHostname,
      'urlHostname': urlHostname,
    };
  }

  factory ListItemHostname.fromMap(Map<String, dynamic> map) {
    return ListItemHostname(
      excludeExactHostname: (() { final guardedValue = map['excludeExactHostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      urlHostname: pulumi.Input.fromValue(map['urlHostname'] as String),
    );
  }
}

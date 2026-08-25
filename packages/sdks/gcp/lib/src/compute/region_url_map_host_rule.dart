// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapHostRule {
  /// An optional description of this HostRule. Provide this property
  /// when you create the resource.
  final pulumi.Input<String?>? description;
  /// The list of host patterns to match. They must be valid
  /// hostnames, except * will match any string of ([a-z0-9-.]*). In
  /// that case, * must be the first character and must be followed in
  /// the pattern by either - or ..
  final pulumi.Input<List<String>> hosts;
  /// The name of the PathMatcher to use to match the path portion of
  /// the URL if the hostRule matches the URL's host portion.
  final pulumi.Input<String> pathMatcher;

  /// Creates a new [RegionUrlMapHostRule].
  /// [description] An optional description of this HostRule. Provide this property
  /// [hosts] The list of host patterns to match. They must be valid
  /// [pathMatcher] The name of the PathMatcher to use to match the path portion of
  const RegionUrlMapHostRule({
    this.description,
    required this.hosts,
    required this.pathMatcher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'hosts': hosts,
      'pathMatcher': pathMatcher,
    };
  }

  factory RegionUrlMapHostRule.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapHostRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
      pathMatcher: pulumi.Input.fromValue(map['pathMatcher'] as String),
    );
  }
}

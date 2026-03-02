// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A custom pattern is used for defining custom HTTP verb.
class CustomHttpPatternResponse {
  /// The name of this custom HTTP verb.
  final pulumi.Input<String> kind;
  /// The path matched by this custom verb.
  final pulumi.Input<String> path;

  /// Creates a new [CustomHttpPatternResponse].
  /// [kind] The name of this custom HTTP verb.
  /// [path] The path matched by this custom verb.
  CustomHttpPatternResponse({
    required this.kind,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'path': path,
    };
  }

  factory CustomHttpPatternResponse.fromMap(Map<String, dynamic> map) {
    return CustomHttpPatternResponse(
      kind: (map['kind'] as String).input(),
      path: (map['path'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Result data returned by Component.refs.
class ComponentRefsResult {
  final Map<String, List<String>> result;

  /// Creates a new [ComponentRefsResult].
  /// [result] Required.
  const ComponentRefsResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory ComponentRefsResult.fromMap(Map<String, dynamic> map) {
    return ComponentRefsResult(
      result: pulumi.Input.decodeMapValues<List<String>>(map['result']!, (value) => (value as List).cast<String>()),
    );
  }
}

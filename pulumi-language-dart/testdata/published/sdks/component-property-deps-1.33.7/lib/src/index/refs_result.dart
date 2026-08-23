// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Result data returned by refs.
class RefsResult {
  final Map<String, List<String>> result;

  /// Creates a new [RefsResult].
  /// [result] Required.
  const RefsResult({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result,
    };
  }

  factory RefsResult.fromMap(Map<String, dynamic> map) {
    return RefsResult(
      result: pulumi.Input.decodeMapValues<List<String>>(map['result']!, (value) => (value as List).cast<String>()),
    );
  }
}

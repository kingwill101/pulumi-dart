// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Result data returned by refs.
class RefsResult {
  final Map<String, List<String>>? result;

  /// Creates a new [RefsResult].
  /// [result] Optional.
  const RefsResult({
    this.result,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
    };
  }

  factory RefsResult.fromMap(Map<String, dynamic> map) {
    return RefsResult(
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry.dart';

/// Result data returned by someData.
class SomeDataResult {
  final List<Map<String, Entry>>? nestedOutput;

  /// Creates a new [SomeDataResult].
  /// [nestedOutput] Optional.
  const SomeDataResult({
    this.nestedOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nested_output': ?(() { final guardedValue = nestedOutput; if (guardedValue == null) return null; return pulumi.Input.encodeList<Map<String, Entry>, Map<String, Map<String, dynamic>>>(guardedValue, (value) => pulumi.Input.encodeMapValues<Entry, Map<String, dynamic>>(value, (value) => value.toMap())); })(),
    };
  }

  factory SomeDataResult.fromMap(Map<String, dynamic> map) {
    return SomeDataResult(
      nestedOutput: (() { final guardedValue = map['nested_output']; if (guardedValue == null) return null; return pulumi.Input.decodeList<Map<String, Entry>>(guardedValue, (value) => pulumi.Input.decodeMapValues<Entry>(value, (value) => Entry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

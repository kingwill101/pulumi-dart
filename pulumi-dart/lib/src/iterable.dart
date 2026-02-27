import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/output.dart';

Output<T> _toOutputValue<T>(dynamic value) {
  if (value is Output<T>) {
    return value;
  }
  if (value is Input<T>) {
    return value.toOutput();
  }
  return Input.asInput<T>(value).toOutput();
}

/// Converts a collection into an [Output] map by projecting each item into a
/// key/value pair. Keys and values may be plain values, [Input]s, or [Output]s.
Output<Map<K, V>> toObject<T, K, V>(
  Iterable<T> values,
  (dynamic, dynamic) Function(T value) selector,
) {
  final entries = values.map((value) {
    final (key, val) = selector(value);
    return Output.tuple(_toOutputValue<K>(key), _toOutputValue<V>(val));
  });

  return Output.all(entries).apply((resolvedEntries) {
    final result = <K, V>{};
    for (final entry in resolvedEntries) {
      result[entry.$1] = entry.$2;
    }
    return result;
  });
}

/// Groups a collection into an [Output] map of key -> list of values.
/// Keys and values may be plain values, [Input]s, or [Output]s.
Output<Map<K, List<V>>> groupBy<T, K, V>(
  Iterable<T> values,
  (dynamic, dynamic) Function(T value) selector,
) {
  final entries = values.map((value) {
    final (key, val) = selector(value);
    return Output.tuple(_toOutputValue<K>(key), _toOutputValue<V>(val));
  });

  return Output.all(entries).apply((resolvedEntries) {
    final result = <K, List<V>>{};
    for (final entry in resolvedEntries) {
      result.putIfAbsent(entry.$1, () => <V>[]).add(entry.$2);
    }
    return result;
  });
}

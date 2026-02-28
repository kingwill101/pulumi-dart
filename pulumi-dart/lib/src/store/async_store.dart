import 'dart:async';

/// {@template pulumi.async_local_storage.summary}
/// Minimal async-local storage backed by Dart zones.
/// {@endtemplate}
///
class AsyncLocalStorage<T> {
  // ignore: unused_field
  final Zone _zone;
  final String _key;

  AsyncLocalStorage()
    : _zone = Zone.current,
      _key = '_asyncLocalStorage_${DateTime.now().microsecondsSinceEpoch}';

  /// Returns the store scoped to the current zone, if any.
  T? getStore() => Zone.current[_key] as T?;

  /// Runs [callback] with [store] bound to the current async zone.
  Future<R> run<R>(T store, Future<R> Function() callback) async {
    return await runZoned(() => callback(), zoneValues: {_key: store});
  }
}

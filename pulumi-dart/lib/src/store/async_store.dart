import 'dart:async';

class AsyncLocalStorage<T> {
  // ignore: unused_field
  final Zone _zone;
  final String _key;

  AsyncLocalStorage()
    : _zone = Zone.current,
      _key = '_asyncLocalStorage_${DateTime.now().microsecondsSinceEpoch}';

  T? getStore() => Zone.current[_key] as T?;

  Future<R> run<R>(T store, Future<R> Function() callback) async {
    return await runZoned(() => callback(), zoneValues: {_key: store});
  }
}

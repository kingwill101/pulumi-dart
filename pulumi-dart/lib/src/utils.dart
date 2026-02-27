class Lazy<T> {
  final T Function() _factory;
  bool _initialized = false;
  late T _value;

  Lazy(this._factory);

  bool get isInitialized => _initialized;

  T get value {
    if (!_initialized) {
      _value = _factory();
      _initialized = true;
    }
    return _value;
  }
}

Lazy<T> lazy<T>(T Function() factory) => Lazy<T>(factory);

bool isBlank(String? value) => value == null || value.trim().isEmpty;

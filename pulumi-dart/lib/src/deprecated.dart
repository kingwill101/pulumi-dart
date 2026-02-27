import 'dart:async';

typedef DeprecatedCallable<T> = T Function();

final Expando<Function> _deprecatedOriginals = Expando<Function>(
  'pulumiDeprecatedOriginals',
);

void Function(String message) _warningEmitter = _defaultWarningEmitter;

DeprecatedCallable<T> deprecated<T>(
  String message,
  DeprecatedCallable<T> callable,
) {
  T wrapped() {
    _warningEmitter(message);
    return callable();
  }

  _deprecatedOriginals[wrapped] = callable;
  return wrapped;
}

bool isDeprecatedCallable(Function callable) {
  return _deprecatedOriginals[callable] != null;
}

Function? getDeprecatedCallable(Function callable) {
  return _deprecatedOriginals[callable];
}

void setDeprecatedWarningEmitter(void Function(String message) emitter) {
  _warningEmitter = emitter;
}

void resetDeprecatedWarningEmitter() {
  _warningEmitter = _defaultWarningEmitter;
}

void _defaultWarningEmitter(String message) {
  Zone.current.print('warning: $message');
}

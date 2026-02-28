import 'dart:async';

/// {@template pulumi.deprecated.callable}
/// Signature for callables wrapped with [deprecated].
/// {@endtemplate}
///
typedef DeprecatedCallable<T> = T Function();

final Expando<Function> _deprecatedOriginals = Expando<Function>(
  'pulumiDeprecatedOriginals',
);

void Function(String message) _warningEmitter = _defaultWarningEmitter;

/// {@template pulumi.deprecated.wrapper}
/// Wraps a callable and emits a warning on each invocation.
///
/// ## Example
/// ```dart
/// final oldFn = deprecated('use newFn instead', () => 42);
/// final value = oldFn(); // prints warning and returns 42
/// ```
/// {@endtemplate}
///
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

/// Returns `true` when a callable was wrapped with [deprecated].
bool isDeprecatedCallable(Function callable) {
  return _deprecatedOriginals[callable] != null;
}

/// Returns the original callable for a deprecated wrapper, if present.
Function? getDeprecatedCallable(Function callable) {
  return _deprecatedOriginals[callable];
}

/// Overrides the warning emitter used by [deprecated].
void setDeprecatedWarningEmitter(void Function(String message) emitter) {
  _warningEmitter = emitter;
}

/// Restores the default warning emitter.
void resetDeprecatedWarningEmitter() {
  _warningEmitter = _defaultWarningEmitter;
}

void _defaultWarningEmitter(String message) {
  Zone.current.print('warning: $message');
}

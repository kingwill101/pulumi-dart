import 'output.dart';
import 'resource/resource.dart';
import 'dart:async';

abstract class IOutputCompletionSource {
  Type get targetType;

  Output get output;

  void trySetException(Exception exception);

  void trySetDefaultResult(bool isKnown);

  void setStringValue(String value, bool isKnown);

  void setValue(OutputData<Object?> data);
}

class OutputCompletionSource {
  static IOutputCompletionSource create<T>(Resource resource) {
    return _TypedOutputCompletionSource<T>(resource);
  }

  static Map<String, IOutputCompletionSource> initializeOutputs(
    Resource resource,
  ) {
    return <String, IOutputCompletionSource>{};
  }
}

class _TypedOutputCompletionSource<T> implements IOutputCompletionSource {
  final Resource _resource;
  final Completer<OutputData<T>> _completer = Completer<OutputData<T>>();

  _TypedOutputCompletionSource(this._resource);

  @override
  Type get targetType => T;

  @override
  Output<T> get output => Output<T>(_completer.future);

  @override
  void trySetException(Exception exception) {
    if (_completer.isCompleted) {
      return;
    }
    _completer.completeError(exception);
  }

  @override
  void trySetDefaultResult(bool isKnown) {
    if (_completer.isCompleted) {
      return;
    }
    _completer.complete(
      OutputData<T>(
        value: null,
        isKnown: isKnown,
        isSecret: false,
        resources: {_resource},
      ),
    );
  }

  @override
  void setStringValue(String value, bool isKnown) {
    if (_completer.isCompleted) {
      return;
    }
    if (!isKnown) {
      trySetDefaultResult(false);
      return;
    }

    final coerced = _coerceToTarget(value);
    _completer.complete(
      OutputData<T>(
        value: coerced,
        isKnown: true,
        isSecret: false,
        resources: {_resource},
      ),
    );
  }

  @override
  void setValue(OutputData<Object?> data) {
    if (_completer.isCompleted) {
      return;
    }
    final coerced = _coerceToTarget(data.value);
    _completer.complete(
      OutputData<T>(
        value: coerced,
        isKnown: data.isKnown,
        isSecret: data.isSecret,
        resources: {...data.resources, _resource},
      ),
    );
  }

  T? _coerceToTarget(Object? value) {
    if (value == null) {
      return null;
    }

    final targetType = T.toString();
    if ((T == int || targetType == 'int?') && value is num) {
      return value.toInt() as T;
    }
    if ((T == double || targetType == 'double?') && value is num) {
      return value.toDouble() as T;
    }
    if ((T == bool || targetType == 'bool?') && value is bool) {
      return value as T;
    }
    if (T == String || targetType == 'String?') {
      return value.toString() as T;
    }
    if (value is Map && targetType.startsWith('Map<')) {
      return value.cast<String, dynamic>() as T;
    }
    if (value is List && targetType.startsWith('List<')) {
      if (targetType.startsWith('List<String')) {
        return value
                .map<String>((entry) => entry.toString())
                .toList(growable: false)
            as T;
      }
      if (targetType.startsWith('List<int')) {
        return value
                .map<int>(
                  (entry) => entry is num ? entry.toInt() : entry as int,
                )
                .toList(growable: false)
            as T;
      }
      if (targetType.startsWith('List<double')) {
        return value
                .map<double>(
                  (entry) => entry is num ? entry.toDouble() : entry as double,
                )
                .toList(growable: false)
            as T;
      }
      if (targetType.startsWith('List<bool')) {
        return value.map<bool>((entry) => entry as bool).toList(growable: false)
            as T;
      }
      return List<Object?>.from(value) as T;
    }

    return value as T;
  }
}

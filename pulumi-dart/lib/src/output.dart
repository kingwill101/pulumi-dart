import 'dart:async';
import 'resource/resource.dart';

class Output<T> {
  final Future<OutputData<T>> _dataFuture;

  Output(this._dataFuture);

  static Output<T> create<T>(T value) {
    return Output<T>(Future.value(OutputData<T>(
      value: value,
      isKnown: true,
      isSecret: false,
      resources: {},
    )));
  }

  Future<T> getValue([T? whenUnknown]) async {
    final data = await _dataFuture;
    return data.isKnown ? (data.value as T) : (whenUnknown ?? (throw StateError('Value is unknown')));
  }

  Future<OutputData<T>> getData() => _dataFuture;

  Output<U> apply<U>(FutureOr<dynamic> Function(T) func) {
    return Output<U>(_applyHelper(func));
  }

  Future<OutputData<U>> _applyHelper<U>(FutureOr<dynamic> Function(T) func) async {
    final data = await _dataFuture;
    if (!data.isKnown) {
      return OutputData<U>(
        value: null,
        isKnown: false,
        isSecret: data.isSecret,
        resources: data.resources,
      );
    }

    final result = await Future.value(func(data.value as T));
    return _resolveOutput<U>(result, data.isSecret, data.resources);
  }

  static Future<OutputData<U>> _resolveOutput<U>(dynamic value, bool isSecret, Set<Resource> resources) async {
    if (value is Output) {
      final innerData = await value.getData();
      final resolvedValue = await _resolveOutput(innerData.value, innerData.isSecret || isSecret, resources.union(innerData.resources));
      return OutputData<U>(
        value: resolvedValue.value as U,
        isKnown: resolvedValue.isKnown && innerData.isKnown,
        isSecret: resolvedValue.isSecret,
        resources: resolvedValue.resources,
      );
    } else if (value is Future) {
      final resolvedValue = await value;
      return _resolveOutput<U>(resolvedValue, isSecret, resources);
    } else {
      return OutputData<U>(
        value: value as U,
        isKnown: true,
        isSecret: isSecret,
        resources: resources,
      );
    }
  }
  static Output<List<T>> all<T>(Iterable<Output<T>> outputs) {
    return Output<List<T>>(_allHelper(outputs));
  }

  static Future<OutputData<List<T>>> _allHelper<T>(Iterable<Output<T>> outputs) async {
    final results = await Future.wait(outputs.map((o) => o._dataFuture));
    final isKnown = results.every((r) => r.isKnown);
    final isSecret = results.any((r) => r.isSecret);
    final resources = results.expand((r) => r.resources).toSet();

    if (!isKnown) {
      return OutputData<List<T>>(
        value: null,
        isKnown: false,
        isSecret: isSecret,
        resources: resources,
      );
    }

    final values = results.map((r) => r.value as T).toList();
    return OutputData<List<T>>(
      value: values,
      isKnown: true,
      isSecret: isSecret,
      resources: resources,
    );
  }

  static Output<T> createSecret<T>(Output<T> value) {
    return Output<T>(value._dataFuture.then((data) => OutputData<T>(
      value: data.value,
      isKnown: data.isKnown,
      isSecret: true,
      resources: data.resources,
    )));
  }

  static Output<T> unsecret<T>(Output<T> output) {
    return Output<T>(output._dataFuture.then((data) => OutputData<T>(
      value: data.value,
      isKnown: data.isKnown,
      isSecret: false,
      resources: data.resources,
    )));
  }

  static Output<T> createUnknown<T>([FutureOr<T> Function()? valueFactory]) {
    return Output<T>(
      Future(() async {
        return OutputData<T>(
          value: null,
          isKnown: false,
          isSecret: false,
          resources: {},
        );
      }),
    );
  }

  static Future<bool> isSecretAsync<T>(Output<T> output) async {
    final data = await output.getData();
    return data.isSecret;
  }
}
class OutputData<T> {
  final T? value;
  final bool isKnown;
  final bool isSecret;
  final Set<Resource> resources;

  const OutputData({
    required this.value,
    required this.isKnown,
    required this.isSecret,
    required this.resources,
  });
}
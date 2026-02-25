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

  Future<T> getValue({T? whenUnknown}) async {
    final data = await _dataFuture;
    return data.isKnown
        ? (data.value as T)
        : (whenUnknown ?? (throw StateError('Value is unknown')));
  }

  Future<OutputData<T>> getData() => _dataFuture;

  Output<U> apply<U>(FutureOr<dynamic> Function(T) func) {
    return Output<U>(_applyHelper(func));
  }

  Future<OutputData<U>> _applyHelper<U>(
      FutureOr<dynamic> Function(T) func) async {
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

  static Future<OutputData<U>> _resolveOutput<U>(
      dynamic value, bool isSecret, Set<Resource> resources) async {
    if (value is Output) {
      final innerData = await value.getData();
      final resolvedValue = await _resolveOutput(innerData.value,
          innerData.isSecret || isSecret, resources.union(innerData.resources));
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

  static Future<OutputData<List<T>>> _allHelper<T>(
      Iterable<Output<T>> outputs) async {
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

  static Output<(T1, T2)> tuple<T1, T2>(Output<T1> item1, Output<T2> item2) {
    return Output(_combineOutputs([item1, item2]))
        .apply((v) => (v[0] as T1, v[1] as T2));
  }

  static Output<(T1, T2, T3)> tuple3<T1, T2, T3>(
      Output<T1> item1, Output<T2> item2, Output<T3> item3) {
    return Output(_combineOutputs([item1, item2, item3]))
        .apply((v) => (v[0] as T1, v[1] as T2, v[2] as T3));
  }

  static Output<(T1, T2, T3, T4)> tuple4<T1, T2, T3, T4>(
      Output<T1> item1, Output<T2> item2, Output<T3> item3, Output<T4> item4) {
    return Output(_combineOutputs([item1, item2, item3, item4]))
        .apply((v) => (v[0] as T1, v[1] as T2, v[2] as T3, v[3] as T4));
  }

  static Future<OutputData<List<dynamic>>> _combineOutputs(
      List<Output> outputs) async {
    final results = await Future.wait(outputs.map((o) => o.getData()));
    final isKnown = results.every((r) => r.isKnown);
    final isSecret = results.any((r) => r.isSecret);
    final resources = results.expand((r) => r.resources).toSet();
    final values = results.map((r) => r.value).toList();

    return OutputData<List<dynamic>>(
      value: values,
      isKnown: isKnown,
      isSecret: isSecret,
      resources: resources,
    );
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

  static OutputData<X> create<X>(
      Set<Resource> resources, X value, bool isKnown, bool isSecret) {
    return OutputData<X>(
      resources: resources,
      value: value,
      isKnown: isKnown,
      isSecret: isSecret,
    );
  }

  static (bool, bool) combine<X>(
      OutputData<X> data, bool isKnown, bool isSecret) {
    return (isKnown && data.isKnown, isSecret || data.isSecret);
  }
}

import 'dart:async';
import 'dart:convert';

import 'input.dart';
import 'output.dart';
import 'resource/resource.dart';

Output<dynamic> output(dynamic value) {
  return Output<dynamic>(_resolveOutputData(value));
}

Output<dynamic> secret(dynamic value) {
  return Output<dynamic>(
    _resolveOutputData(value).then(
      (data) => OutputData<dynamic>(
        value: data.value,
        isKnown: data.isKnown,
        isSecret: true,
        resources: data.resources,
      ),
    ),
  );
}

Output<T> unsecret<T>(Output<T> value) => Output.unsecret(value);

Output<String> jsonStringify(dynamic value) {
  return output(value).apply((resolved) => jsonEncode(resolved));
}

Output<dynamic> jsonParse(dynamic value) {
  return output(value).apply((resolved) => jsonDecode(resolved as String));
}

(Output<T>, void Function(Output<T>)) deferredOutput<T>() {
  final completer = Completer<OutputData<T>>();
  final result = Output<T>(completer.future);

  void resolve(Output<T> source) {
    source.getData().then(
      (data) {
        if (!completer.isCompleted) {
          completer.complete(data);
        }
      },
      onError: (error, stackTrace) {
        if (!completer.isCompleted) {
          completer.completeError(error, stackTrace);
        }
      },
    );
  }

  return (result, resolve);
}

Future<OutputData<dynamic>> _resolveOutputData(dynamic value) async {
  if (value is Output) {
    return value.getData();
  }

  if (value is Input) {
    return value.toOutput().getData();
  }

  if (value is Future) {
    final resolved = await value;
    return _resolveOutputData(resolved);
  }

  if (value is Map) {
    final resources = <Resource>{};
    var isKnown = true;
    var isSecret = false;
    final result = <String, dynamic>{};

    for (final entry in value.entries) {
      final keyData = await _resolveOutputData(entry.key);
      final valueData = await _resolveOutputData(entry.value);

      isKnown = isKnown && keyData.isKnown && valueData.isKnown;
      isSecret = isSecret || keyData.isSecret || valueData.isSecret;
      resources.addAll(keyData.resources);
      resources.addAll(valueData.resources);

      if (keyData.isKnown && valueData.isKnown) {
        result[keyData.value.toString()] = valueData.value;
      }
    }

    if (!isKnown) {
      return OutputData<dynamic>(
        value: null,
        isKnown: false,
        isSecret: isSecret,
        resources: resources,
      );
    }

    return OutputData<dynamic>(
      value: result,
      isKnown: true,
      isSecret: isSecret,
      resources: resources,
    );
  }

  if (value is Iterable) {
    final resources = <Resource>{};
    var isKnown = true;
    var isSecret = false;
    final result = <dynamic>[];

    for (final item in value) {
      final data = await _resolveOutputData(item);
      isKnown = isKnown && data.isKnown;
      isSecret = isSecret || data.isSecret;
      resources.addAll(data.resources);
      if (data.isKnown) {
        result.add(data.value);
      }
    }

    if (!isKnown) {
      return OutputData<dynamic>(
        value: null,
        isKnown: false,
        isSecret: isSecret,
        resources: resources,
      );
    }

    return OutputData<dynamic>(
      value: result,
      isKnown: true,
      isSecret: isSecret,
      resources: resources,
    );
  }

  return OutputData<dynamic>(
    value: value,
    isKnown: true,
    isSecret: false,
    resources: const {},
  );
}

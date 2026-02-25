library sample_sdk;

import 'package:pulumi/pulumi.dart';

import 'dart:convert';

import 'package:pulumi/src/deployment/models.dart' as deployment_models;

Inputs _mapToInputs(Map<String, dynamic> args) {
  final mapped = <String, Input<dynamic>>{};
  for (final entry in args.entries) {
    final value = entry.value;
    if (value is Input<dynamic>) {
      mapped[entry.key] = value;
    } else {
      mapped[entry.key] = Input.fromValue(value);
    }
  }
  return mapped;
}

Input<T> _asInput<T>(dynamic value) {
  if (value is Input<T>) {
    return value;
  }
  return Input.fromValue(value as T);
}

Input<T>? _asOptionalInput<T>(dynamic value) {
  if (value == null) {
    return null;
  }
  if (value is Input<T>) {
    return value;
  }
  return Input.fromValue(value as T);
}

Input<U> _mapInputValue<T, U>(Input<T> input, U Function(T value) mapper) {
  return Input.fromOutput(input.toOutput().apply((value) => mapper(value as T)));
}

Input<U>? _mapOptionalInputValue<T, U>(Input<T>? input, U Function(T value) mapper) {
  if (input == null) {
    return null;
  }
  return _mapInputValue<T, U>(input, mapper);
}

Output<T> _unknownOutput<T>() {
  return Output.createUnknown<T>();
}

deployment_models.InvokeOptions? _toDeploymentInvokeOptions(InvokeOptions? options) {
  if (options == null) {
    return null;
  }

  return deployment_models.InvokeOptions(
    parent: options.parent,
    provider: options.provider,
    version: options.version,
    pluginDownloadURL: options.pluginDownloadURL,
  );
}

enum WidgetMode {
  readOnly("read-only"),
  readWrite("read-write");

  const WidgetMode(this.value);
  final String value;

  static WidgetMode fromValue(String value) {
    for (final item in WidgetMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WidgetMode value: $value');
  }
}

class GetWidgetDetailsArgs {
  final Input<String> id;

  GetWidgetDetailsArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory GetWidgetDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetWidgetDetailsArgs(
      id: _asInput<String>(map['id']),
    );
  }
}

class GetWidgetDetailsResult {
  final WidgetMetadata metadata;
  final WidgetMode mode;

  GetWidgetDetailsResult({
    required this.metadata,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadata'] = metadata.toMap();
    map['mode'] = mode.value;
    return map;
  }

  factory GetWidgetDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetWidgetDetailsResult(
      metadata: WidgetMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      mode: WidgetMode.fromValue(map['mode'] as String),
    );
  }
}

class WidgetArgs {
  final Input<WidgetMetadata>? metadata;
  final Input<WidgetMode> mode;

  WidgetArgs({
    this.metadata,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    if (metadata != null) {
      map['metadata'] = _mapOptionalInputValue<WidgetMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap());
    }
    map['mode'] = _mapInputValue<WidgetMode, String>(mode, (value) => value.value);
    return map;
  }

  factory WidgetArgs.fromMap(Map<String, dynamic> map) {
    return WidgetArgs(
      metadata: _asOptionalInput<WidgetMetadata>(map['metadata']),
      mode: _asInput<WidgetMode>(map['mode']),
    );
  }
}

class WidgetMetadata {
  final WidgetMode mode;
  final String owner;

  WidgetMetadata({
    required this.mode,
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode.value;
    map['owner'] = owner;
    return map;
  }

  factory WidgetMetadata.fromMap(Map<String, dynamic> map) {
    return WidgetMetadata(
      mode: WidgetMode.fromValue(map['mode'] as String),
      owner: map['owner'] as String,
    );
  }
}

int? _parseIntConfig(String? value) {
  if (value == null) {
    return null;
  }
  return int.tryParse(value);
}

bool? _parseBoolConfig(String? value) {
  if (value == null) {
    return null;
  }

  switch (value.toLowerCase()) {
    case 'true':
    case '1':
      return true;
    case 'false':
    case '0':
      return false;
    default:
      return null;
  }
}

class SampleConfig {
  const SampleConfig();

  String? _raw(String key) {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    return deployment.isConfigSecret(key);
  }

  bool? get enabled {
    final raw = _raw('enabled');
    return _parseBoolConfig(raw);
  }

  bool get enabledIsSecret => _isSecret('enabled');

  WidgetMetadata? get metadata {
    final raw = _raw('metadata');
    return raw == null ? null : WidgetMetadata.fromMap((jsonDecode(raw) as Map).cast<String, dynamic>());
  }

  bool get metadataIsSecret => _isSecret('metadata');

  WidgetMode? get mode {
    final raw = _raw('mode');
    return raw == null ? null : WidgetMode.fromValue(raw as String);
  }

  WidgetMode requireMode() {
    final value = mode;
    if (value == null) {
      throw ArgumentError("Missing required config value 'mode'.");
    }
    return value;
  }

  bool get modeIsSecret => _isSecret('mode');

  String? get region {
    final raw = _raw('region');
    return raw;
  }

  String requireRegion() {
    final value = region;
    if (value == null) {
      throw ArgumentError("Missing required config value 'region'.");
    }
    return value;
  }

  bool get regionIsSecret => _isSecret('region');

  int? get replicas {
    final raw = _raw('replicas');
    return _parseIntConfig(raw);
  }

  bool get replicasIsSecret => _isSecret('replicas');

}

final config = SampleConfig();

class Widget extends CustomResource {
  late final Output<String> arn;
  late final Output<WidgetMode> mode;

  Widget(
    String name, {
    WidgetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'sample:index:Widget',
          name,
          _mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = _unknownOutput<String>();
    this.mode = _unknownOutput<WidgetMode>();
  }
}

Future<GetWidgetDetailsResult> getWidgetDetails(
  GetWidgetDetailsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = DeploymentImpl.instance as DeploymentImpl;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'sample:index:getWidgetDetails',
    args.toMap(),
    options: _toDeploymentInvokeOptions(options),
  );
  return GetWidgetDetailsResult.fromMap(result);
}


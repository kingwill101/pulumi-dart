// FILE: config/config.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart';
import '../types/widget_metadata.dart';
import '../types/widget_mode.dart';

int? _parseIntConfig(String? value) {
  if (value == null) {
    return null;
  }
  return int.tryParse(value);
}

double? _parseDoubleConfig(String? value) {
  if (value == null) {
    return null;
  }
  return double.tryParse(value);
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

List<T> _decodeList<T>(dynamic value, T Function(dynamic value) decoder) {
  return (value as List).map((item) => decoder(item)).toList(growable: false);
}

Map<String, T> _decodeMapValues<T>(dynamic value, T Function(dynamic value) decoder) {
  final map = (value as Map).cast<String, dynamic>();
  return map.map((key, item) => MapEntry(key, decoder(item)));
}

/// Configuration values for the sample package.
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


// FILE: functions/get_widget_details.dart
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/deployment/models.dart' as deployment_models;
import '../types/get_widget_details_args.dart';
import '../types/get_widget_details_result.dart';

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

// FILE: resources/widget.dart
import 'package:pulumi/pulumi.dart';
import '../types/widget_args.dart';
import '../types/widget_mode.dart';

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

Output<T> _unknownOutput<T>() {
  return Output.createUnknown<T>();
}

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

// FILE: sdk.dart
library sample_sdk;

export 'types/get_widget_details_args.dart';
export 'types/get_widget_details_result.dart';
export 'types/widget_args.dart';
export 'types/widget_metadata.dart';
export 'types/widget_mode.dart';
export 'config/config.dart';
export 'resources/widget.dart';
export 'functions/get_widget_details.dart';

// FILE: types/get_widget_details_args.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

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

List<T> _decodeList<T>(dynamic value, T Function(dynamic value) decoder) {
  return (value as List).map((item) => decoder(item)).toList(growable: false);
}

Map<String, T> _decodeMapValues<T>(dynamic value, T Function(dynamic value) decoder) {
  final map = (value as Map).cast<String, dynamic>();
  return map.map((key, item) => MapEntry(key, decoder(item)));
}

List<U> _encodeList<T, U>(List<T> value, U Function(T value) encoder) {
  return value.map((item) => encoder(item)).toList(growable: false);
}

Map<String, U> _encodeMapValues<T, U>(Map<String, T> value, U Function(T value) encoder) {
  return value.map((key, item) => MapEntry(key, encoder(item)));
}

/// Arguments for getWidgetDetails.
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


// FILE: types/get_widget_details_result.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'widget_metadata.dart';
import 'widget_mode.dart';

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

List<T> _decodeList<T>(dynamic value, T Function(dynamic value) decoder) {
  return (value as List).map((item) => decoder(item)).toList(growable: false);
}

Map<String, T> _decodeMapValues<T>(dynamic value, T Function(dynamic value) decoder) {
  final map = (value as Map).cast<String, dynamic>();
  return map.map((key, item) => MapEntry(key, decoder(item)));
}

List<U> _encodeList<T, U>(List<T> value, U Function(T value) encoder) {
  return value.map((item) => encoder(item)).toList(growable: false);
}

Map<String, U> _encodeMapValues<T, U>(Map<String, T> value, U Function(T value) encoder) {
  return value.map((key, item) => MapEntry(key, encoder(item)));
}

/// Result data returned by getWidgetDetails.
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


// FILE: types/widget_args.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'widget_metadata.dart';
import 'widget_mode.dart';

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

List<T> _decodeList<T>(dynamic value, T Function(dynamic value) decoder) {
  return (value as List).map((item) => decoder(item)).toList(growable: false);
}

Map<String, T> _decodeMapValues<T>(dynamic value, T Function(dynamic value) decoder) {
  final map = (value as Map).cast<String, dynamic>();
  return map.map((key, item) => MapEntry(key, decoder(item)));
}

List<U> _encodeList<T, U>(List<T> value, U Function(T value) encoder) {
  return value.map((item) => encoder(item)).toList(growable: false);
}

Map<String, U> _encodeMapValues<T, U>(Map<String, T> value, U Function(T value) encoder) {
  return value.map((key, item) => MapEntry(key, encoder(item)));
}

/// The set of arguments for Widget.
class WidgetArgs {
  final Input<WidgetMetadata>? metadata;
  final Input<WidgetMode> mode;

  WidgetArgs({
    this.metadata,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = _mapOptionalInputValue<WidgetMetadata, Map<String, dynamic>>(metadataValue, (value) => value.toMap());
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


// FILE: types/widget_metadata.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'widget_mode.dart';

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

List<T> _decodeList<T>(dynamic value, T Function(dynamic value) decoder) {
  return (value as List).map((item) => decoder(item)).toList(growable: false);
}

Map<String, T> _decodeMapValues<T>(dynamic value, T Function(dynamic value) decoder) {
  final map = (value as Map).cast<String, dynamic>();
  return map.map((key, item) => MapEntry(key, decoder(item)));
}

List<U> _encodeList<T, U>(List<T> value, U Function(T value) encoder) {
  return value.map((item) => encoder(item)).toList(growable: false);
}

Map<String, U> _encodeMapValues<T, U>(Map<String, T> value, U Function(T value) encoder) {
  return value.map((key, item) => MapEntry(key, encoder(item)));
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


// FILE: types/widget_mode.dart
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



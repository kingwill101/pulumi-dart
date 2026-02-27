// FILE: config/config.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' hide Config;
import '../index/widget_metadata.dart';
import '../index/widget_mode.dart';

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

/// Configuration values for the sample package.
class SampleConfig {
  const SampleConfig();

  String? _raw(String key) {
    final deployment = Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = Deployment.instance;
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


// FILE: index.dart
library module_index;

export 'index/get_widget_details.dart';
export 'index/get_widget_details_args.dart';
export 'index/get_widget_details_result.dart';
export 'index/widget.dart';
export 'index/widget_args.dart';
export 'index/widget_metadata.dart';
export 'index/widget_mode.dart';

// FILE: index/get_widget_details.dart
import 'package:pulumi/pulumi.dart' hide Config;
import 'get_widget_details_args.dart';
import 'get_widget_details_result.dart';

Future<GetWidgetDetailsResult> getWidgetDetails(
  GetWidgetDetailsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'sample:index:getWidgetDetails',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWidgetDetailsResult.fromMap(result);
}

// FILE: index/get_widget_details_args.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

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
      id: Input.asInput<String>(map['id']),
    );
  }
}


// FILE: index/get_widget_details_result.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'widget_metadata.dart';
import 'widget_mode.dart';

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


// FILE: index/widget.dart
import 'package:pulumi/pulumi.dart' hide Config;
import 'widget_args.dart';
import 'widget_mode.dart';

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
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.mode = registerOutput<WidgetMode>('mode');
  }
}

// FILE: index/widget_args.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'widget_metadata.dart';
import 'widget_mode.dart';

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
      map['metadata'] = Input.mapOptionalInputValue<WidgetMetadata, Map<String, dynamic>>(metadataValue, (value) => value.toMap());
    }
    map['mode'] = Input.mapInputValue<WidgetMode, String>(mode, (value) => value.value);
    return map;
  }

  factory WidgetArgs.fromMap(Map<String, dynamic> map) {
    return WidgetArgs(
      metadata: Input.asOptionalInput<WidgetMetadata>(map['metadata']),
      mode: Input.asInput<WidgetMode>(map['mode']),
    );
  }
}


// FILE: index/widget_metadata.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'widget_mode.dart';

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


// FILE: index/widget_mode.dart
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


// FILE: sdk.dart
library pulumi_sample_sdk;

export 'index/get_widget_details_args.dart';
export 'index/get_widget_details_result.dart';
export 'index/widget_args.dart';
export 'index/widget_metadata.dart';
export 'index/widget_mode.dart';
export 'config/config.dart';
export 'index/widget.dart';
export 'index/get_widget_details.dart';


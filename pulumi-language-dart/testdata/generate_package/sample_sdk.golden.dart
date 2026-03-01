// FILE: config/config.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/widget_metadata.dart';
import '../index/widget_mode.dart';

/// Configuration values for the sample package.
class SampleConfig {
  const SampleConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  bool? get enabled {
    final raw = _raw('enabled');
    return (raw).toBool();
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
    return (raw).toInt();
  }

  bool get replicasIsSecret => _isSecret('replicas');

}

final config = SampleConfig();


// FILE: index.dart
library module_index;

export 'index/functions.dart';
export 'index/get_widget_details_args.dart';
export 'index/get_widget_details_result.dart';
export 'index/widget.dart';
export 'index/widget_args.dart';
export 'index/widget_metadata.dart';
export 'index/widget_mode.dart';

// FILE: index/functions.dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_widget_details_args.dart';
import 'get_widget_details_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_widget_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWidgetDetailsResult> getWidgetDetails(
  GetWidgetDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'sample:index:getWidgetDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWidgetDetailsResult.fromMap(result);
}

// FILE: index/get_widget_details_args.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_widget_details_args_doc}
/// Arguments for getWidgetDetails.
/// {@endtemplate}
/// {@macro pulumi_index_get_widget_details_args_doc}
class GetWidgetDetailsArgs {
  final pulumi.Input<String> id;

  /// Creates a new [GetWidgetDetailsArgs].
  /// [id] Required.
  GetWidgetDetailsArgs({
    required String id,
  }) :
      id = pulumi.Input.asInput<String>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetWidgetDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetWidgetDetailsArgs(
      id: map['id'] as String,
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

  /// Creates a new [GetWidgetDetailsResult].
  /// [metadata] Required.
  /// [mode] Required.
  GetWidgetDetailsResult({
    required this.metadata,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': metadata.toMap(),
      'mode': mode.value,
    };
  }

  factory GetWidgetDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetWidgetDetailsResult(
      metadata: WidgetMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      mode: WidgetMode.fromValue(map['mode'] as String),
    );
  }
}


// FILE: index/widget.dart
import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_args.dart';
import 'widget_mode.dart';

class Widget extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  late final pulumi.Output<WidgetMode> mode;

  /// Creates a new [Widget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Widget]. {@macro pulumi_index_widget_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Widget(
    String name, {
    WidgetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'sample:index:Widget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.mode = registerOutput<WidgetMode>('mode');
  }
}

// FILE: index/widget_args.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_metadata.dart';
import 'widget_mode.dart';

/// {@template pulumi_index_widget_args_doc}
/// The set of arguments for Widget.
/// {@endtemplate}
/// {@macro pulumi_index_widget_args_doc}
class WidgetArgs {
  final pulumi.Input<WidgetMetadata>? metadata;
  final pulumi.Input<WidgetMode> mode;

  /// Creates a new [WidgetArgs].
  /// [metadata] Optional.
  /// [mode] Required.
  WidgetArgs({
    WidgetMetadata? metadata,
    required WidgetMode mode,
  }) :
      metadata = pulumi.Input.asOptionalInput<WidgetMetadata>(metadata),
      mode = pulumi.Input.asInput<WidgetMode>(mode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?pulumi.Input.mapOptionalInputValue<WidgetMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'mode': pulumi.Input.mapInputValue<WidgetMode, String>(mode, (value) => value.value),
    };
  }

  factory WidgetArgs.fromMap(Map<String, dynamic> map) {
    return WidgetArgs(
      metadata: map['metadata'] == null ? null : WidgetMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      mode: WidgetMode.fromValue(map['mode'] as String),
    );
  }
}


// FILE: index/widget_metadata.dart
// ignore_for_file: unused_element, unnecessary_cast

import 'widget_mode.dart';

class WidgetMetadata {
  final WidgetMode mode;
  final String owner;

  /// Creates a new [WidgetMetadata].
  /// [mode] Required.
  /// [owner] Required.
  WidgetMetadata({
    required this.mode,
    required this.owner,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode.value,
      'owner': owner,
    };
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


// FILE: providers.dart
library module_providers;

export 'providers/provider_provider.dart';

// FILE: providers/provider_provider.dart
import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderProvider extends pulumi.ProviderResource {
  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    pulumi.CustomResourceOptions? options,
  }) : super(
          'sample',
          name,
          const <String, dynamic>{},
          options ?? pulumi.CustomResourceOptions(),
        );
}


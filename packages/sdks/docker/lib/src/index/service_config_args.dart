// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_config_label.dart';

/// {@template pulumi_index_service_config_service_config_args_doc}
/// The set of arguments for ServiceConfig.
/// {@endtemplate}
/// {@macro pulumi_index_service_config_service_config_args_doc}
class ServiceConfigArgs {
  /// Base64-url-safe-encoded config data
  final pulumi.Input<String>? data;
  /// Raw (plain text) config data
  final pulumi.Input<String>? dataRaw;
  /// User-defined key/value metadata
  final pulumi.Input<List<ServiceConfigLabel>>? labels;
  /// User-defined name of the config
  final pulumi.Input<String>? name;

  /// Creates a new [ServiceConfigArgs].
  /// [data] Base64-url-safe-encoded config data
  /// [dataRaw] Raw (plain text) config data
  /// [labels] User-defined key/value metadata
  /// [name] User-defined name of the config
  const ServiceConfigArgs({
    this.data,
    this.dataRaw,
    this.labels,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'dataRaw': ?dataRaw,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<ServiceConfigLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<ServiceConfigLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory ServiceConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConfigArgs(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataRaw: (() { final guardedValue = map['dataRaw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceConfigLabel>(guardedValue, (value) => ServiceConfigLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

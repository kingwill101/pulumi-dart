// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_service_config_service_config_args_doc}
/// The set of arguments for ServiceConfig.
/// {@endtemplate}
/// {@macro pulumi_index_service_config_service_config_args_doc}
class ServiceConfigArgs {
  /// Base64-url-safe-encoded config data
  final pulumi.Input<String> data;
  /// User-defined name of the config
  final pulumi.Input<String>? name;

  /// Creates a new [ServiceConfigArgs].
  /// [data] Base64-url-safe-encoded config data
  /// [name] User-defined name of the config
  ServiceConfigArgs({
    required this.data,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'name': ?name,
    };
  }

  factory ServiceConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConfigArgs(
      data: (map['data'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}


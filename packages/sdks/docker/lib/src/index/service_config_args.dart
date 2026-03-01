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
    required pulumi.Output<String> data,
    pulumi.Output<String>? name,
  }) :
      data = pulumi.Input.asInput<String>(data),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'name': ?name,
    };
  }

  factory ServiceConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConfigArgs(
      data: pulumi.Output.create<String>(map['data'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


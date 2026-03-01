// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicemanagement_v1_get_config_args_doc}
/// Arguments for getConfig.
/// {@endtemplate}
/// {@macro pulumi_servicemanagement_v1_get_config_args_doc}
class GetConfigArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<String> serviceName;
  final pulumi.Input<String>? view;

  /// Creates a new [GetConfigArgs].
  /// [configId] Required.
  /// [serviceName] Required.
  /// [view] Optional.
  GetConfigArgs({
    required pulumi.Output<String> configId,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? view,
  }) :
      configId = pulumi.Input.asInput<String>(configId),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'serviceName': serviceName,
      'view': ?view,
    };
  }

  factory GetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs(
      configId: pulumi.Output.create<String>(map['configId'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}


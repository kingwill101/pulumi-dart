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
  GetConfigArgs({required this.configId, required this.serviceName, this.view});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'serviceName': serviceName,
      'view': ?view,
    };
  }

  factory GetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigArgs(
      configId: pulumi.Input.fromValue(map['configId'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      view: (() {
        final guardedValue = map['view'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

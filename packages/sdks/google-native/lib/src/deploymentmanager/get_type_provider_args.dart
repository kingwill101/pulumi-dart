// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deploymentmanager_alpha_get_type_provider_args_doc}
/// Arguments for getTypeProvider.
/// {@endtemplate}
/// {@macro pulumi_deploymentmanager_alpha_get_type_provider_args_doc}
class GetTypeProviderArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> typeProvider;

  /// Creates a new [GetTypeProviderArgs].
  /// [project] Optional.
  /// [typeProvider] Required.
  const GetTypeProviderArgs({
    this.project,
    required this.typeProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'typeProvider': typeProvider,
    };
  }

  factory GetTypeProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetTypeProviderArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeProvider: pulumi.Input.fromValue(map['typeProvider'] as String),
    );
  }
}

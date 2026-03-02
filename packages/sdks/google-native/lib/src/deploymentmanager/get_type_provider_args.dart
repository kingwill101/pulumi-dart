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
  GetTypeProviderArgs({
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
      project: map['project'] == null ? null : (map['project']! as String).input(),
      typeProvider: (map['typeProvider'] as String).input(),
    );
  }
}


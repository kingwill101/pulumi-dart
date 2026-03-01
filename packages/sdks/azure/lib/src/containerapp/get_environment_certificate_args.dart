// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerapp_get_environment_certificate_get_environment_certificate_args_doc}
/// Arguments for getEnvironmentCertificate.
/// {@endtemplate}
/// {@macro pulumi_containerapp_get_environment_certificate_get_environment_certificate_args_doc}
class GetEnvironmentCertificateArgs {
  /// The ID of the Container App Environment to configure this Certificate on. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerAppEnvironmentId;
  /// The name of the Container Apps Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;

  /// Creates a new [GetEnvironmentCertificateArgs].
  /// [containerAppEnvironmentId] The ID of the Container App Environment to configure this Certificate on. Changing this forces a new resource to be created.
  /// [name] The name of the Container Apps Certificate. Changing this forces a new resource to be created.
  GetEnvironmentCertificateArgs({
    required pulumi.Output<String> containerAppEnvironmentId,
    required pulumi.Output<String> name,
  }) :
      containerAppEnvironmentId = pulumi.Input.asInput<String>(containerAppEnvironmentId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'name': name,
    };
  }

  factory GetEnvironmentCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentCertificateArgs(
      containerAppEnvironmentId: pulumi.Output.create<String>(map['containerAppEnvironmentId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


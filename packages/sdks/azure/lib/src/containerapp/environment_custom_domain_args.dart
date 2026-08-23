// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerapp_environment_custom_domain_environment_custom_domain_args_doc}
/// The set of arguments for EnvironmentCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_containerapp_environment_custom_domain_environment_custom_domain_args_doc}
class EnvironmentCustomDomainArgs {
  /// The bundle of Private Key and Certificate for the Custom DNS Suffix as a base64 encoded PFX or PEM.
  final pulumi.Input<String> certificateBlobBase64;
  /// The password for the Certificate bundle.
  final pulumi.Input<String> certificatePassword;
  /// The ID of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerAppEnvironmentId;
  /// Custom DNS Suffix for the Container App Environment.
  final pulumi.Input<String> dnsSuffix;

  /// Creates a new [EnvironmentCustomDomainArgs].
  /// [certificateBlobBase64] The bundle of Private Key and Certificate for the Custom DNS Suffix as a base64 encoded PFX or PEM.
  /// [certificatePassword] The password for the Certificate bundle.
  /// [containerAppEnvironmentId] The ID of the Container Apps Managed Environment. Changing this forces a new resource to be created.
  /// [dnsSuffix] Custom DNS Suffix for the Container App Environment.
  const EnvironmentCustomDomainArgs({
    required this.certificateBlobBase64,
    required this.certificatePassword,
    required this.containerAppEnvironmentId,
    required this.dnsSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBlobBase64': certificateBlobBase64,
      'certificatePassword': certificatePassword,
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'dnsSuffix': dnsSuffix,
    };
  }

  factory EnvironmentCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentCustomDomainArgs(
      certificateBlobBase64: pulumi.Input.fromValue(map['certificateBlobBase64'] as String),
      certificatePassword: pulumi.Input.fromValue(map['certificatePassword'] as String),
      containerAppEnvironmentId: pulumi.Input.fromValue(map['containerAppEnvironmentId'] as String),
      dnsSuffix: pulumi.Input.fromValue(map['dnsSuffix'] as String),
    );
  }
}

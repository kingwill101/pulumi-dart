// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_app_service_environment_ase_custom_dns_suffix_configuration_args_doc}
/// The set of arguments for AppServiceEnvironmentAseCustomDnsSuffixConfiguration.
/// {@endtemplate}
/// {@macro pulumi_web_app_service_environment_ase_custom_dns_suffix_configuration_args_doc}
class AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs {
  /// The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  final pulumi.Input<String?>? certificateUrl;
  /// The default custom domain suffix to use for all sites deployed on the ASE.
  final pulumi.Input<String?>? dnsSuffix;
  /// The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  final pulumi.Input<String?>? keyVaultReferenceIdentity;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Name of the App Service Environment.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs].
  /// [certificateUrl] The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  /// [dnsSuffix] The default custom domain suffix to use for all sites deployed on the ASE.
  /// [keyVaultReferenceIdentity] The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  /// [kind] Kind of resource.
  /// [name] Name of the App Service Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs({
    this.certificateUrl,
    this.dnsSuffix,
    this.keyVaultReferenceIdentity,
    this.kind,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateUrl': ?certificateUrl,
      'dnsSuffix': ?dnsSuffix,
      'keyVaultReferenceIdentity': ?keyVaultReferenceIdentity,
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs(
      certificateUrl: (() { final guardedValue = map['certificateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultReferenceIdentity: (() { final guardedValue = map['keyVaultReferenceIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

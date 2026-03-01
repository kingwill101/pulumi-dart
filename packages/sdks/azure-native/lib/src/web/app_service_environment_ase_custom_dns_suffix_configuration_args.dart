// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_app_service_environment_ase_custom_dns_suffix_configuration_args_doc}
/// The set of arguments for AppServiceEnvironmentAseCustomDnsSuffixConfiguration.
/// {@endtemplate}
/// {@macro pulumi_web_app_service_environment_ase_custom_dns_suffix_configuration_args_doc}
class AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs {
  /// The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  final pulumi.Input<String>? certificateUrl;
  /// The default custom domain suffix to use for all sites deployed on the ASE.
  final pulumi.Input<String>? dnsSuffix;
  /// The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  final pulumi.Input<String>? keyVaultReferenceIdentity;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the App Service Environment.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs].
  /// [certificateUrl] The URL referencing the Azure Key Vault certificate secret that should be used as the default SSL/TLS certificate for sites with the custom domain suffix.
  /// [dnsSuffix] The default custom domain suffix to use for all sites deployed on the ASE.
  /// [keyVaultReferenceIdentity] The user-assigned identity to use for resolving the key vault certificate reference. If not specified, the system-assigned ASE identity will be used if available.
  /// [kind] Kind of resource.
  /// [name] Name of the App Service Environment.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  AppServiceEnvironmentAseCustomDnsSuffixConfigurationArgs({
    pulumi.Output<String>? certificateUrl,
    pulumi.Output<String>? dnsSuffix,
    pulumi.Output<String>? keyVaultReferenceIdentity,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      certificateUrl = pulumi.Input.asOptionalInput<String>(certificateUrl),
      dnsSuffix = pulumi.Input.asOptionalInput<String>(dnsSuffix),
      keyVaultReferenceIdentity = pulumi.Input.asOptionalInput<String>(keyVaultReferenceIdentity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      certificateUrl: map['certificateUrl'] == null ? null : pulumi.Output.create<String>(map['certificateUrl'] as String),
      dnsSuffix: map['dnsSuffix'] == null ? null : pulumi.Output.create<String>(map['dnsSuffix'] as String),
      keyVaultReferenceIdentity: map['keyVaultReferenceIdentity'] == null ? null : pulumi.Output.create<String>(map['keyVaultReferenceIdentity'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}


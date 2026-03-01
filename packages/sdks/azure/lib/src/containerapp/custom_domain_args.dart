// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerapp_custom_domain_custom_domain_args_doc}
/// The set of arguments for CustomDomain.
/// {@endtemplate}
/// {@macro pulumi_containerapp_custom_domain_custom_domain_args_doc}
class CustomDomainArgs {
  /// The Certificate Binding type. Possible values are `Auto`, `Disabled` and `SniEnabled`. Required with `container_app_environment_certificate_id`. Changing this forces a new resource to be created.
  ///
  /// !> **Note:** If using an Azure Managed Certificate `container_app_environment_certificate_id` and `certificate_binding_type` should be added to `ignore_changes` to prevent resource recreation due to these values being modified asynchronously outside of Terraform.
  final pulumi.Input<String>? certificateBindingType;
  /// The ID of the Container App Environment Certificate to use. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Omit this value if you wish to use an Azure Managed certificate. You must create the relevant DNS verification steps before this process will be successful.
  final pulumi.Input<String>? containerAppEnvironmentCertificateId;
  /// The ID of the Container App to which this Custom Domain should be bound. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerAppId;
  /// The fully qualified name of the Custom Domain. Must be the CN or a named SAN in the certificate specified by the `container_app_environment_certificate_id`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Custom Domain verification TXT record requires a prefix of `asuid.`, however, this must be trimmed from the `name` property here. See the [official docs](https://learn.microsoft.com/en-us/azure/container-apps/custom-domains-certificates) for more information.
  final pulumi.Input<String>? name;

  /// Creates a new [CustomDomainArgs].
  /// [certificateBindingType] The Certificate Binding type. Possible values are `Auto`, `Disabled` and `SniEnabled`. Required with `container_app_environment_certificate_id`. Changing this forces a new resource to be created.
  /// [containerAppEnvironmentCertificateId] The ID of the Container App Environment Certificate to use. Changing this forces a new resource to be created.
  /// [containerAppId] The ID of the Container App to which this Custom Domain should be bound. Changing this forces a new resource to be created.
  /// [name] The fully qualified name of the Custom Domain. Must be the CN or a named SAN in the certificate specified by the `container_app_environment_certificate_id`. Changing this forces a new resource to be created.
  CustomDomainArgs({
    pulumi.Output<String>? certificateBindingType,
    pulumi.Output<String>? containerAppEnvironmentCertificateId,
    required pulumi.Output<String> containerAppId,
    pulumi.Output<String>? name,
  }) :
      certificateBindingType = pulumi.Input.asOptionalInput<String>(certificateBindingType),
      containerAppEnvironmentCertificateId = pulumi.Input.asOptionalInput<String>(containerAppEnvironmentCertificateId),
      containerAppId = pulumi.Input.asInput<String>(containerAppId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBindingType': ?certificateBindingType,
      'containerAppEnvironmentCertificateId': ?containerAppEnvironmentCertificateId,
      'containerAppId': containerAppId,
      'name': ?name,
    };
  }

  factory CustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return CustomDomainArgs(
      certificateBindingType: map['certificateBindingType'] == null ? null : pulumi.Output.create<String>(map['certificateBindingType'] as String),
      containerAppEnvironmentCertificateId: map['containerAppEnvironmentCertificateId'] == null ? null : pulumi.Output.create<String>(map['containerAppEnvironmentCertificateId'] as String),
      containerAppId: pulumi.Output.create<String>(map['containerAppId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


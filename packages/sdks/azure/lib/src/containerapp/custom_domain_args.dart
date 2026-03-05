// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerapp_custom_domain_custom_domain_args_doc}
/// The set of arguments for CustomDomain.
/// {@endtemplate}
/// {@macro pulumi_containerapp_custom_domain_custom_domain_args_doc}
class CustomDomainArgs {
  /// The Certificate Binding type. Possible values are `Auto`, `Disabled` and `SniEnabled`. Required with `container_app_environment_certificate_id`. Changing this forces a new resource to be created.
  ///
  /// !&gt; **Note:** If using an Azure Managed Certificate `container_app_environment_certificate_id` and `certificate_binding_type` should be added to `ignore_changes` to prevent resource recreation due to these values being modified asynchronously outside of Terraform.
  final pulumi.Input<String>? certificateBindingType;
  /// The ID of the Container App Environment Certificate to use. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Omit this value if you wish to use an Azure Managed certificate. You must create the relevant DNS verification steps before this process will be successful.
  final pulumi.Input<String>? containerAppEnvironmentCertificateId;
  /// The ID of the Container App to which this Custom Domain should be bound. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerAppId;
  /// The fully qualified name of the Custom Domain. Must be the CN or a named SAN in the certificate specified by the `container_app_environment_certificate_id`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Custom Domain verification TXT record requires a prefix of `asuid.`, however, this must be trimmed from the `name` property here. See the [official docs](https://learn.microsoft.com/en-us/azure/container-apps/custom-domains-certificates) for more information.
  final pulumi.Input<String>? name;

  /// Creates a new [CustomDomainArgs].
  /// [certificateBindingType] The Certificate Binding type. Possible values are `Auto`, `Disabled` and `SniEnabled`. Required with `container_app_environment_certificate_id`. Changing this forces a new resource to be created.
  /// [containerAppEnvironmentCertificateId] The ID of the Container App Environment Certificate to use. Changing this forces a new resource to be created.
  /// [containerAppId] The ID of the Container App to which this Custom Domain should be bound. Changing this forces a new resource to be created.
  /// [name] The fully qualified name of the Custom Domain. Must be the CN or a named SAN in the certificate specified by the `container_app_environment_certificate_id`. Changing this forces a new resource to be created.
  CustomDomainArgs({
    this.certificateBindingType,
    this.containerAppEnvironmentCertificateId,
    required this.containerAppId,
    this.name,
  });

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
      certificateBindingType: (() { final guardedValue = map['certificateBindingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerAppEnvironmentCertificateId: (() { final guardedValue = map['containerAppEnvironmentCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerAppId: pulumi.Input.fromValue(map['containerAppId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


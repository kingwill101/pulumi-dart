// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomDomain resources.
class CustomDomainState {
  /// The Certificate Binding type. Possible values are `Auto`, `Disabled` and `SniEnabled`. Required with `containerAppEnvironmentCertificateId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If using an Azure Managed Certificate `containerAppEnvironmentCertificateId` and `certificateBindingType` should be added to `ignoreChanges` to prevent resource recreation due to these values being modified asynchronously outside of Terraform.
  final pulumi.Input<String?>? certificateBindingType;
  /// The ID of the Container App Environment Certificate to use. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Omit this value if you wish to use an Azure Managed certificate. You must create the relevant DNS verification steps before this process will be successful.
  final pulumi.Input<String?>? containerAppEnvironmentCertificateId;
  /// The ID of the Container App Environment Managed Certificate to use.
  final pulumi.Input<String?>? containerAppEnvironmentManagedCertificateId;
  /// The ID of the Container App to which this Custom Domain should be bound. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? containerAppId;
  /// The fully qualified name of the Custom Domain. Must be the CN or a named SAN in the certificate specified by the `containerAppEnvironmentCertificateId`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Custom Domain verification TXT record requires a prefix of `asuid.`, however, this must be trimmed from the `name` property here. See the [official docs](https://learn.microsoft.com/en-us/azure/container-apps/custom-domains-certificates) for more information.
  final pulumi.Input<String?>? name;

  /// Creates a new [CustomDomainState].
  /// [certificateBindingType] The Certificate Binding type. Possible values are `Auto`, `Disabled` and `SniEnabled`. Required with `containerAppEnvironmentCertificateId`. Changing this forces a new resource to be created.
  /// [containerAppEnvironmentCertificateId] The ID of the Container App Environment Certificate to use. Changing this forces a new resource to be created.
  /// [containerAppEnvironmentManagedCertificateId] The ID of the Container App Environment Managed Certificate to use.
  /// [containerAppId] The ID of the Container App to which this Custom Domain should be bound. Changing this forces a new resource to be created.
  /// [name] The fully qualified name of the Custom Domain. Must be the CN or a named SAN in the certificate specified by the `containerAppEnvironmentCertificateId`. Changing this forces a new resource to be created.
  const CustomDomainState({
    this.certificateBindingType,
    this.containerAppEnvironmentCertificateId,
    this.containerAppEnvironmentManagedCertificateId,
    this.containerAppId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBindingType': ?certificateBindingType,
      'containerAppEnvironmentCertificateId': ?containerAppEnvironmentCertificateId,
      'containerAppEnvironmentManagedCertificateId': ?containerAppEnvironmentManagedCertificateId,
      'containerAppId': ?containerAppId,
      'name': ?name,
    };
  }

  factory CustomDomainState.fromMap(Map<String, dynamic> map) {
    return CustomDomainState(
      certificateBindingType: (() { final guardedValue = map['certificateBindingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerAppEnvironmentCertificateId: (() { final guardedValue = map['containerAppEnvironmentCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerAppEnvironmentManagedCertificateId: (() { final guardedValue = map['containerAppEnvironmentManagedCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerAppId: (() { final guardedValue = map['containerAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerapp_environment_managed_certificate_environment_managed_certificate_args_doc}
/// The set of arguments for EnvironmentManagedCertificate.
/// {@endtemplate}
/// {@macro pulumi_containerapp_environment_managed_certificate_environment_managed_certificate_args_doc}
class EnvironmentManagedCertificateArgs {
  /// The Container App Managed Environment ID to configure this Managed Certificate on. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerAppEnvironmentId;
  /// The domain control validation type for the managed certificate. Possible values are `CNAME` and `HTTP`. Defaults to `HTTP`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The supported validation methods depend on the domain. Azure will validate domain ownership based on the specified method. `HTTP` validation requires an HTTP endpoint at the domain, `CNAME` validation requires DNS CNAME record configuration.
  final pulumi.Input<String?>? domainControlValidation;
  /// The name of the Container Apps Environment Managed Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The Subject Name of the Certificate. Must be a valid domain name. Changing this forces a new resource to be created.
  final pulumi.Input<String> subjectName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [EnvironmentManagedCertificateArgs].
  /// [containerAppEnvironmentId] The Container App Managed Environment ID to configure this Managed Certificate on. Changing this forces a new resource to be created.
  /// [domainControlValidation] The domain control validation type for the managed certificate. Possible values are `CNAME` and `HTTP`. Defaults to `HTTP`. Changing this forces a new resource to be created.
  /// [name] The name of the Container Apps Environment Managed Certificate. Changing this forces a new resource to be created.
  /// [subjectName] The Subject Name of the Certificate. Must be a valid domain name. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const EnvironmentManagedCertificateArgs({
    required this.containerAppEnvironmentId,
    this.domainControlValidation,
    this.name,
    required this.subjectName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'domainControlValidation': ?domainControlValidation,
      'name': ?name,
      'subjectName': subjectName,
      'tags': ?tags,
    };
  }

  factory EnvironmentManagedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentManagedCertificateArgs(
      containerAppEnvironmentId: pulumi.Input.fromValue(map['containerAppEnvironmentId'] as String),
      domainControlValidation: (() { final guardedValue = map['domainControlValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectName: pulumi.Input.fromValue(map['subjectName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

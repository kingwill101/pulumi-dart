// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvironmentManagedCertificate resources.
class EnvironmentManagedCertificateState {
  /// The Container App Managed Environment ID to configure this Managed Certificate on. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? containerAppEnvironmentId;
  /// The domain control validation type for the managed certificate. Possible values are `CNAME` and `HTTP`. Defaults to `HTTP`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The supported validation methods depend on the domain. Azure will validate domain ownership based on the specified method. `HTTP` validation requires an HTTP endpoint at the domain, `CNAME` validation requires DNS CNAME record configuration.
  final pulumi.Input<String?>? domainControlValidation;
  /// The name of the Container Apps Environment Managed Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The Subject Name of the Certificate. Must be a valid domain name. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? subjectName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The validation token for the managed certificate.
  final pulumi.Input<String?>? validationToken;

  /// Creates a new [EnvironmentManagedCertificateState].
  /// [containerAppEnvironmentId] The Container App Managed Environment ID to configure this Managed Certificate on. Changing this forces a new resource to be created.
  /// [domainControlValidation] The domain control validation type for the managed certificate. Possible values are `CNAME` and `HTTP`. Defaults to `HTTP`. Changing this forces a new resource to be created.
  /// [name] The name of the Container Apps Environment Managed Certificate. Changing this forces a new resource to be created.
  /// [subjectName] The Subject Name of the Certificate. Must be a valid domain name. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [validationToken] The validation token for the managed certificate.
  const EnvironmentManagedCertificateState({
    this.containerAppEnvironmentId,
    this.domainControlValidation,
    this.name,
    this.subjectName,
    this.tags,
    this.validationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': ?containerAppEnvironmentId,
      'domainControlValidation': ?domainControlValidation,
      'name': ?name,
      'subjectName': ?subjectName,
      'tags': ?tags,
      'validationToken': ?validationToken,
    };
  }

  factory EnvironmentManagedCertificateState.fromMap(Map<String, dynamic> map) {
    return EnvironmentManagedCertificateState(
      containerAppEnvironmentId: (() { final guardedValue = map['containerAppEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainControlValidation: (() { final guardedValue = map['domainControlValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectName: (() { final guardedValue = map['subjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validationToken: (() { final guardedValue = map['validationToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

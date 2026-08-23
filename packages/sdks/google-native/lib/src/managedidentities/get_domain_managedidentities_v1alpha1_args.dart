// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1alpha1_get_domain_managedidentities_v1alpha1_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1alpha1_get_domain_managedidentities_v1alpha1_args_doc}
class GetDomainManagedidentitiesV1alpha1Args {
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDomainManagedidentitiesV1alpha1Args].
  /// [domainId] Required.
  /// [project] Optional.
  const GetDomainManagedidentitiesV1alpha1Args({
    required this.domainId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'project': ?project,
    };
  }

  factory GetDomainManagedidentitiesV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetDomainManagedidentitiesV1alpha1Args(
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

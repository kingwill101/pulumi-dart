// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_get_domain_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_get_domain_args_doc}
class GetDomainArgs {
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;

  /// Creates a new [GetDomainArgs].
  /// [domainId] Required.
  /// [project] Optional.
  /// [siteId] Required.
  GetDomainArgs({
    required pulumi.Output<String> domainId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> siteId,
  }) :
      domainId = pulumi.Input.asInput<String>(domainId),
      project = pulumi.Input.asOptionalInput<String>(project),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'project': ?project,
      'siteId': siteId,
    };
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      domainId: pulumi.Output.create<String>(map['domainId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}


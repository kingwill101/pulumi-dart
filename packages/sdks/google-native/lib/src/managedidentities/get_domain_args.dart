// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedidentities_v1_get_domain_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_managedidentities_v1_get_domain_args_doc}
class GetDomainArgs {
  final pulumi.Input<String> domainId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDomainArgs].
  /// [domainId] Required.
  /// [project] Optional.
  GetDomainArgs({
    required pulumi.Output<String> domainId,
    pulumi.Output<String>? project,
  }) :
      domainId = pulumi.Input.asInput<String>(domainId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'project': ?project,
    };
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      domainId: pulumi.Output.create<String>(map['domainId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


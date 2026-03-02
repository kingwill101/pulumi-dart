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
    required this.domainId,
    this.project,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'project': ?project,
      'siteId': siteId,
    };
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      domainId: (map['domainId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      siteId: (map['siteId'] as String).input(),
    );
  }
}


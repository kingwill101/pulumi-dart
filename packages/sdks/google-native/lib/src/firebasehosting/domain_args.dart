// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_redirect.dart';

/// {@template pulumi_firebasehosting_v1beta1_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_domain_args_doc}
class DomainArgs {
  /// The domain name of the association.
  final pulumi.Input<String> domainName;
  /// If set, the domain should redirect with the provided parameters.
  final pulumi.Input<DomainRedirect>? domainRedirect;
  final pulumi.Input<String>? project;
  /// The site name of the association.
  final pulumi.Input<String> site;
  final pulumi.Input<String> siteId;

  /// Creates a new [DomainArgs].
  /// [domainName] The domain name of the association.
  /// [domainRedirect] If set, the domain should redirect with the provided parameters.
  /// [project] Optional.
  /// [site] The site name of the association.
  /// [siteId] Required.
  DomainArgs({
    required this.domainName,
    this.domainRedirect,
    this.project,
    required this.site,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'domainRedirect': ?pulumi.Input.mapOptionalInputValue<DomainRedirect, Map<String, dynamic>>(domainRedirect, (value) => value.toMap()),
      'project': ?project,
      'site': site,
      'siteId': siteId,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainRedirect: (() { final guardedValue = map['domainRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      site: pulumi.Input.fromValue(map['site'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}


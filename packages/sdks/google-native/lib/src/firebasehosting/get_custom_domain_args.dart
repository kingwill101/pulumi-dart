// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_get_custom_domain_args_doc}
/// Arguments for getCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_get_custom_domain_args_doc}
class GetCustomDomainArgs {
  final pulumi.Input<String> customDomainId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;

  /// Creates a new [GetCustomDomainArgs].
  /// [customDomainId] Required.
  /// [project] Optional.
  /// [siteId] Required.
  GetCustomDomainArgs({
    required this.customDomainId,
    this.project,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomainId': customDomainId,
      'project': ?project,
      'siteId': siteId,
    };
  }

  factory GetCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainArgs(
      customDomainId: (map['customDomainId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      siteId: (map['siteId'] as String).input(),
    );
  }
}


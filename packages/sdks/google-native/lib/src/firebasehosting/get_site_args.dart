// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_get_site_args_doc}
/// Arguments for getSite.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_get_site_args_doc}
class GetSiteArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> siteId;

  /// Creates a new [GetSiteArgs].
  /// [project] Optional.
  /// [siteId] Required.
  GetSiteArgs({
    this.project,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'siteId': siteId,
    };
  }

  factory GetSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      siteId: (map['siteId'] as String).input(),
    );
  }
}


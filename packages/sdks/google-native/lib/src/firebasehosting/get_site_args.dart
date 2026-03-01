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
    pulumi.Output<String>? project,
    required pulumi.Output<String> siteId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'siteId': siteId,
    };
  }

  factory GetSiteArgs.fromMap(Map<String, dynamic> map) {
    return GetSiteArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}


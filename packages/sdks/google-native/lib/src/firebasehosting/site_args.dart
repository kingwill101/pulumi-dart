// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebasehosting_v1beta1_site_args_doc}
/// The set of arguments for Site.
/// {@endtemplate}
/// {@macro pulumi_firebasehosting_v1beta1_site_args_doc}
class SiteArgs {
  /// Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id) associated with the Hosting site.
  final pulumi.Input<String>? appId;
  /// Optional. User-specified labels for the Hosting site.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;
  /// Required. Immutable. A globally unique identifier for the Hosting site. This identifier is used to construct the Firebase-provisioned subdomains for the site, so it must also be a valid domain name label.
  final pulumi.Input<String> siteId;

  /// Creates a new [SiteArgs].
  /// [appId] Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id) associated with the Hosting site.
  /// [labels] Optional. User-specified labels for the Hosting site.
  /// [project] Optional.
  /// [siteId] Required. Immutable. A globally unique identifier for the Hosting site. This identifier is used to construct the Firebase-provisioned subdomains for the site, so it must also be a valid domain name label.
  SiteArgs({
    pulumi.Output<String>? appId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? project,
    required pulumi.Output<String> siteId,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      project = pulumi.Input.asOptionalInput<String>(project),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'labels': ?labels,
      'project': ?project,
      'siteId': siteId,
    };
  }

  factory SiteArgs.fromMap(Map<String, dynamic> map) {
    return SiteArgs(
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}


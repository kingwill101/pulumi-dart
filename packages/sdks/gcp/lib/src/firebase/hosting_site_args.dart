// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_hosting_site_hosting_site_args_doc}
/// The set of arguments for HostingSite.
/// {@endtemplate}
/// {@macro pulumi_firebase_hosting_site_hosting_site_args_doc}
class HostingSiteArgs {
  /// Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the Hosting site.
  final pulumi.Input<String>? appId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. Immutable. A globally unique identifier for the Hosting site. This identifier is
  /// used to construct the Firebase-provisioned subdomains for the site, so it must also be a valid
  /// domain name label.
  final pulumi.Input<String>? siteId;

  /// Creates a new [HostingSiteArgs].
  /// [appId] Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// [project] The ID of the project in which the resource belongs.
  /// [siteId] Required. Immutable. A globally unique identifier for the Hosting site. This identifier is
  HostingSiteArgs({
    this.appId,
    this.project,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'project': ?project,
      'siteId': ?siteId,
    };
  }

  factory HostingSiteArgs.fromMap(Map<String, dynamic> map) {
    return HostingSiteArgs(
      appId: map['appId'] == null ? null : (map['appId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId'] as String).input(),
    );
  }
}


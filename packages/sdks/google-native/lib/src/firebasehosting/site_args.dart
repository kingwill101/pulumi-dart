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
  SiteArgs({this.appId, this.labels, this.project, required this.siteId});

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
      appId: (() {
        final guardedValue = map['appId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}

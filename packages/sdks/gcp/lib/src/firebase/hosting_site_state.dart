// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostingSite resources.
class HostingSiteState {
  /// Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the Hosting site.
  final pulumi.Input<String>? appId;
  /// The default URL for the site in the form of https://{name}.web.app
  final pulumi.Input<String>? defaultUrl;
  /// Output only. The fully-qualified resource name of the Hosting site, in
  /// the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID PROJECT_IDENTIFIER: the
  /// Firebase project's
  /// [`ProjectNumber`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its
  /// [`ProjectId`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_id).
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. Immutable. A globally unique identifier for the Hosting site. This identifier is
  /// used to construct the Firebase-provisioned subdomains for the site, so it must also be a valid
  /// domain name label.
  final pulumi.Input<String>? siteId;
  /// The type of Hosting site, either 'DEFAULT_SITE' or `USER_SITE`
  final pulumi.Input<String>? type;

  /// Creates a new [HostingSiteState].
  /// [appId] Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// [defaultUrl] The default URL for the site in the form of https://{name}.web.app
  /// [name] Output only. The fully-qualified resource name of the Hosting site, in
  /// [project] The ID of the project in which the resource belongs.
  /// [siteId] Required. Immutable. A globally unique identifier for the Hosting site. This identifier is
  /// [type] The type of Hosting site, either 'DEFAULT_SITE' or `USER_SITE`
  const HostingSiteState({
    this.appId,
    this.defaultUrl,
    this.name,
    this.project,
    this.siteId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'defaultUrl': ?defaultUrl,
      'name': ?name,
      'project': ?project,
      'siteId': ?siteId,
      'type': ?type,
    };
  }

  factory HostingSiteState.fromMap(Map<String, dynamic> map) {
    return HostingSiteState(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultUrl: (() { final guardedValue = map['defaultUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


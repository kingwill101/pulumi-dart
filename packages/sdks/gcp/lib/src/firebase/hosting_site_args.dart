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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. Immutable. A globally unique identifier for the Hosting site. This identifier is
  /// used to construct the Firebase-provisioned subdomains for the site, so it must also be a valid
  /// domain name label.
  final pulumi.Input<String>? siteId;

  /// Creates a new [HostingSiteArgs].
  /// [appId] Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  /// [siteId] Required. Immutable. A globally unique identifier for the Hosting site. This identifier is
  const HostingSiteArgs({
    this.appId,
    this.deletionPolicy,
    this.project,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
      'siteId': ?siteId,
    };
  }

  factory HostingSiteArgs.fromMap(Map<String, dynamic> map) {
    return HostingSiteArgs(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

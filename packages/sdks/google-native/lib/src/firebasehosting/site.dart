import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_args.dart';

/// Creates a new Hosting Site in the specified parent Firebase project. Note that Hosting sites can take several minutes to propagate through Firebase systems.
/// Auto-naming is currently not supported for this resource.
class Site extends pulumi.CustomResource {
  /// Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id) associated with the Hosting site.
  late final pulumi.Output<String> appId;

  /// The default URL for the Hosting site.
  late final pulumi.Output<String> defaultUrl;

  /// Optional. User-specified labels for the Hosting site.
  late final pulumi.Output<Map<String, String>> labels;

  /// The fully-qualified resource name of the Hosting site, in the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID PROJECT_IDENTIFIER: the Firebase project's [`ProjectNumber`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number) ***(recommended)*** or its [`ProjectId`](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects#FirebaseProject.FIELDS.project_id). Learn more about using project identifiers in Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Required. Immutable. A globally unique identifier for the Hosting site. This identifier is used to construct the Firebase-provisioned subdomains for the site, so it must also be a valid domain name label.
  late final pulumi.Output<String> siteId;

  /// The type of Hosting site. Every Firebase project has a `DEFAULT_SITE`, which is created when Hosting is provisioned for the project. All additional sites are `USER_SITE`.
  late final pulumi.Output<String> type;

  /// Creates a new [Site].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Site]. {@macro pulumi_firebasehosting_v1beta1_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Site(String name, {SiteArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:firebasehosting/v1beta1:Site',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    appId = registerOutput<String>('appId');
    defaultUrl = registerOutput<String>('defaultUrl');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    siteId = registerOutput<String>('siteId');
    type = registerOutput<String>('type');
  }
}

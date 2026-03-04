import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_response.dart';
import 'custom_domain_args.dart';
import 'dns_updates_response.dart';

/// Creates a `CustomDomain`.
/// Auto-naming is currently not supported for this resource.
class CustomDomain extends pulumi.CustomResource {
  /// Annotations you can add to leave both human- and machine-readable metadata about your `CustomDomain`.
  late final pulumi.Output<Map<String, String>> annotations;

  /// The SSL certificate Hosting has for this custom domain's domain name. For new custom domains, this often represents Hosting's intent to create a certificate, rather than an actual cert. Check the `state` field for more.
  late final pulumi.Output<CertificateResponse> cert;

  /// A field that lets you specify which SSL certificate type Hosting creates for your domain name. Spark plan custom domains only have access to the `GROUPED` cert type, while Blaze plan domains can select any option.
  late final pulumi.Output<String> certPreference;

  /// The custom domain's create time.
  late final pulumi.Output<String> createTime;

  /// Required. The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  late final pulumi.Output<String> customDomainId;

  /// The time the `CustomDomain` was deleted; null for custom domains that haven't been deleted. Deleted custom domains persist for approximately 30 days, after which time Hosting removes them completely. To restore a deleted custom domain, make an `UndeleteCustomDomain` request.
  late final pulumi.Output<String> deleteTime;

  /// A string that represents the current state of the `CustomDomain` and allows you to confirm its initial state in requests that would modify it. Use the tag to ensure consistency when making `UpdateCustomDomain`, `DeleteCustomDomain`, and `UndeleteCustomDomain` requests.
  late final pulumi.Output<String> etag;

  /// The minimum time before a soft-deleted `CustomDomain` is completely removed from Hosting; null for custom domains that haven't been deleted.
  late final pulumi.Output<String> expireTime;

  /// The `HostState` of the domain name this `CustomDomain` refers to.
  late final pulumi.Output<String> hostState;

  /// A set of errors Hosting systems encountered when trying to establish Hosting's ability to serve secure content for your domain name. Resolve these issues to ensure your `CustomDomain` behaves properly.
  late final pulumi.Output<List<Map<String, dynamic>>> issues;

  /// Labels used for extra metadata and/or filtering.
  late final pulumi.Output<Map<String, String>> labels;

  /// The fully-qualified name of the `CustomDomain`.
  late final pulumi.Output<String> name;

  /// The `OwnershipState` of the domain name this `CustomDomain` refers to.
  late final pulumi.Output<String> ownershipState;
  late final pulumi.Output<String> project;

  /// A field that, if true, indicates that Hosting's systems are attmepting to make the custom domain's state match your preferred state. This is most frequently `true` when initially provisioning a `CustomDomain` after a `CreateCustomDomain` request or when creating a new SSL certificate to match an updated `cert_preference` after an `UpdateCustomDomain` request.
  late final pulumi.Output<bool> reconciling;

  /// A domain name that this `CustomDomain` should direct traffic towards. If specified, Hosting will respond to requests against this custom domain with an HTTP 301 code, and route traffic to the specified `redirect_target` instead.
  late final pulumi.Output<String> redirectTarget;

  /// A set of updates you should make to the domain name's DNS records to let Hosting serve secure content on its behalf.
  late final pulumi.Output<DnsUpdatesResponse> requiredDnsUpdates;
  late final pulumi.Output<String> siteId;

  /// The last time the `CustomDomain` was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDomain]. {@macro pulumi_firebasehosting_v1beta1_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDomain(
    String name, {
    CustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:firebasehosting/v1beta1:CustomDomain',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    cert = registerOutput<CertificateResponse>('cert');
    certPreference = registerOutput<String>('certPreference');
    createTime = registerOutput<String>('createTime');
    customDomainId = registerOutput<String>('customDomainId');
    deleteTime = registerOutput<String>('deleteTime');
    etag = registerOutput<String>('etag');
    expireTime = registerOutput<String>('expireTime');
    hostState = registerOutput<String>('hostState');
    issues = registerOutput<List<Map<String, dynamic>>>('issues');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    ownershipState = registerOutput<String>('ownershipState');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    redirectTarget = registerOutput<String>('redirectTarget');
    requiredDnsUpdates = registerOutput<DnsUpdatesResponse>(
      'requiredDnsUpdates',
    );
    siteId = registerOutput<String>('siteId');
    updateTime = registerOutput<String>('updateTime');
  }
}

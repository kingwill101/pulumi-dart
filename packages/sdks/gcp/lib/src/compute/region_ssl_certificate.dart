import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_certificate_args.dart';
import 'region_ssl_certificate_state.dart';

/// A RegionSslCertificate resource, used for HTTPS load balancing. This resource
/// provides a mechanism to upload an SSL key and certificate to
/// the load balancer to serve secure connections from the user.
///
///
/// To get more information about RegionSslCertificate, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionSslCertificates)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/ssl-certificates)
///
///
///
/// &gt; **Note:**  All arguments marked as write-only values will not be stored in the state: `privateKeyWo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ## Import
///
/// RegionSslCertificate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/sslCertificates/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionSslCertificate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionSslCertificate:RegionSslCertificate default projects/{{project}}/regions/{{region}}/sslCertificates/{{name}}
/// $ pulumi import gcp:compute/regionSslCertificate:RegionSslCertificate default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionSslCertificate:RegionSslCertificate default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionSslCertificate:RegionSslCertificate default {{name}}
/// ```
class RegionSslCertificate extends pulumi.CustomResource {
  /// The certificate in PEM format.
  /// The certificate chain must be no greater than 5 certs long.
  /// The chain must include at least one intermediate cert.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> certificate;
  /// The unique identifier for the resource.
  late final pulumi.Output<int> certificateId;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Expire time of the certificate in RFC3339 text format.
  late final pulumi.Output<String> expireTime;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  /// These are in the same namespace as the managed SSL certificates.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the
  /// specified prefix. Conflicts with `name`. Max length is 54 characters.
  /// Prefixes with lengths longer than 37 characters will use a shortened
  /// UUID that will be more prone to collisions.
  /// Resulting name for a `namePrefix` &lt;= 37 characters:
  /// `namePrefix` + YYYYmmddHHSSssss + 8 digit incremental counter
  /// Resulting name for a `namePrefix` 38 - 54 characters:
  /// `namePrefix` + YYmmdd + 3 digit incremental counter
  late final pulumi.Output<String> namePrefix;
  /// The write-only private key in PEM format.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> privateKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The write-only private key in PEM format.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `privateKey` or `privateKeyWo` can only be set.
  late final pulumi.Output<String?> privateKeyWo;
  /// Triggers update of `privateKeyWo` write-only. Increment this value when an update to `privateKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  late final pulumi.Output<String?> privateKeyWoVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The Region in which the created regional ssl certificate should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [RegionSslCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionSslCertificate]. {@macro pulumi_compute_region_ssl_certificate_region_ssl_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionSslCertificate(
    String name, {
    RegionSslCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionSslCertificate:RegionSslCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['certificate', 'privateKey', 'privateKeyWo'],
        ) {
    certificate = registerOutput<String>('certificate', isSecret: true);
    certificateId = registerOutput<int>('certificateId');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    expireTime = registerOutput<String>('expireTime');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    privateKey = registerOutput<String?>('privateKey', isSecret: true);
    privateKeyWo = registerOutput<String?>('privateKeyWo', isSecret: true);
    privateKeyWoVersion = registerOutput<String?>('privateKeyWoVersion');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [RegionSslCertificate] resource's state with the given [name] and [id].
  static RegionSslCertificate get(
    String name,
    pulumi.Input<String> id, {
    RegionSslCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionSslCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegionSslCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionSslCertificate:RegionSslCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate', isSecret: true);
    certificateId = registerOutput<int>('certificateId');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    expireTime = registerOutput<String>('expireTime');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    privateKey = registerOutput<String?>('privateKey', isSecret: true);
    privateKeyWo = registerOutput<String?>('privateKeyWo', isSecret: true);
    privateKeyWoVersion = registerOutput<String?>('privateKeyWoVersion');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Creates a typed reference to an existing [RegionSslCertificate] resource.
  RegionSslCertificate.reference(String urn)
    : super(
        'gcp:compute/regionSslCertificate:RegionSslCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['certificate', 'privateKey', 'privateKeyWo'],
        isResourceReference: true,
      ) {
    certificate = registerOutput<String>('certificate', isSecret: true);
    certificateId = registerOutput<int>('certificateId');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    expireTime = registerOutput<String>('expireTime');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    privateKey = registerOutput<String?>('privateKey', isSecret: true);
    privateKeyWo = registerOutput<String?>('privateKeyWo', isSecret: true);
    privateKeyWoVersion = registerOutput<String?>('privateKeyWoVersion');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }
}

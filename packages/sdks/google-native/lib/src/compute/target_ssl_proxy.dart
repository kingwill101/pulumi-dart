import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_ssl_proxy_args.dart';

/// Creates a TargetSslProxy resource in the specified project using the data included in the request.
class TargetSslProxy extends pulumi.CustomResource {
  /// URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  late final pulumi.Output<String> certificateMap;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;
  /// Type of the resource. Always compute#targetSslProxy for target SSL proxies.
  late final pulumi.Output<String> kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  late final pulumi.Output<String> proxyHeader;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// URL to the BackendService resource.
  late final pulumi.Output<String> service;
  /// URLs to SslCertificate resources that are used to authenticate connections to Backends. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  late final pulumi.Output<List<String>> sslCertificates;
  /// URL of SslPolicy resource that will be associated with the TargetSslProxy resource. If not set, the TargetSslProxy resource will not have any SSL policy configured.
  late final pulumi.Output<String> sslPolicy;

  /// Creates a new [TargetSslProxy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetSslProxy]. {@macro pulumi_compute_alpha_target_ssl_proxy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetSslProxy(
    String name, {
    TargetSslProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:TargetSslProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateMap = registerOutput<String>('certificateMap');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    proxyHeader = registerOutput<String>('proxyHeader');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    service = registerOutput<String>('service');
    sslCertificates = registerOutput<List<String>>('sslCertificates');
    sslPolicy = registerOutput<String>('sslPolicy');
  }
}

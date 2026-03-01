import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_policy_compute_v1_args.dart';
import 'ssl_policy_warnings_item_response_compute_v1.dart';

/// Returns the specified SSL policy resource.
class SslPolicyComputeV1 extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
  late final pulumi.Output<List<String>> customFeatures;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;
  /// The list of features enabled in the SSL policy.
  late final pulumi.Output<List<String>> enabledFeatures;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a SslPolicy. An up-to-date fingerprint must be provided in order to update the SslPolicy, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an SslPolicy.
  late final pulumi.Output<String> fingerprint;
  /// [Output only] Type of the resource. Always compute#sslPolicyfor SSL policies.
  late final pulumi.Output<String> kind;
  /// The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of TLS_1_0, TLS_1_1, TLS_1_2.
  late final pulumi.Output<String> minTlsVersion;
  /// Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
  late final pulumi.Output<String> profile;
  late final pulumi.Output<String> project;
  /// URL of the region where the regional SSL policy resides. This field is not applicable to global SSL policies.
  late final pulumi.Output<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// If potential misconfigurations are detected for this SSL policy, this field will be populated with warning messages.
  late final pulumi.Output<List<SslPolicyWarningsItemResponseComputeV1>> warnings;

  /// Creates a new [SslPolicyComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SslPolicyComputeV1]. {@macro pulumi_compute_v1_ssl_policy_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SslPolicyComputeV1(
    String name, {
    SslPolicyComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:SslPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.customFeatures = registerOutput<List<String>>('customFeatures');
    this.description = registerOutput<String>('description');
    this.enabledFeatures = registerOutput<List<String>>('enabledFeatures');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.kind = registerOutput<String>('kind');
    this.minTlsVersion = registerOutput<String>('minTlsVersion');
    this.name = registerOutput<String>('name');
    this.profile = registerOutput<String>('profile');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.warnings = registerOutput<List<SslPolicyWarningsItemResponseComputeV1>>('warnings');
  }
}

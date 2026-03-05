import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_policy_networksecurity_v1beta1_args.dart';

/// Creates a new TlsInspectionPolicy in a given project and location.
class TlsInspectionPolicyNetworksecurityV1beta1 extends pulumi.CustomResource {
  /// A CA pool resource used to issue interception certificates. The CA pool string has a relative resource path following the form "projects/{project}/locations/{location}/caPools/{ca_pool}".
  late final pulumi.Output<String> caPool;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Optional. List of custom TLS cipher suites selected. This field is valid only if the selected tls_feature_profile is CUSTOM. The compute.SslPoliciesService.ListAvailableFeatures method returns the set of features that can be specified in this list. Note that Secure Web Proxy does not yet honor this field.
  late final pulumi.Output<List<String>> customTlsFeatures;
  /// Optional. Free-text description of the resource.
  late final pulumi.Output<String> description;
  /// Optional. If FALSE (the default), use our default set of public CAs in addition to any CAs specified in trust_config. These public CAs are currently based on the Mozilla Root Program and are subject to change over time. If TRUE, do not accept our default set of public CAs. Only CAs specified in trust_config will be accepted. This defaults to FALSE (use public CAs in addition to trust_config) for backwards compatibility, but trusting public root CAs is *not recommended* unless the traffic in question is outbound to public web servers. When possible, prefer setting this to "false" and explicitly specifying trusted CAs and certificates in a TrustConfig. Note that Secure Web Proxy does not yet honor this field.
  late final pulumi.Output<bool> excludePublicCaSet;
  late final pulumi.Output<String> location;
  /// Optional. Minimum TLS version that the firewall should use when negotiating connections with both clients and servers. If this is not set, then the default value is to allow the broadest set of clients and servers (TLS 1.0 or higher). Setting this to more restrictive values may improve security, but may also prevent the firewall from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  late final pulumi.Output<String> minTlsVersion;
  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/tlsInspectionPolicies/{tls_inspection_policy} tls_inspection_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers ("PROFILE_COMPATIBLE"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
  late final pulumi.Output<String> tlsFeatureProfile;
  /// Required. Short name of the TlsInspectionPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "tls_inspection_policy1".
  late final pulumi.Output<String> tlsInspectionPolicyId;
  /// Optional. A TrustConfig resource used when making a connection to the TLS server. This is a relative resource path following the form "projects/{project}/locations/{location}/trustConfigs/{trust_config}". This is necessary to intercept TLS connections to servers with certificates signed by a private CA or self-signed certificates. Note that Secure Web Proxy does not yet honor this field.
  late final pulumi.Output<String> trustConfig;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TlsInspectionPolicyNetworksecurityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TlsInspectionPolicyNetworksecurityV1beta1]. {@macro pulumi_networksecurity_v1beta1_tls_inspection_policy_networksecurity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TlsInspectionPolicyNetworksecurityV1beta1(
    String name, {
    TlsInspectionPolicyNetworksecurityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:TlsInspectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    caPool = registerOutput<String>('caPool');
    createTime = registerOutput<String>('createTime');
    customTlsFeatures = registerOutput<List<String>>('customTlsFeatures');
    description = registerOutput<String>('description');
    excludePublicCaSet = registerOutput<bool>('excludePublicCaSet');
    location = registerOutput<String>('location');
    minTlsVersion = registerOutput<String>('minTlsVersion');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tlsFeatureProfile = registerOutput<String>('tlsFeatureProfile');
    tlsInspectionPolicyId = registerOutput<String>('tlsInspectionPolicyId');
    trustConfig = registerOutput<String>('trustConfig');
    updateTime = registerOutput<String>('updateTime');
  }
}

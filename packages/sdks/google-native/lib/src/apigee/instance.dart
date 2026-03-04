import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';

/// Creates an Apigee runtime instance. The instance is accessible from the authorized network configured on the organization. **Note:** Not supported for Apigee hybrid.
class Instance extends pulumi.CustomResource {
  /// Optional. Customer accept list represents the list of projects (id/number) on customer side that can privately connect to the service attachment. It is an optional field which the customers can provide during the instance creation. By default, the customer project associated with the Apigee organization will be included to the list.
  late final pulumi.Output<List<String>> consumerAcceptList;

  /// Time the instance was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;

  /// Optional. Description of the instance.
  late final pulumi.Output<String> description;

  /// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only. Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`
  late final pulumi.Output<String> diskEncryptionKeyName;

  /// Optional. Display name for the instance.
  late final pulumi.Output<String> displayName;

  /// Internal hostname or IP address of the Apigee endpoint used by clients to connect to the service.
  late final pulumi.Output<String> host;

  /// Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to create the Apigee instance. Providing CIDR ranges is optional. You can provide just /22 or /28 or both (or neither). Ranges you provide should be freely available as part of a larger named range you have allocated to the Service Networking peering. If this parameter is not provided, Apigee automatically requests an available /22 and /28 CIDR block from Service Networking. Use the /22 CIDR block for configuring your firewall needs to allow traffic from Apigee. Input formats: `a.b.c.d/22` or `e.f.g.h/28` or `a.b.c.d/22,e.f.g.h/28`
  late final pulumi.Output<String> ipRange;

  /// Time the instance was last modified in milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;

  /// Compute Engine location where the instance resides.
  late final pulumi.Output<String> location;

  /// Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\d]$`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`. Evaluation organizations support only `SLASH_23`.
  late final pulumi.Output<String> peeringCidrRange;

  /// Port number of the exposed Apigee endpoint.
  late final pulumi.Output<String> port;

  /// Version of the runtime system running in the instance. The runtime system is the set of components that serve the API Proxy traffic in your Environments.
  late final pulumi.Output<String> runtimeVersion;

  /// Resource name of the service attachment created for the instance in the format: `projects/*/regions/*/serviceAttachments/*` Apigee customers can privately forward traffic to this service attachment using the PSC endpoints.
  late final pulumi.Output<String> serviceAttachment;

  /// State of the instance. Values other than `ACTIVE` means the resource is not ready to use.
  late final pulumi.Output<String> state;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_apigee_v1_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    consumerAcceptList = registerOutput<List<String>>('consumerAcceptList');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String>('description');
    diskEncryptionKeyName = registerOutput<String>('diskEncryptionKeyName');
    displayName = registerOutput<String>('displayName');
    host = registerOutput<String>('host');
    ipRange = registerOutput<String>('ipRange');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    peeringCidrRange = registerOutput<String>('peeringCidrRange');
    port = registerOutput<String>('port');
    runtimeVersion = registerOutput<String>('runtimeVersion');
    serviceAttachment = registerOutput<String>('serviceAttachment');
    state = registerOutput<String>('state');
  }
}

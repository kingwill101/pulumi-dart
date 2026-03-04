import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_properties_response_encryption.dart';
import 'managed_service_identity_response.dart';
import 'redis_enterprise_args.dart';
import 'sku_response.dart';

/// Describes the Redis Enterprise cluster
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2020-10-01-preview, 2021-02-01-preview, 2021-03-01, 2021-08-01, 2022-01-01, 2022-11-01-preview, 2023-03-01-preview, 2023-07-01, 2023-08-01-preview, 2023-10-01-preview, 2023-11-01, 2024-02-01, 2024-03-01-preview, 2024-06-01-preview, 2024-09-01-preview, 2024-10-01, 2025-04-01, 2025-07-01, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native redisenterprise [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:redisenterprise:RedisEnterprise cache1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Cache/redisEnterprise/{clusterName}
/// ```
class RedisEnterprise extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Encryption-at-rest configuration for the cluster.
  late final pulumi.Output<ClusterPropertiesResponseEncryption?> encryption;

  /// Enabled by default. If highAvailability is disabled, the data set is not replicated. This affects the availability SLA, and increases the risk of data loss.
  late final pulumi.Output<String?> highAvailability;

  /// DNS name of the cluster endpoint
  late final pulumi.Output<String> hostName;

  /// The identity of the resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// Distinguishes the kind of cluster. Read-only.
  late final pulumi.Output<String> kind;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The minimum TLS version for the cluster to support, e.g. '1.2'. Newer versions can be added in the future. Note that TLS 1.0 and TLS 1.1 are now completely obsolete -- you cannot use them. They are mentioned only for the sake of consistency with old API versions.
  late final pulumi.Output<String?> minimumTlsVersion;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// List of private endpoint connections associated with the specified Redis Enterprise cluster
  late final pulumi.Output<List<Map<String, dynamic>>>
  privateEndpointConnections;

  /// Current provisioning status of the cluster
  late final pulumi.Output<String> provisioningState;

  /// Version of redis the cluster supports, e.g. '6'
  late final pulumi.Output<String> redisVersion;

  /// Explains the current redundancy strategy of the cluster, which affects the expected SLA.
  late final pulumi.Output<String> redundancyMode;

  /// Current resource status of the cluster
  late final pulumi.Output<String> resourceState;

  /// The SKU to create, which affects price, performance, and features.
  late final pulumi.Output<SkuResponse> sku;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The Availability Zones where this cluster will be deployed.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [RedisEnterprise].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RedisEnterprise]. {@macro pulumi_redisenterprise_redis_enterprise_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RedisEnterprise(
    String name, {
    RedisEnterpriseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:redisenterprise:RedisEnterprise',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    encryption = registerOutput<ClusterPropertiesResponseEncryption?>(
      'encryption',
    );
    highAvailability = registerOutput<String?>('highAvailability');
    hostName = registerOutput<String>('hostName');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>(
      'privateEndpointConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    redisVersion = registerOutput<String>('redisVersion');
    redundancyMode = registerOutput<String>('redundancyMode');
    resourceState = registerOutput<String>('resourceState');
    sku = registerOutput<SkuResponse>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones');
  }
}

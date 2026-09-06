import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_args.dart';
import 'flow_log_format_parameters_response.dart';
import 'managed_service_identity_response.dart';
import 'retention_policy_parameters_response.dart';
import 'traffic_analytics_properties_response.dart';

/// A flow log resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:FlowLog Microsoft.Networkdesmond-rgdesmondcentral-nsg /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkWatchers/{networkWatcherName}/flowLogs/{flowLogName}
/// ```
class FlowLog extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Flag to enable/disable flow logging.
  late final pulumi.Output<bool?> enabled;
  /// Optional field to filter network traffic logs based on SrcIP, SrcPort, DstIP, DstPort, Protocol, Encryption, Direction and Action. If not specified, all network traffic will be logged.
  late final pulumi.Output<String?> enabledFilteringCriteria;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Parameters that define the configuration of traffic analytics.
  late final pulumi.Output<TrafficAnalyticsPropertiesResponse?> flowAnalyticsConfiguration;
  /// Parameters that define the flow log format.
  late final pulumi.Output<FlowLogFormatParametersResponse?> format;
  /// FlowLog resource Managed Identity
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the flow log.
  late final pulumi.Output<String> provisioningState;
  /// Parameters that define the retention policy for flow log.
  late final pulumi.Output<RetentionPolicyParametersResponse?> retentionPolicy;
  /// ID of the storage account which is used to store the flow log.
  late final pulumi.Output<String> storageId;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Guid of network security group to which flow log will be applied.
  late final pulumi.Output<String> targetResourceGuid;
  /// ID of network security group to which flow log will be applied.
  late final pulumi.Output<String> targetResourceId;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [FlowLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowLog]. {@macro pulumi_network_flow_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowLog(
    String name, {
    FlowLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:FlowLog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enabled = registerOutput<bool?>('enabled');
    enabledFilteringCriteria = registerOutput<String?>('enabledFilteringCriteria');
    etag = registerOutput<String>('etag');
    flowAnalyticsConfiguration = registerOutput<TrafficAnalyticsPropertiesResponse?>('flowAnalyticsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrafficAnalyticsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    format = registerOutput<FlowLogFormatParametersResponse?>('format', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowLogFormatParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    retentionPolicy = registerOutput<RetentionPolicyParametersResponse?>('retentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RetentionPolicyParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageId = registerOutput<String>('storageId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetResourceGuid = registerOutput<String>('targetResourceGuid');
    targetResourceId = registerOutput<String>('targetResourceId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [FlowLog] resource.
  FlowLog.reference(String urn)
    : super(
        'azure-native:network:FlowLog',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    enabled = registerOutput<bool?>('enabled');
    enabledFilteringCriteria = registerOutput<String?>('enabledFilteringCriteria');
    etag = registerOutput<String>('etag');
    flowAnalyticsConfiguration = registerOutput<TrafficAnalyticsPropertiesResponse?>('flowAnalyticsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TrafficAnalyticsPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    format = registerOutput<FlowLogFormatParametersResponse?>('format', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FlowLogFormatParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    retentionPolicy = registerOutput<RetentionPolicyParametersResponse?>('retentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RetentionPolicyParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageId = registerOutput<String>('storageId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetResourceGuid = registerOutput<String>('targetResourceGuid');
    targetResourceId = registerOutput<String>('targetResourceId');
    type = registerOutput<String>('type');
  }
}

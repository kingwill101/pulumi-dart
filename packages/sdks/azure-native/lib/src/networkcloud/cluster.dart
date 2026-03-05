import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_output_settings_response.dart';
import 'cluster_args.dart';
import 'cluster_capacity_response.dart';
import 'cluster_secret_archive_response.dart';
import 'cluster_update_strategy_response.dart';
import 'command_output_settings_response.dart';
import 'extended_location_response.dart';
import 'managed_resource_group_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'rack_definition_response.dart';
import 'runtime_protection_configuration_response.dart';
import 'secret_archive_settings_response.dart';
import 'service_principal_information_response.dart';
import 'system_data_response.dart';
import 'validation_threshold_response.dart';
import 'vulnerability_scanning_settings_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01-preview, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:networkcloud:Cluster clusterName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/clusters/{clusterName}
/// ```
class Cluster extends pulumi.CustomResource {
  /// The rack definition that is intended to reflect only a single rack in a single rack cluster, or an aggregator rack in a multi-rack cluster.
  late final pulumi.Output<RackDefinitionResponse>
  aggregatorOrSingleRackDefinition;

  /// The settings for the log analytics workspace used for output of logs from this cluster.
  late final pulumi.Output<AnalyticsOutputSettingsResponse?>
  analyticsOutputSettings;

  /// Field Deprecated. The resource ID of the Log Analytics Workspace that will be used for storing relevant logs.
  late final pulumi.Output<String?> analyticsWorkspaceId;

  /// The list of cluster runtime version upgrades available for this cluster.
  late final pulumi.Output<List<Map<String, dynamic>>> availableUpgradeVersions;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The capacity supported by this cluster.
  late final pulumi.Output<ClusterCapacityResponse> clusterCapacity;

  /// The latest heartbeat status between the cluster manager and the cluster.
  late final pulumi.Output<String> clusterConnectionStatus;

  /// The extended location (custom location) that represents the cluster's control plane location. This extended location is used to route the requests of child objects of the cluster that are handled by the platform operator.
  late final pulumi.Output<ExtendedLocationResponse> clusterExtendedLocation;

  /// The customer-provided location information to identify where the cluster resides.
  late final pulumi.Output<String?> clusterLocation;

  /// The latest connectivity status between cluster manager and the cluster.
  late final pulumi.Output<String> clusterManagerConnectionStatus;

  /// The resource ID of the cluster manager that manages this cluster. This is set by the Cluster Manager when the cluster is created.
  late final pulumi.Output<String> clusterManagerId;

  /// The service principal to be used by the cluster during Arc Appliance installation.
  late final pulumi.Output<ServicePrincipalInformationResponse?>
  clusterServicePrincipal;

  /// The type of rack configuration for the cluster.
  late final pulumi.Output<String> clusterType;

  /// The current runtime version of the cluster.
  late final pulumi.Output<String> clusterVersion;

  /// The settings for commands run in this cluster, such as bare metal machine run read only commands and data extracts.
  late final pulumi.Output<CommandOutputSettingsResponse?>
  commandOutputSettings;

  /// The validation threshold indicating the allowable failures of compute machines during environment validation and deployment.
  late final pulumi.Output<ValidationThresholdResponse?>
  computeDeploymentThreshold;

  /// The list of rack definitions for the compute racks in a multi-rack
  /// cluster, or an empty list in a single-rack cluster.
  late final pulumi.Output<List<Map<String, dynamic>>?> computeRackDefinitions;

  /// The current detailed status of the cluster.
  late final pulumi.Output<String> detailedStatus;

  /// The descriptive message about the detailed status.
  late final pulumi.Output<String> detailedStatusMessage;

  /// Resource ETag.
  late final pulumi.Output<String> etag;

  /// The extended location of the cluster manager associated with the cluster.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;

  /// Field Deprecated. This field will not be populated in an upcoming version. The extended location (custom location) that represents the Hybrid AKS control plane location. This extended location is used when creating provisioned clusters (Hybrid AKS clusters).
  late final pulumi.Output<ExtendedLocationResponse> hybridAksExtendedLocation;

  /// The identity for the resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The configuration of the managed resource group associated with the resource.
  late final pulumi.Output<ManagedResourceGroupConfigurationResponse?>
  managedResourceGroupConfiguration;

  /// The count of Manual Action Taken (MAT) events that have not been validated.
  late final pulumi.Output<double> manualActionCount;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource ID of the Network Fabric associated with the cluster.
  late final pulumi.Output<String> networkFabricId;

  /// The provisioning state of the cluster.
  late final pulumi.Output<String> provisioningState;

  /// The settings for cluster runtime protection.
  late final pulumi.Output<RuntimeProtectionConfigurationResponse?>
  runtimeProtectionConfiguration;

  /// The configuration for use of a key vault to store secrets for later retrieval by the operator.
  late final pulumi.Output<ClusterSecretArchiveResponse?> secretArchive;

  /// The settings for the secret archive used to hold credentials for the cluster.
  late final pulumi.Output<SecretArchiveSettingsResponse?>
  secretArchiveSettings;

  /// The support end date of the runtime version of the cluster.
  late final pulumi.Output<String> supportExpiryDate;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The strategy for updating the cluster.
  late final pulumi.Output<ClusterUpdateStrategyResponse?> updateStrategy;

  /// The settings for how security vulnerability scanning is applied to the cluster.
  late final pulumi.Output<VulnerabilityScanningSettingsResponse?>
  vulnerabilityScanningSettings;

  /// The list of workload resource IDs that are hosted within this cluster.
  late final pulumi.Output<List<String>> workloadResourceIds;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_networkcloud_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:networkcloud:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aggregatorOrSingleRackDefinition = registerOutput<RackDefinitionResponse>(
      'aggregatorOrSingleRackDefinition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RackDefinitionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    analyticsOutputSettings = registerOutput<AnalyticsOutputSettingsResponse?>(
      'analyticsOutputSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AnalyticsOutputSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    analyticsWorkspaceId = registerOutput<String?>('analyticsWorkspaceId');
    availableUpgradeVersions = registerOutput<List<Map<String, dynamic>>>(
      'availableUpgradeVersions',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterCapacity = registerOutput<ClusterCapacityResponse>(
      'clusterCapacity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterCapacityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clusterConnectionStatus = registerOutput<String>('clusterConnectionStatus');
    clusterExtendedLocation = registerOutput<ExtendedLocationResponse>(
      'clusterExtendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clusterLocation = registerOutput<String?>('clusterLocation');
    clusterManagerConnectionStatus = registerOutput<String>(
      'clusterManagerConnectionStatus',
    );
    clusterManagerId = registerOutput<String>('clusterManagerId');
    clusterServicePrincipal =
        registerOutput<ServicePrincipalInformationResponse?>(
          'clusterServicePrincipal',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ServicePrincipalInformationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    clusterType = registerOutput<String>('clusterType');
    clusterVersion = registerOutput<String>('clusterVersion');
    commandOutputSettings = registerOutput<CommandOutputSettingsResponse?>(
      'commandOutputSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CommandOutputSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    computeDeploymentThreshold = registerOutput<ValidationThresholdResponse?>(
      'computeDeploymentThreshold',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ValidationThresholdResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    computeRackDefinitions = registerOutput<List<Map<String, dynamic>>?>(
      'computeRackDefinitions',
    );
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    hybridAksExtendedLocation = registerOutput<ExtendedLocationResponse>(
      'hybridAksExtendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    managedResourceGroupConfiguration =
        registerOutput<ManagedResourceGroupConfigurationResponse?>(
          'managedResourceGroupConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedResourceGroupConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    manualActionCount = registerOutput<double>('manualActionCount');
    this.name = registerOutput<String>('name');
    networkFabricId = registerOutput<String>('networkFabricId');
    provisioningState = registerOutput<String>('provisioningState');
    runtimeProtectionConfiguration =
        registerOutput<RuntimeProtectionConfigurationResponse?>(
          'runtimeProtectionConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RuntimeProtectionConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    secretArchive = registerOutput<ClusterSecretArchiveResponse?>(
      'secretArchive',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterSecretArchiveResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    secretArchiveSettings = registerOutput<SecretArchiveSettingsResponse?>(
      'secretArchiveSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SecretArchiveSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    supportExpiryDate = registerOutput<String>('supportExpiryDate');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    updateStrategy = registerOutput<ClusterUpdateStrategyResponse?>(
      'updateStrategy',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ClusterUpdateStrategyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vulnerabilityScanningSettings =
        registerOutput<VulnerabilityScanningSettingsResponse?>(
          'vulnerabilityScanningSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return VulnerabilityScanningSettingsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    workloadResourceIds = registerOutput<List<String>>('workloadResourceIds');
  }
}

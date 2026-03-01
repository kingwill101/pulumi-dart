// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/provider_batching.dart';
import '../index/provider_external_credentials.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  final pulumi.Input<String>? accessApprovalCustomEndpoint;
  final pulumi.Input<String>? accessContextManagerCustomEndpoint;
  final pulumi.Input<String>? accessToken;
  final pulumi.Input<String>? activeDirectoryCustomEndpoint;
  final pulumi.Input<bool>? addPulumiAttributionLabel;
  final pulumi.Input<String>? alloydbCustomEndpoint;
  final pulumi.Input<String>? apiGatewayCustomEndpoint;
  final pulumi.Input<String>? apigeeCustomEndpoint;
  final pulumi.Input<String>? apihubCustomEndpoint;
  final pulumi.Input<String>? apikeysCustomEndpoint;
  final pulumi.Input<String>? appEngineCustomEndpoint;
  final pulumi.Input<String>? apphubCustomEndpoint;
  final pulumi.Input<String>? artifactRegistryCustomEndpoint;
  final pulumi.Input<String>? assuredWorkloadsCustomEndpoint;
  final pulumi.Input<String>? backupDrCustomEndpoint;
  final pulumi.Input<ProviderBatching>? batching;
  final pulumi.Input<String>? beyondcorpCustomEndpoint;
  final pulumi.Input<String>? bigQueryCustomEndpoint;
  final pulumi.Input<String>? biglakeCustomEndpoint;
  final pulumi.Input<String>? biglakeIcebergCustomEndpoint;
  final pulumi.Input<String>? bigqueryAnalyticsHubCustomEndpoint;
  final pulumi.Input<String>? bigqueryConnectionCustomEndpoint;
  final pulumi.Input<String>? bigqueryDataTransferCustomEndpoint;
  final pulumi.Input<String>? bigqueryDatapolicyCustomEndpoint;
  final pulumi.Input<String>? bigqueryDatapolicyv2CustomEndpoint;
  final pulumi.Input<String>? bigqueryReservationCustomEndpoint;
  final pulumi.Input<String>? bigtableCustomEndpoint;
  final pulumi.Input<String>? billingCustomEndpoint;
  final pulumi.Input<String>? billingProject;
  final pulumi.Input<String>? binaryAuthorizationCustomEndpoint;
  final pulumi.Input<String>? blockchainNodeEngineCustomEndpoint;
  final pulumi.Input<String>? certificateManagerCustomEndpoint;
  final pulumi.Input<String>? cesCustomEndpoint;
  final pulumi.Input<String>? chronicleCustomEndpoint;
  final pulumi.Input<String>? cloudAssetCustomEndpoint;
  final pulumi.Input<String>? cloudBillingCustomEndpoint;
  final pulumi.Input<String>? cloudBuildCustomEndpoint;
  final pulumi.Input<String>? cloudFunctionsCustomEndpoint;
  final pulumi.Input<String>? cloudIdentityCustomEndpoint;
  final pulumi.Input<String>? cloudIdsCustomEndpoint;
  final pulumi.Input<String>? cloudQuotasCustomEndpoint;
  final pulumi.Input<String>? cloudResourceManagerCustomEndpoint;
  final pulumi.Input<String>? cloudRunCustomEndpoint;
  final pulumi.Input<String>? cloudRunV2CustomEndpoint;
  final pulumi.Input<String>? cloudSchedulerCustomEndpoint;
  final pulumi.Input<String>? cloudSecurityComplianceCustomEndpoint;
  final pulumi.Input<String>? cloudTasksCustomEndpoint;
  final pulumi.Input<String>? cloudbuildv2CustomEndpoint;
  final pulumi.Input<String>? clouddeployCustomEndpoint;
  final pulumi.Input<String>? clouddomainsCustomEndpoint;
  final pulumi.Input<String>? cloudfunctions2CustomEndpoint;
  final pulumi.Input<String>? colabCustomEndpoint;
  final pulumi.Input<String>? composerCustomEndpoint;
  final pulumi.Input<String>? computeCustomEndpoint;
  final pulumi.Input<String>? contactCenterInsightsCustomEndpoint;
  final pulumi.Input<String>? containerAnalysisCustomEndpoint;
  final pulumi.Input<String>? containerAttachedCustomEndpoint;
  final pulumi.Input<String>? containerAwsCustomEndpoint;
  final pulumi.Input<String>? containerAzureCustomEndpoint;
  final pulumi.Input<String>? containerCustomEndpoint;
  final pulumi.Input<String>? coreBillingCustomEndpoint;
  final pulumi.Input<String>? credentials;
  final pulumi.Input<String>? dataCatalogCustomEndpoint;
  final pulumi.Input<String>? dataFusionCustomEndpoint;
  final pulumi.Input<String>? dataLossPreventionCustomEndpoint;
  final pulumi.Input<String>? dataPipelineCustomEndpoint;
  final pulumi.Input<String>? databaseMigrationServiceCustomEndpoint;
  final pulumi.Input<String>? dataflowCustomEndpoint;
  final pulumi.Input<String>? dataformCustomEndpoint;
  final pulumi.Input<String>? dataplexCustomEndpoint;
  final pulumi.Input<String>? dataprocCustomEndpoint;
  final pulumi.Input<String>? dataprocGdcCustomEndpoint;
  final pulumi.Input<String>? dataprocMetastoreCustomEndpoint;
  final pulumi.Input<String>? datastreamCustomEndpoint;
  final pulumi.Input<Map<String, String>>? defaultLabels;
  final pulumi.Input<String>? deploymentManagerCustomEndpoint;
  final pulumi.Input<String>? developerConnectCustomEndpoint;
  final pulumi.Input<String>? dialogflowCustomEndpoint;
  final pulumi.Input<String>? dialogflowCxCustomEndpoint;
  final pulumi.Input<bool>? disableGooglePartnerName;
  final pulumi.Input<String>? discoveryEngineCustomEndpoint;
  final pulumi.Input<String>? dnsCustomEndpoint;
  final pulumi.Input<String>? documentAiCustomEndpoint;
  final pulumi.Input<String>? documentAiWarehouseCustomEndpoint;
  final pulumi.Input<String>? edgecontainerCustomEndpoint;
  final pulumi.Input<String>? edgenetworkCustomEndpoint;
  final pulumi.Input<String>? essentialContactsCustomEndpoint;
  final pulumi.Input<String>? eventarcCustomEndpoint;
  final pulumi.Input<ProviderExternalCredentials>? externalCredentials;
  final pulumi.Input<String>? filestoreCustomEndpoint;
  final pulumi.Input<String>? firebaseAiLogicCustomEndpoint;
  final pulumi.Input<String>? firebaseAppCheckCustomEndpoint;
  final pulumi.Input<String>? firebaseAppHostingCustomEndpoint;
  final pulumi.Input<String>? firebaseCustomEndpoint;
  final pulumi.Input<String>? firebaseDataConnectCustomEndpoint;
  final pulumi.Input<String>? firebaseDatabaseCustomEndpoint;
  final pulumi.Input<String>? firebaseExtensionsCustomEndpoint;
  final pulumi.Input<String>? firebaseHostingCustomEndpoint;
  final pulumi.Input<String>? firebaseStorageCustomEndpoint;
  final pulumi.Input<String>? firebaserulesCustomEndpoint;
  final pulumi.Input<String>? firestoreCustomEndpoint;
  final pulumi.Input<String>? geminiCustomEndpoint;
  final pulumi.Input<String>? gkeBackupCustomEndpoint;
  final pulumi.Input<String>? gkeHub2CustomEndpoint;
  final pulumi.Input<String>? gkeHubCustomEndpoint;
  final pulumi.Input<String>? gkeonpremCustomEndpoint;
  final pulumi.Input<String>? googlePartnerName;
  final pulumi.Input<String>? healthcareCustomEndpoint;
  final pulumi.Input<String>? iam2CustomEndpoint;
  final pulumi.Input<String>? iam3CustomEndpoint;
  final pulumi.Input<String>? iamBetaCustomEndpoint;
  final pulumi.Input<String>? iamCredentialsCustomEndpoint;
  final pulumi.Input<String>? iamCustomEndpoint;
  final pulumi.Input<String>? iamWorkforcePoolCustomEndpoint;
  final pulumi.Input<String>? iapCustomEndpoint;
  final pulumi.Input<String>? identityPlatformCustomEndpoint;
  final pulumi.Input<String>? impersonateServiceAccount;
  final pulumi.Input<List<String>>? impersonateServiceAccountDelegates;
  final pulumi.Input<String>? integrationConnectorsCustomEndpoint;
  final pulumi.Input<String>? integrationsCustomEndpoint;
  final pulumi.Input<String>? kmsCustomEndpoint;
  final pulumi.Input<String>? loggingCustomEndpoint;
  final pulumi.Input<String>? lookerCustomEndpoint;
  final pulumi.Input<String>? lustreCustomEndpoint;
  final pulumi.Input<String>? managedKafkaCustomEndpoint;
  final pulumi.Input<String>? memcacheCustomEndpoint;
  final pulumi.Input<String>? memorystoreCustomEndpoint;
  final pulumi.Input<String>? migrationCenterCustomEndpoint;
  final pulumi.Input<String>? mlEngineCustomEndpoint;
  final pulumi.Input<String>? modelArmorCustomEndpoint;
  final pulumi.Input<String>? modelArmorGlobalCustomEndpoint;
  final pulumi.Input<String>? monitoringCustomEndpoint;
  final pulumi.Input<String>? netappCustomEndpoint;
  final pulumi.Input<String>? networkConnectivityCustomEndpoint;
  final pulumi.Input<String>? networkConnectivityv1CustomEndpoint;
  final pulumi.Input<String>? networkManagementCustomEndpoint;
  final pulumi.Input<String>? networkSecurityCustomEndpoint;
  final pulumi.Input<String>? networkServicesCustomEndpoint;
  final pulumi.Input<String>? notebooksCustomEndpoint;
  final pulumi.Input<String>? observabilityCustomEndpoint;
  final pulumi.Input<String>? oracleDatabaseCustomEndpoint;
  final pulumi.Input<String>? orgPolicyCustomEndpoint;
  final pulumi.Input<String>? osConfigCustomEndpoint;
  final pulumi.Input<String>? osConfigV2CustomEndpoint;
  final pulumi.Input<String>? osLoginCustomEndpoint;
  final pulumi.Input<String>? parallelstoreCustomEndpoint;
  final pulumi.Input<String>? parameterManagerCustomEndpoint;
  final pulumi.Input<String>? parameterManagerRegionalCustomEndpoint;
  final pulumi.Input<String>? privatecaCustomEndpoint;
  final pulumi.Input<String>? privilegedAccessManagerCustomEndpoint;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? publicCaCustomEndpoint;
  final pulumi.Input<String>? pubsubCustomEndpoint;
  final pulumi.Input<String>? pubsubLiteCustomEndpoint;
  final pulumi.Input<String>? pulumiAttributionLabelAdditionStrategy;
  final pulumi.Input<String>? recaptchaEnterpriseCustomEndpoint;
  final pulumi.Input<String>? redisCustomEndpoint;
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? requestReason;
  final pulumi.Input<String>? requestTimeout;
  final pulumi.Input<String>? resourceManager3CustomEndpoint;
  final pulumi.Input<String>? resourceManagerCustomEndpoint;
  final pulumi.Input<String>? resourceManagerV3CustomEndpoint;
  final pulumi.Input<String>? runtimeConfigCustomEndpoint;
  final pulumi.Input<String>? runtimeconfigCustomEndpoint;
  final pulumi.Input<String>? saasRuntimeCustomEndpoint;
  final pulumi.Input<List<String>>? scopes;
  final pulumi.Input<String>? secretManagerCustomEndpoint;
  final pulumi.Input<String>? secretManagerRegionalCustomEndpoint;
  final pulumi.Input<String>? secureSourceManagerCustomEndpoint;
  final pulumi.Input<String>? securityCenterCustomEndpoint;
  final pulumi.Input<String>? securityCenterManagementCustomEndpoint;
  final pulumi.Input<String>? securityCenterV2CustomEndpoint;
  final pulumi.Input<String>? securityScannerCustomEndpoint;
  final pulumi.Input<String>? securitypostureCustomEndpoint;
  final pulumi.Input<String>? serviceDirectoryCustomEndpoint;
  final pulumi.Input<String>? serviceManagementCustomEndpoint;
  final pulumi.Input<String>? serviceNetworkingCustomEndpoint;
  final pulumi.Input<String>? serviceUsageCustomEndpoint;
  final pulumi.Input<String>? siteVerificationCustomEndpoint;
  final pulumi.Input<String>? sourceRepoCustomEndpoint;
  final pulumi.Input<String>? spannerCustomEndpoint;
  final pulumi.Input<String>? sqlCustomEndpoint;
  final pulumi.Input<String>? storageBatchOperationsCustomEndpoint;
  final pulumi.Input<String>? storageControlCustomEndpoint;
  final pulumi.Input<String>? storageCustomEndpoint;
  final pulumi.Input<String>? storageInsightsCustomEndpoint;
  final pulumi.Input<String>? storageTransferCustomEndpoint;
  final pulumi.Input<String>? tagsCustomEndpoint;
  final pulumi.Input<String>? tagsLocationCustomEndpoint;
  final pulumi.Input<String>? tpuV2CustomEndpoint;
  final pulumi.Input<String>? transcoderCustomEndpoint;
  final pulumi.Input<String>? universeDomain;
  final pulumi.Input<bool>? userProjectOverride;
  final pulumi.Input<String>? vertexAiCustomEndpoint;
  final pulumi.Input<String>? vmwareengineCustomEndpoint;
  final pulumi.Input<String>? vpcAccessCustomEndpoint;
  final pulumi.Input<String>? workbenchCustomEndpoint;
  final pulumi.Input<String>? workflowsCustomEndpoint;
  final pulumi.Input<String>? workstationsCustomEndpoint;
  final pulumi.Input<String>? zone;

  /// Creates a new [ProviderArgs].
  /// [accessApprovalCustomEndpoint] Optional.
  /// [accessContextManagerCustomEndpoint] Optional.
  /// [accessToken] Optional.
  /// [activeDirectoryCustomEndpoint] Optional.
  /// [addPulumiAttributionLabel] Optional.
  /// [alloydbCustomEndpoint] Optional.
  /// [apiGatewayCustomEndpoint] Optional.
  /// [apigeeCustomEndpoint] Optional.
  /// [apihubCustomEndpoint] Optional.
  /// [apikeysCustomEndpoint] Optional.
  /// [appEngineCustomEndpoint] Optional.
  /// [apphubCustomEndpoint] Optional.
  /// [artifactRegistryCustomEndpoint] Optional.
  /// [assuredWorkloadsCustomEndpoint] Optional.
  /// [backupDrCustomEndpoint] Optional.
  /// [batching] Optional.
  /// [beyondcorpCustomEndpoint] Optional.
  /// [bigQueryCustomEndpoint] Optional.
  /// [biglakeCustomEndpoint] Optional.
  /// [biglakeIcebergCustomEndpoint] Optional.
  /// [bigqueryAnalyticsHubCustomEndpoint] Optional.
  /// [bigqueryConnectionCustomEndpoint] Optional.
  /// [bigqueryDataTransferCustomEndpoint] Optional.
  /// [bigqueryDatapolicyCustomEndpoint] Optional.
  /// [bigqueryDatapolicyv2CustomEndpoint] Optional.
  /// [bigqueryReservationCustomEndpoint] Optional.
  /// [bigtableCustomEndpoint] Optional.
  /// [billingCustomEndpoint] Optional.
  /// [billingProject] Optional.
  /// [binaryAuthorizationCustomEndpoint] Optional.
  /// [blockchainNodeEngineCustomEndpoint] Optional.
  /// [certificateManagerCustomEndpoint] Optional.
  /// [cesCustomEndpoint] Optional.
  /// [chronicleCustomEndpoint] Optional.
  /// [cloudAssetCustomEndpoint] Optional.
  /// [cloudBillingCustomEndpoint] Optional.
  /// [cloudBuildCustomEndpoint] Optional.
  /// [cloudFunctionsCustomEndpoint] Optional.
  /// [cloudIdentityCustomEndpoint] Optional.
  /// [cloudIdsCustomEndpoint] Optional.
  /// [cloudQuotasCustomEndpoint] Optional.
  /// [cloudResourceManagerCustomEndpoint] Optional.
  /// [cloudRunCustomEndpoint] Optional.
  /// [cloudRunV2CustomEndpoint] Optional.
  /// [cloudSchedulerCustomEndpoint] Optional.
  /// [cloudSecurityComplianceCustomEndpoint] Optional.
  /// [cloudTasksCustomEndpoint] Optional.
  /// [cloudbuildv2CustomEndpoint] Optional.
  /// [clouddeployCustomEndpoint] Optional.
  /// [clouddomainsCustomEndpoint] Optional.
  /// [cloudfunctions2CustomEndpoint] Optional.
  /// [colabCustomEndpoint] Optional.
  /// [composerCustomEndpoint] Optional.
  /// [computeCustomEndpoint] Optional.
  /// [contactCenterInsightsCustomEndpoint] Optional.
  /// [containerAnalysisCustomEndpoint] Optional.
  /// [containerAttachedCustomEndpoint] Optional.
  /// [containerAwsCustomEndpoint] Optional.
  /// [containerAzureCustomEndpoint] Optional.
  /// [containerCustomEndpoint] Optional.
  /// [coreBillingCustomEndpoint] Optional.
  /// [credentials] Optional.
  /// [dataCatalogCustomEndpoint] Optional.
  /// [dataFusionCustomEndpoint] Optional.
  /// [dataLossPreventionCustomEndpoint] Optional.
  /// [dataPipelineCustomEndpoint] Optional.
  /// [databaseMigrationServiceCustomEndpoint] Optional.
  /// [dataflowCustomEndpoint] Optional.
  /// [dataformCustomEndpoint] Optional.
  /// [dataplexCustomEndpoint] Optional.
  /// [dataprocCustomEndpoint] Optional.
  /// [dataprocGdcCustomEndpoint] Optional.
  /// [dataprocMetastoreCustomEndpoint] Optional.
  /// [datastreamCustomEndpoint] Optional.
  /// [defaultLabels] Optional.
  /// [deploymentManagerCustomEndpoint] Optional.
  /// [developerConnectCustomEndpoint] Optional.
  /// [dialogflowCustomEndpoint] Optional.
  /// [dialogflowCxCustomEndpoint] Optional.
  /// [disableGooglePartnerName] Optional.
  /// [discoveryEngineCustomEndpoint] Optional.
  /// [dnsCustomEndpoint] Optional.
  /// [documentAiCustomEndpoint] Optional.
  /// [documentAiWarehouseCustomEndpoint] Optional.
  /// [edgecontainerCustomEndpoint] Optional.
  /// [edgenetworkCustomEndpoint] Optional.
  /// [essentialContactsCustomEndpoint] Optional.
  /// [eventarcCustomEndpoint] Optional.
  /// [externalCredentials] Optional.
  /// [filestoreCustomEndpoint] Optional.
  /// [firebaseAiLogicCustomEndpoint] Optional.
  /// [firebaseAppCheckCustomEndpoint] Optional.
  /// [firebaseAppHostingCustomEndpoint] Optional.
  /// [firebaseCustomEndpoint] Optional.
  /// [firebaseDataConnectCustomEndpoint] Optional.
  /// [firebaseDatabaseCustomEndpoint] Optional.
  /// [firebaseExtensionsCustomEndpoint] Optional.
  /// [firebaseHostingCustomEndpoint] Optional.
  /// [firebaseStorageCustomEndpoint] Optional.
  /// [firebaserulesCustomEndpoint] Optional.
  /// [firestoreCustomEndpoint] Optional.
  /// [geminiCustomEndpoint] Optional.
  /// [gkeBackupCustomEndpoint] Optional.
  /// [gkeHub2CustomEndpoint] Optional.
  /// [gkeHubCustomEndpoint] Optional.
  /// [gkeonpremCustomEndpoint] Optional.
  /// [googlePartnerName] Optional.
  /// [healthcareCustomEndpoint] Optional.
  /// [iam2CustomEndpoint] Optional.
  /// [iam3CustomEndpoint] Optional.
  /// [iamBetaCustomEndpoint] Optional.
  /// [iamCredentialsCustomEndpoint] Optional.
  /// [iamCustomEndpoint] Optional.
  /// [iamWorkforcePoolCustomEndpoint] Optional.
  /// [iapCustomEndpoint] Optional.
  /// [identityPlatformCustomEndpoint] Optional.
  /// [impersonateServiceAccount] Optional.
  /// [impersonateServiceAccountDelegates] Optional.
  /// [integrationConnectorsCustomEndpoint] Optional.
  /// [integrationsCustomEndpoint] Optional.
  /// [kmsCustomEndpoint] Optional.
  /// [loggingCustomEndpoint] Optional.
  /// [lookerCustomEndpoint] Optional.
  /// [lustreCustomEndpoint] Optional.
  /// [managedKafkaCustomEndpoint] Optional.
  /// [memcacheCustomEndpoint] Optional.
  /// [memorystoreCustomEndpoint] Optional.
  /// [migrationCenterCustomEndpoint] Optional.
  /// [mlEngineCustomEndpoint] Optional.
  /// [modelArmorCustomEndpoint] Optional.
  /// [modelArmorGlobalCustomEndpoint] Optional.
  /// [monitoringCustomEndpoint] Optional.
  /// [netappCustomEndpoint] Optional.
  /// [networkConnectivityCustomEndpoint] Optional.
  /// [networkConnectivityv1CustomEndpoint] Optional.
  /// [networkManagementCustomEndpoint] Optional.
  /// [networkSecurityCustomEndpoint] Optional.
  /// [networkServicesCustomEndpoint] Optional.
  /// [notebooksCustomEndpoint] Optional.
  /// [observabilityCustomEndpoint] Optional.
  /// [oracleDatabaseCustomEndpoint] Optional.
  /// [orgPolicyCustomEndpoint] Optional.
  /// [osConfigCustomEndpoint] Optional.
  /// [osConfigV2CustomEndpoint] Optional.
  /// [osLoginCustomEndpoint] Optional.
  /// [parallelstoreCustomEndpoint] Optional.
  /// [parameterManagerCustomEndpoint] Optional.
  /// [parameterManagerRegionalCustomEndpoint] Optional.
  /// [privatecaCustomEndpoint] Optional.
  /// [privilegedAccessManagerCustomEndpoint] Optional.
  /// [project] Optional.
  /// [publicCaCustomEndpoint] Optional.
  /// [pubsubCustomEndpoint] Optional.
  /// [pubsubLiteCustomEndpoint] Optional.
  /// [pulumiAttributionLabelAdditionStrategy] Optional.
  /// [recaptchaEnterpriseCustomEndpoint] Optional.
  /// [redisCustomEndpoint] Optional.
  /// [region] Optional.
  /// [requestReason] Optional.
  /// [requestTimeout] Optional.
  /// [resourceManager3CustomEndpoint] Optional.
  /// [resourceManagerCustomEndpoint] Optional.
  /// [resourceManagerV3CustomEndpoint] Optional.
  /// [runtimeConfigCustomEndpoint] Optional.
  /// [runtimeconfigCustomEndpoint] Optional.
  /// [saasRuntimeCustomEndpoint] Optional.
  /// [scopes] Optional.
  /// [secretManagerCustomEndpoint] Optional.
  /// [secretManagerRegionalCustomEndpoint] Optional.
  /// [secureSourceManagerCustomEndpoint] Optional.
  /// [securityCenterCustomEndpoint] Optional.
  /// [securityCenterManagementCustomEndpoint] Optional.
  /// [securityCenterV2CustomEndpoint] Optional.
  /// [securityScannerCustomEndpoint] Optional.
  /// [securitypostureCustomEndpoint] Optional.
  /// [serviceDirectoryCustomEndpoint] Optional.
  /// [serviceManagementCustomEndpoint] Optional.
  /// [serviceNetworkingCustomEndpoint] Optional.
  /// [serviceUsageCustomEndpoint] Optional.
  /// [siteVerificationCustomEndpoint] Optional.
  /// [sourceRepoCustomEndpoint] Optional.
  /// [spannerCustomEndpoint] Optional.
  /// [sqlCustomEndpoint] Optional.
  /// [storageBatchOperationsCustomEndpoint] Optional.
  /// [storageControlCustomEndpoint] Optional.
  /// [storageCustomEndpoint] Optional.
  /// [storageInsightsCustomEndpoint] Optional.
  /// [storageTransferCustomEndpoint] Optional.
  /// [tagsCustomEndpoint] Optional.
  /// [tagsLocationCustomEndpoint] Optional.
  /// [tpuV2CustomEndpoint] Optional.
  /// [transcoderCustomEndpoint] Optional.
  /// [universeDomain] Optional.
  /// [userProjectOverride] Optional.
  /// [vertexAiCustomEndpoint] Optional.
  /// [vmwareengineCustomEndpoint] Optional.
  /// [vpcAccessCustomEndpoint] Optional.
  /// [workbenchCustomEndpoint] Optional.
  /// [workflowsCustomEndpoint] Optional.
  /// [workstationsCustomEndpoint] Optional.
  /// [zone] Optional.
  ProviderArgs({
    pulumi.Output<String>? accessApprovalCustomEndpoint,
    pulumi.Output<String>? accessContextManagerCustomEndpoint,
    pulumi.Output<String>? accessToken,
    pulumi.Output<String>? activeDirectoryCustomEndpoint,
    pulumi.Output<bool>? addPulumiAttributionLabel,
    pulumi.Output<String>? alloydbCustomEndpoint,
    pulumi.Output<String>? apiGatewayCustomEndpoint,
    pulumi.Output<String>? apigeeCustomEndpoint,
    pulumi.Output<String>? apihubCustomEndpoint,
    pulumi.Output<String>? apikeysCustomEndpoint,
    pulumi.Output<String>? appEngineCustomEndpoint,
    pulumi.Output<String>? apphubCustomEndpoint,
    pulumi.Output<String>? artifactRegistryCustomEndpoint,
    pulumi.Output<String>? assuredWorkloadsCustomEndpoint,
    pulumi.Output<String>? backupDrCustomEndpoint,
    pulumi.Output<ProviderBatching>? batching,
    pulumi.Output<String>? beyondcorpCustomEndpoint,
    pulumi.Output<String>? bigQueryCustomEndpoint,
    pulumi.Output<String>? biglakeCustomEndpoint,
    pulumi.Output<String>? biglakeIcebergCustomEndpoint,
    pulumi.Output<String>? bigqueryAnalyticsHubCustomEndpoint,
    pulumi.Output<String>? bigqueryConnectionCustomEndpoint,
    pulumi.Output<String>? bigqueryDataTransferCustomEndpoint,
    pulumi.Output<String>? bigqueryDatapolicyCustomEndpoint,
    pulumi.Output<String>? bigqueryDatapolicyv2CustomEndpoint,
    pulumi.Output<String>? bigqueryReservationCustomEndpoint,
    pulumi.Output<String>? bigtableCustomEndpoint,
    pulumi.Output<String>? billingCustomEndpoint,
    pulumi.Output<String>? billingProject,
    pulumi.Output<String>? binaryAuthorizationCustomEndpoint,
    pulumi.Output<String>? blockchainNodeEngineCustomEndpoint,
    pulumi.Output<String>? certificateManagerCustomEndpoint,
    pulumi.Output<String>? cesCustomEndpoint,
    pulumi.Output<String>? chronicleCustomEndpoint,
    pulumi.Output<String>? cloudAssetCustomEndpoint,
    pulumi.Output<String>? cloudBillingCustomEndpoint,
    pulumi.Output<String>? cloudBuildCustomEndpoint,
    pulumi.Output<String>? cloudFunctionsCustomEndpoint,
    pulumi.Output<String>? cloudIdentityCustomEndpoint,
    pulumi.Output<String>? cloudIdsCustomEndpoint,
    pulumi.Output<String>? cloudQuotasCustomEndpoint,
    pulumi.Output<String>? cloudResourceManagerCustomEndpoint,
    pulumi.Output<String>? cloudRunCustomEndpoint,
    pulumi.Output<String>? cloudRunV2CustomEndpoint,
    pulumi.Output<String>? cloudSchedulerCustomEndpoint,
    pulumi.Output<String>? cloudSecurityComplianceCustomEndpoint,
    pulumi.Output<String>? cloudTasksCustomEndpoint,
    pulumi.Output<String>? cloudbuildv2CustomEndpoint,
    pulumi.Output<String>? clouddeployCustomEndpoint,
    pulumi.Output<String>? clouddomainsCustomEndpoint,
    pulumi.Output<String>? cloudfunctions2CustomEndpoint,
    pulumi.Output<String>? colabCustomEndpoint,
    pulumi.Output<String>? composerCustomEndpoint,
    pulumi.Output<String>? computeCustomEndpoint,
    pulumi.Output<String>? contactCenterInsightsCustomEndpoint,
    pulumi.Output<String>? containerAnalysisCustomEndpoint,
    pulumi.Output<String>? containerAttachedCustomEndpoint,
    pulumi.Output<String>? containerAwsCustomEndpoint,
    pulumi.Output<String>? containerAzureCustomEndpoint,
    pulumi.Output<String>? containerCustomEndpoint,
    pulumi.Output<String>? coreBillingCustomEndpoint,
    pulumi.Output<String>? credentials,
    pulumi.Output<String>? dataCatalogCustomEndpoint,
    pulumi.Output<String>? dataFusionCustomEndpoint,
    pulumi.Output<String>? dataLossPreventionCustomEndpoint,
    pulumi.Output<String>? dataPipelineCustomEndpoint,
    pulumi.Output<String>? databaseMigrationServiceCustomEndpoint,
    pulumi.Output<String>? dataflowCustomEndpoint,
    pulumi.Output<String>? dataformCustomEndpoint,
    pulumi.Output<String>? dataplexCustomEndpoint,
    pulumi.Output<String>? dataprocCustomEndpoint,
    pulumi.Output<String>? dataprocGdcCustomEndpoint,
    pulumi.Output<String>? dataprocMetastoreCustomEndpoint,
    pulumi.Output<String>? datastreamCustomEndpoint,
    pulumi.Output<Map<String, String>>? defaultLabels,
    pulumi.Output<String>? deploymentManagerCustomEndpoint,
    pulumi.Output<String>? developerConnectCustomEndpoint,
    pulumi.Output<String>? dialogflowCustomEndpoint,
    pulumi.Output<String>? dialogflowCxCustomEndpoint,
    pulumi.Output<bool>? disableGooglePartnerName,
    pulumi.Output<String>? discoveryEngineCustomEndpoint,
    pulumi.Output<String>? dnsCustomEndpoint,
    pulumi.Output<String>? documentAiCustomEndpoint,
    pulumi.Output<String>? documentAiWarehouseCustomEndpoint,
    pulumi.Output<String>? edgecontainerCustomEndpoint,
    pulumi.Output<String>? edgenetworkCustomEndpoint,
    pulumi.Output<String>? essentialContactsCustomEndpoint,
    pulumi.Output<String>? eventarcCustomEndpoint,
    pulumi.Output<ProviderExternalCredentials>? externalCredentials,
    pulumi.Output<String>? filestoreCustomEndpoint,
    pulumi.Output<String>? firebaseAiLogicCustomEndpoint,
    pulumi.Output<String>? firebaseAppCheckCustomEndpoint,
    pulumi.Output<String>? firebaseAppHostingCustomEndpoint,
    pulumi.Output<String>? firebaseCustomEndpoint,
    pulumi.Output<String>? firebaseDataConnectCustomEndpoint,
    pulumi.Output<String>? firebaseDatabaseCustomEndpoint,
    pulumi.Output<String>? firebaseExtensionsCustomEndpoint,
    pulumi.Output<String>? firebaseHostingCustomEndpoint,
    pulumi.Output<String>? firebaseStorageCustomEndpoint,
    pulumi.Output<String>? firebaserulesCustomEndpoint,
    pulumi.Output<String>? firestoreCustomEndpoint,
    pulumi.Output<String>? geminiCustomEndpoint,
    pulumi.Output<String>? gkeBackupCustomEndpoint,
    pulumi.Output<String>? gkeHub2CustomEndpoint,
    pulumi.Output<String>? gkeHubCustomEndpoint,
    pulumi.Output<String>? gkeonpremCustomEndpoint,
    pulumi.Output<String>? googlePartnerName,
    pulumi.Output<String>? healthcareCustomEndpoint,
    pulumi.Output<String>? iam2CustomEndpoint,
    pulumi.Output<String>? iam3CustomEndpoint,
    pulumi.Output<String>? iamBetaCustomEndpoint,
    pulumi.Output<String>? iamCredentialsCustomEndpoint,
    pulumi.Output<String>? iamCustomEndpoint,
    pulumi.Output<String>? iamWorkforcePoolCustomEndpoint,
    pulumi.Output<String>? iapCustomEndpoint,
    pulumi.Output<String>? identityPlatformCustomEndpoint,
    pulumi.Output<String>? impersonateServiceAccount,
    pulumi.Output<List<String>>? impersonateServiceAccountDelegates,
    pulumi.Output<String>? integrationConnectorsCustomEndpoint,
    pulumi.Output<String>? integrationsCustomEndpoint,
    pulumi.Output<String>? kmsCustomEndpoint,
    pulumi.Output<String>? loggingCustomEndpoint,
    pulumi.Output<String>? lookerCustomEndpoint,
    pulumi.Output<String>? lustreCustomEndpoint,
    pulumi.Output<String>? managedKafkaCustomEndpoint,
    pulumi.Output<String>? memcacheCustomEndpoint,
    pulumi.Output<String>? memorystoreCustomEndpoint,
    pulumi.Output<String>? migrationCenterCustomEndpoint,
    pulumi.Output<String>? mlEngineCustomEndpoint,
    pulumi.Output<String>? modelArmorCustomEndpoint,
    pulumi.Output<String>? modelArmorGlobalCustomEndpoint,
    pulumi.Output<String>? monitoringCustomEndpoint,
    pulumi.Output<String>? netappCustomEndpoint,
    pulumi.Output<String>? networkConnectivityCustomEndpoint,
    pulumi.Output<String>? networkConnectivityv1CustomEndpoint,
    pulumi.Output<String>? networkManagementCustomEndpoint,
    pulumi.Output<String>? networkSecurityCustomEndpoint,
    pulumi.Output<String>? networkServicesCustomEndpoint,
    pulumi.Output<String>? notebooksCustomEndpoint,
    pulumi.Output<String>? observabilityCustomEndpoint,
    pulumi.Output<String>? oracleDatabaseCustomEndpoint,
    pulumi.Output<String>? orgPolicyCustomEndpoint,
    pulumi.Output<String>? osConfigCustomEndpoint,
    pulumi.Output<String>? osConfigV2CustomEndpoint,
    pulumi.Output<String>? osLoginCustomEndpoint,
    pulumi.Output<String>? parallelstoreCustomEndpoint,
    pulumi.Output<String>? parameterManagerCustomEndpoint,
    pulumi.Output<String>? parameterManagerRegionalCustomEndpoint,
    pulumi.Output<String>? privatecaCustomEndpoint,
    pulumi.Output<String>? privilegedAccessManagerCustomEndpoint,
    pulumi.Output<String>? project,
    pulumi.Output<String>? publicCaCustomEndpoint,
    pulumi.Output<String>? pubsubCustomEndpoint,
    pulumi.Output<String>? pubsubLiteCustomEndpoint,
    pulumi.Output<String>? pulumiAttributionLabelAdditionStrategy,
    pulumi.Output<String>? recaptchaEnterpriseCustomEndpoint,
    pulumi.Output<String>? redisCustomEndpoint,
    pulumi.Output<String>? region,
    pulumi.Output<String>? requestReason,
    pulumi.Output<String>? requestTimeout,
    pulumi.Output<String>? resourceManager3CustomEndpoint,
    pulumi.Output<String>? resourceManagerCustomEndpoint,
    pulumi.Output<String>? resourceManagerV3CustomEndpoint,
    pulumi.Output<String>? runtimeConfigCustomEndpoint,
    pulumi.Output<String>? runtimeconfigCustomEndpoint,
    pulumi.Output<String>? saasRuntimeCustomEndpoint,
    pulumi.Output<List<String>>? scopes,
    pulumi.Output<String>? secretManagerCustomEndpoint,
    pulumi.Output<String>? secretManagerRegionalCustomEndpoint,
    pulumi.Output<String>? secureSourceManagerCustomEndpoint,
    pulumi.Output<String>? securityCenterCustomEndpoint,
    pulumi.Output<String>? securityCenterManagementCustomEndpoint,
    pulumi.Output<String>? securityCenterV2CustomEndpoint,
    pulumi.Output<String>? securityScannerCustomEndpoint,
    pulumi.Output<String>? securitypostureCustomEndpoint,
    pulumi.Output<String>? serviceDirectoryCustomEndpoint,
    pulumi.Output<String>? serviceManagementCustomEndpoint,
    pulumi.Output<String>? serviceNetworkingCustomEndpoint,
    pulumi.Output<String>? serviceUsageCustomEndpoint,
    pulumi.Output<String>? siteVerificationCustomEndpoint,
    pulumi.Output<String>? sourceRepoCustomEndpoint,
    pulumi.Output<String>? spannerCustomEndpoint,
    pulumi.Output<String>? sqlCustomEndpoint,
    pulumi.Output<String>? storageBatchOperationsCustomEndpoint,
    pulumi.Output<String>? storageControlCustomEndpoint,
    pulumi.Output<String>? storageCustomEndpoint,
    pulumi.Output<String>? storageInsightsCustomEndpoint,
    pulumi.Output<String>? storageTransferCustomEndpoint,
    pulumi.Output<String>? tagsCustomEndpoint,
    pulumi.Output<String>? tagsLocationCustomEndpoint,
    pulumi.Output<String>? tpuV2CustomEndpoint,
    pulumi.Output<String>? transcoderCustomEndpoint,
    pulumi.Output<String>? universeDomain,
    pulumi.Output<bool>? userProjectOverride,
    pulumi.Output<String>? vertexAiCustomEndpoint,
    pulumi.Output<String>? vmwareengineCustomEndpoint,
    pulumi.Output<String>? vpcAccessCustomEndpoint,
    pulumi.Output<String>? workbenchCustomEndpoint,
    pulumi.Output<String>? workflowsCustomEndpoint,
    pulumi.Output<String>? workstationsCustomEndpoint,
    pulumi.Output<String>? zone,
  }) :
      accessApprovalCustomEndpoint = pulumi.Input.asOptionalInput<String>(accessApprovalCustomEndpoint),
      accessContextManagerCustomEndpoint = pulumi.Input.asOptionalInput<String>(accessContextManagerCustomEndpoint),
      accessToken = pulumi.Input.asOptionalInput<String>(accessToken),
      activeDirectoryCustomEndpoint = pulumi.Input.asOptionalInput<String>(activeDirectoryCustomEndpoint),
      addPulumiAttributionLabel = pulumi.Input.asOptionalInput<bool>(addPulumiAttributionLabel),
      alloydbCustomEndpoint = pulumi.Input.asOptionalInput<String>(alloydbCustomEndpoint),
      apiGatewayCustomEndpoint = pulumi.Input.asOptionalInput<String>(apiGatewayCustomEndpoint),
      apigeeCustomEndpoint = pulumi.Input.asOptionalInput<String>(apigeeCustomEndpoint),
      apihubCustomEndpoint = pulumi.Input.asOptionalInput<String>(apihubCustomEndpoint),
      apikeysCustomEndpoint = pulumi.Input.asOptionalInput<String>(apikeysCustomEndpoint),
      appEngineCustomEndpoint = pulumi.Input.asOptionalInput<String>(appEngineCustomEndpoint),
      apphubCustomEndpoint = pulumi.Input.asOptionalInput<String>(apphubCustomEndpoint),
      artifactRegistryCustomEndpoint = pulumi.Input.asOptionalInput<String>(artifactRegistryCustomEndpoint),
      assuredWorkloadsCustomEndpoint = pulumi.Input.asOptionalInput<String>(assuredWorkloadsCustomEndpoint),
      backupDrCustomEndpoint = pulumi.Input.asOptionalInput<String>(backupDrCustomEndpoint),
      batching = pulumi.Input.asOptionalInput<ProviderBatching>(batching),
      beyondcorpCustomEndpoint = pulumi.Input.asOptionalInput<String>(beyondcorpCustomEndpoint),
      bigQueryCustomEndpoint = pulumi.Input.asOptionalInput<String>(bigQueryCustomEndpoint),
      biglakeCustomEndpoint = pulumi.Input.asOptionalInput<String>(biglakeCustomEndpoint),
      biglakeIcebergCustomEndpoint = pulumi.Input.asOptionalInput<String>(biglakeIcebergCustomEndpoint),
      bigqueryAnalyticsHubCustomEndpoint = pulumi.Input.asOptionalInput<String>(bigqueryAnalyticsHubCustomEndpoint),
      bigqueryConnectionCustomEndpoint = pulumi.Input.asOptionalInput<String>(bigqueryConnectionCustomEndpoint),
      bigqueryDataTransferCustomEndpoint = pulumi.Input.asOptionalInput<String>(bigqueryDataTransferCustomEndpoint),
      bigqueryDatapolicyCustomEndpoint = pulumi.Input.asOptionalInput<String>(bigqueryDatapolicyCustomEndpoint),
      bigqueryDatapolicyv2CustomEndpoint = pulumi.Input.asOptionalInput<String>(bigqueryDatapolicyv2CustomEndpoint),
      bigqueryReservationCustomEndpoint = pulumi.Input.asOptionalInput<String>(bigqueryReservationCustomEndpoint),
      bigtableCustomEndpoint = pulumi.Input.asOptionalInput<String>(bigtableCustomEndpoint),
      billingCustomEndpoint = pulumi.Input.asOptionalInput<String>(billingCustomEndpoint),
      billingProject = pulumi.Input.asOptionalInput<String>(billingProject),
      binaryAuthorizationCustomEndpoint = pulumi.Input.asOptionalInput<String>(binaryAuthorizationCustomEndpoint),
      blockchainNodeEngineCustomEndpoint = pulumi.Input.asOptionalInput<String>(blockchainNodeEngineCustomEndpoint),
      certificateManagerCustomEndpoint = pulumi.Input.asOptionalInput<String>(certificateManagerCustomEndpoint),
      cesCustomEndpoint = pulumi.Input.asOptionalInput<String>(cesCustomEndpoint),
      chronicleCustomEndpoint = pulumi.Input.asOptionalInput<String>(chronicleCustomEndpoint),
      cloudAssetCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudAssetCustomEndpoint),
      cloudBillingCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudBillingCustomEndpoint),
      cloudBuildCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudBuildCustomEndpoint),
      cloudFunctionsCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudFunctionsCustomEndpoint),
      cloudIdentityCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudIdentityCustomEndpoint),
      cloudIdsCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudIdsCustomEndpoint),
      cloudQuotasCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudQuotasCustomEndpoint),
      cloudResourceManagerCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudResourceManagerCustomEndpoint),
      cloudRunCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudRunCustomEndpoint),
      cloudRunV2CustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudRunV2CustomEndpoint),
      cloudSchedulerCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudSchedulerCustomEndpoint),
      cloudSecurityComplianceCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudSecurityComplianceCustomEndpoint),
      cloudTasksCustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudTasksCustomEndpoint),
      cloudbuildv2CustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudbuildv2CustomEndpoint),
      clouddeployCustomEndpoint = pulumi.Input.asOptionalInput<String>(clouddeployCustomEndpoint),
      clouddomainsCustomEndpoint = pulumi.Input.asOptionalInput<String>(clouddomainsCustomEndpoint),
      cloudfunctions2CustomEndpoint = pulumi.Input.asOptionalInput<String>(cloudfunctions2CustomEndpoint),
      colabCustomEndpoint = pulumi.Input.asOptionalInput<String>(colabCustomEndpoint),
      composerCustomEndpoint = pulumi.Input.asOptionalInput<String>(composerCustomEndpoint),
      computeCustomEndpoint = pulumi.Input.asOptionalInput<String>(computeCustomEndpoint),
      contactCenterInsightsCustomEndpoint = pulumi.Input.asOptionalInput<String>(contactCenterInsightsCustomEndpoint),
      containerAnalysisCustomEndpoint = pulumi.Input.asOptionalInput<String>(containerAnalysisCustomEndpoint),
      containerAttachedCustomEndpoint = pulumi.Input.asOptionalInput<String>(containerAttachedCustomEndpoint),
      containerAwsCustomEndpoint = pulumi.Input.asOptionalInput<String>(containerAwsCustomEndpoint),
      containerAzureCustomEndpoint = pulumi.Input.asOptionalInput<String>(containerAzureCustomEndpoint),
      containerCustomEndpoint = pulumi.Input.asOptionalInput<String>(containerCustomEndpoint),
      coreBillingCustomEndpoint = pulumi.Input.asOptionalInput<String>(coreBillingCustomEndpoint),
      credentials = pulumi.Input.asOptionalInput<String>(credentials),
      dataCatalogCustomEndpoint = pulumi.Input.asOptionalInput<String>(dataCatalogCustomEndpoint),
      dataFusionCustomEndpoint = pulumi.Input.asOptionalInput<String>(dataFusionCustomEndpoint),
      dataLossPreventionCustomEndpoint = pulumi.Input.asOptionalInput<String>(dataLossPreventionCustomEndpoint),
      dataPipelineCustomEndpoint = pulumi.Input.asOptionalInput<String>(dataPipelineCustomEndpoint),
      databaseMigrationServiceCustomEndpoint = pulumi.Input.asOptionalInput<String>(databaseMigrationServiceCustomEndpoint),
      dataflowCustomEndpoint = pulumi.Input.asOptionalInput<String>(dataflowCustomEndpoint),
      dataformCustomEndpoint = pulumi.Input.asOptionalInput<String>(dataformCustomEndpoint),
      dataplexCustomEndpoint = pulumi.Input.asOptionalInput<String>(dataplexCustomEndpoint),
      dataprocCustomEndpoint = pulumi.Input.asOptionalInput<String>(dataprocCustomEndpoint),
      dataprocGdcCustomEndpoint = pulumi.Input.asOptionalInput<String>(dataprocGdcCustomEndpoint),
      dataprocMetastoreCustomEndpoint = pulumi.Input.asOptionalInput<String>(dataprocMetastoreCustomEndpoint),
      datastreamCustomEndpoint = pulumi.Input.asOptionalInput<String>(datastreamCustomEndpoint),
      defaultLabels = pulumi.Input.asOptionalInput<Map<String, String>>(defaultLabels),
      deploymentManagerCustomEndpoint = pulumi.Input.asOptionalInput<String>(deploymentManagerCustomEndpoint),
      developerConnectCustomEndpoint = pulumi.Input.asOptionalInput<String>(developerConnectCustomEndpoint),
      dialogflowCustomEndpoint = pulumi.Input.asOptionalInput<String>(dialogflowCustomEndpoint),
      dialogflowCxCustomEndpoint = pulumi.Input.asOptionalInput<String>(dialogflowCxCustomEndpoint),
      disableGooglePartnerName = pulumi.Input.asOptionalInput<bool>(disableGooglePartnerName),
      discoveryEngineCustomEndpoint = pulumi.Input.asOptionalInput<String>(discoveryEngineCustomEndpoint),
      dnsCustomEndpoint = pulumi.Input.asOptionalInput<String>(dnsCustomEndpoint),
      documentAiCustomEndpoint = pulumi.Input.asOptionalInput<String>(documentAiCustomEndpoint),
      documentAiWarehouseCustomEndpoint = pulumi.Input.asOptionalInput<String>(documentAiWarehouseCustomEndpoint),
      edgecontainerCustomEndpoint = pulumi.Input.asOptionalInput<String>(edgecontainerCustomEndpoint),
      edgenetworkCustomEndpoint = pulumi.Input.asOptionalInput<String>(edgenetworkCustomEndpoint),
      essentialContactsCustomEndpoint = pulumi.Input.asOptionalInput<String>(essentialContactsCustomEndpoint),
      eventarcCustomEndpoint = pulumi.Input.asOptionalInput<String>(eventarcCustomEndpoint),
      externalCredentials = pulumi.Input.asOptionalInput<ProviderExternalCredentials>(externalCredentials),
      filestoreCustomEndpoint = pulumi.Input.asOptionalInput<String>(filestoreCustomEndpoint),
      firebaseAiLogicCustomEndpoint = pulumi.Input.asOptionalInput<String>(firebaseAiLogicCustomEndpoint),
      firebaseAppCheckCustomEndpoint = pulumi.Input.asOptionalInput<String>(firebaseAppCheckCustomEndpoint),
      firebaseAppHostingCustomEndpoint = pulumi.Input.asOptionalInput<String>(firebaseAppHostingCustomEndpoint),
      firebaseCustomEndpoint = pulumi.Input.asOptionalInput<String>(firebaseCustomEndpoint),
      firebaseDataConnectCustomEndpoint = pulumi.Input.asOptionalInput<String>(firebaseDataConnectCustomEndpoint),
      firebaseDatabaseCustomEndpoint = pulumi.Input.asOptionalInput<String>(firebaseDatabaseCustomEndpoint),
      firebaseExtensionsCustomEndpoint = pulumi.Input.asOptionalInput<String>(firebaseExtensionsCustomEndpoint),
      firebaseHostingCustomEndpoint = pulumi.Input.asOptionalInput<String>(firebaseHostingCustomEndpoint),
      firebaseStorageCustomEndpoint = pulumi.Input.asOptionalInput<String>(firebaseStorageCustomEndpoint),
      firebaserulesCustomEndpoint = pulumi.Input.asOptionalInput<String>(firebaserulesCustomEndpoint),
      firestoreCustomEndpoint = pulumi.Input.asOptionalInput<String>(firestoreCustomEndpoint),
      geminiCustomEndpoint = pulumi.Input.asOptionalInput<String>(geminiCustomEndpoint),
      gkeBackupCustomEndpoint = pulumi.Input.asOptionalInput<String>(gkeBackupCustomEndpoint),
      gkeHub2CustomEndpoint = pulumi.Input.asOptionalInput<String>(gkeHub2CustomEndpoint),
      gkeHubCustomEndpoint = pulumi.Input.asOptionalInput<String>(gkeHubCustomEndpoint),
      gkeonpremCustomEndpoint = pulumi.Input.asOptionalInput<String>(gkeonpremCustomEndpoint),
      googlePartnerName = pulumi.Input.asOptionalInput<String>(googlePartnerName),
      healthcareCustomEndpoint = pulumi.Input.asOptionalInput<String>(healthcareCustomEndpoint),
      iam2CustomEndpoint = pulumi.Input.asOptionalInput<String>(iam2CustomEndpoint),
      iam3CustomEndpoint = pulumi.Input.asOptionalInput<String>(iam3CustomEndpoint),
      iamBetaCustomEndpoint = pulumi.Input.asOptionalInput<String>(iamBetaCustomEndpoint),
      iamCredentialsCustomEndpoint = pulumi.Input.asOptionalInput<String>(iamCredentialsCustomEndpoint),
      iamCustomEndpoint = pulumi.Input.asOptionalInput<String>(iamCustomEndpoint),
      iamWorkforcePoolCustomEndpoint = pulumi.Input.asOptionalInput<String>(iamWorkforcePoolCustomEndpoint),
      iapCustomEndpoint = pulumi.Input.asOptionalInput<String>(iapCustomEndpoint),
      identityPlatformCustomEndpoint = pulumi.Input.asOptionalInput<String>(identityPlatformCustomEndpoint),
      impersonateServiceAccount = pulumi.Input.asOptionalInput<String>(impersonateServiceAccount),
      impersonateServiceAccountDelegates = pulumi.Input.asOptionalInput<List<String>>(impersonateServiceAccountDelegates),
      integrationConnectorsCustomEndpoint = pulumi.Input.asOptionalInput<String>(integrationConnectorsCustomEndpoint),
      integrationsCustomEndpoint = pulumi.Input.asOptionalInput<String>(integrationsCustomEndpoint),
      kmsCustomEndpoint = pulumi.Input.asOptionalInput<String>(kmsCustomEndpoint),
      loggingCustomEndpoint = pulumi.Input.asOptionalInput<String>(loggingCustomEndpoint),
      lookerCustomEndpoint = pulumi.Input.asOptionalInput<String>(lookerCustomEndpoint),
      lustreCustomEndpoint = pulumi.Input.asOptionalInput<String>(lustreCustomEndpoint),
      managedKafkaCustomEndpoint = pulumi.Input.asOptionalInput<String>(managedKafkaCustomEndpoint),
      memcacheCustomEndpoint = pulumi.Input.asOptionalInput<String>(memcacheCustomEndpoint),
      memorystoreCustomEndpoint = pulumi.Input.asOptionalInput<String>(memorystoreCustomEndpoint),
      migrationCenterCustomEndpoint = pulumi.Input.asOptionalInput<String>(migrationCenterCustomEndpoint),
      mlEngineCustomEndpoint = pulumi.Input.asOptionalInput<String>(mlEngineCustomEndpoint),
      modelArmorCustomEndpoint = pulumi.Input.asOptionalInput<String>(modelArmorCustomEndpoint),
      modelArmorGlobalCustomEndpoint = pulumi.Input.asOptionalInput<String>(modelArmorGlobalCustomEndpoint),
      monitoringCustomEndpoint = pulumi.Input.asOptionalInput<String>(monitoringCustomEndpoint),
      netappCustomEndpoint = pulumi.Input.asOptionalInput<String>(netappCustomEndpoint),
      networkConnectivityCustomEndpoint = pulumi.Input.asOptionalInput<String>(networkConnectivityCustomEndpoint),
      networkConnectivityv1CustomEndpoint = pulumi.Input.asOptionalInput<String>(networkConnectivityv1CustomEndpoint),
      networkManagementCustomEndpoint = pulumi.Input.asOptionalInput<String>(networkManagementCustomEndpoint),
      networkSecurityCustomEndpoint = pulumi.Input.asOptionalInput<String>(networkSecurityCustomEndpoint),
      networkServicesCustomEndpoint = pulumi.Input.asOptionalInput<String>(networkServicesCustomEndpoint),
      notebooksCustomEndpoint = pulumi.Input.asOptionalInput<String>(notebooksCustomEndpoint),
      observabilityCustomEndpoint = pulumi.Input.asOptionalInput<String>(observabilityCustomEndpoint),
      oracleDatabaseCustomEndpoint = pulumi.Input.asOptionalInput<String>(oracleDatabaseCustomEndpoint),
      orgPolicyCustomEndpoint = pulumi.Input.asOptionalInput<String>(orgPolicyCustomEndpoint),
      osConfigCustomEndpoint = pulumi.Input.asOptionalInput<String>(osConfigCustomEndpoint),
      osConfigV2CustomEndpoint = pulumi.Input.asOptionalInput<String>(osConfigV2CustomEndpoint),
      osLoginCustomEndpoint = pulumi.Input.asOptionalInput<String>(osLoginCustomEndpoint),
      parallelstoreCustomEndpoint = pulumi.Input.asOptionalInput<String>(parallelstoreCustomEndpoint),
      parameterManagerCustomEndpoint = pulumi.Input.asOptionalInput<String>(parameterManagerCustomEndpoint),
      parameterManagerRegionalCustomEndpoint = pulumi.Input.asOptionalInput<String>(parameterManagerRegionalCustomEndpoint),
      privatecaCustomEndpoint = pulumi.Input.asOptionalInput<String>(privatecaCustomEndpoint),
      privilegedAccessManagerCustomEndpoint = pulumi.Input.asOptionalInput<String>(privilegedAccessManagerCustomEndpoint),
      project = pulumi.Input.asOptionalInput<String>(project),
      publicCaCustomEndpoint = pulumi.Input.asOptionalInput<String>(publicCaCustomEndpoint),
      pubsubCustomEndpoint = pulumi.Input.asOptionalInput<String>(pubsubCustomEndpoint),
      pubsubLiteCustomEndpoint = pulumi.Input.asOptionalInput<String>(pubsubLiteCustomEndpoint),
      pulumiAttributionLabelAdditionStrategy = pulumi.Input.asOptionalInput<String>(pulumiAttributionLabelAdditionStrategy),
      recaptchaEnterpriseCustomEndpoint = pulumi.Input.asOptionalInput<String>(recaptchaEnterpriseCustomEndpoint),
      redisCustomEndpoint = pulumi.Input.asOptionalInput<String>(redisCustomEndpoint),
      region = pulumi.Input.asOptionalInput<String>(region),
      requestReason = pulumi.Input.asOptionalInput<String>(requestReason),
      requestTimeout = pulumi.Input.asOptionalInput<String>(requestTimeout),
      resourceManager3CustomEndpoint = pulumi.Input.asOptionalInput<String>(resourceManager3CustomEndpoint),
      resourceManagerCustomEndpoint = pulumi.Input.asOptionalInput<String>(resourceManagerCustomEndpoint),
      resourceManagerV3CustomEndpoint = pulumi.Input.asOptionalInput<String>(resourceManagerV3CustomEndpoint),
      runtimeConfigCustomEndpoint = pulumi.Input.asOptionalInput<String>(runtimeConfigCustomEndpoint),
      runtimeconfigCustomEndpoint = pulumi.Input.asOptionalInput<String>(runtimeconfigCustomEndpoint),
      saasRuntimeCustomEndpoint = pulumi.Input.asOptionalInput<String>(saasRuntimeCustomEndpoint),
      scopes = pulumi.Input.asOptionalInput<List<String>>(scopes),
      secretManagerCustomEndpoint = pulumi.Input.asOptionalInput<String>(secretManagerCustomEndpoint),
      secretManagerRegionalCustomEndpoint = pulumi.Input.asOptionalInput<String>(secretManagerRegionalCustomEndpoint),
      secureSourceManagerCustomEndpoint = pulumi.Input.asOptionalInput<String>(secureSourceManagerCustomEndpoint),
      securityCenterCustomEndpoint = pulumi.Input.asOptionalInput<String>(securityCenterCustomEndpoint),
      securityCenterManagementCustomEndpoint = pulumi.Input.asOptionalInput<String>(securityCenterManagementCustomEndpoint),
      securityCenterV2CustomEndpoint = pulumi.Input.asOptionalInput<String>(securityCenterV2CustomEndpoint),
      securityScannerCustomEndpoint = pulumi.Input.asOptionalInput<String>(securityScannerCustomEndpoint),
      securitypostureCustomEndpoint = pulumi.Input.asOptionalInput<String>(securitypostureCustomEndpoint),
      serviceDirectoryCustomEndpoint = pulumi.Input.asOptionalInput<String>(serviceDirectoryCustomEndpoint),
      serviceManagementCustomEndpoint = pulumi.Input.asOptionalInput<String>(serviceManagementCustomEndpoint),
      serviceNetworkingCustomEndpoint = pulumi.Input.asOptionalInput<String>(serviceNetworkingCustomEndpoint),
      serviceUsageCustomEndpoint = pulumi.Input.asOptionalInput<String>(serviceUsageCustomEndpoint),
      siteVerificationCustomEndpoint = pulumi.Input.asOptionalInput<String>(siteVerificationCustomEndpoint),
      sourceRepoCustomEndpoint = pulumi.Input.asOptionalInput<String>(sourceRepoCustomEndpoint),
      spannerCustomEndpoint = pulumi.Input.asOptionalInput<String>(spannerCustomEndpoint),
      sqlCustomEndpoint = pulumi.Input.asOptionalInput<String>(sqlCustomEndpoint),
      storageBatchOperationsCustomEndpoint = pulumi.Input.asOptionalInput<String>(storageBatchOperationsCustomEndpoint),
      storageControlCustomEndpoint = pulumi.Input.asOptionalInput<String>(storageControlCustomEndpoint),
      storageCustomEndpoint = pulumi.Input.asOptionalInput<String>(storageCustomEndpoint),
      storageInsightsCustomEndpoint = pulumi.Input.asOptionalInput<String>(storageInsightsCustomEndpoint),
      storageTransferCustomEndpoint = pulumi.Input.asOptionalInput<String>(storageTransferCustomEndpoint),
      tagsCustomEndpoint = pulumi.Input.asOptionalInput<String>(tagsCustomEndpoint),
      tagsLocationCustomEndpoint = pulumi.Input.asOptionalInput<String>(tagsLocationCustomEndpoint),
      tpuV2CustomEndpoint = pulumi.Input.asOptionalInput<String>(tpuV2CustomEndpoint),
      transcoderCustomEndpoint = pulumi.Input.asOptionalInput<String>(transcoderCustomEndpoint),
      universeDomain = pulumi.Input.asOptionalInput<String>(universeDomain),
      userProjectOverride = pulumi.Input.asOptionalInput<bool>(userProjectOverride),
      vertexAiCustomEndpoint = pulumi.Input.asOptionalInput<String>(vertexAiCustomEndpoint),
      vmwareengineCustomEndpoint = pulumi.Input.asOptionalInput<String>(vmwareengineCustomEndpoint),
      vpcAccessCustomEndpoint = pulumi.Input.asOptionalInput<String>(vpcAccessCustomEndpoint),
      workbenchCustomEndpoint = pulumi.Input.asOptionalInput<String>(workbenchCustomEndpoint),
      workflowsCustomEndpoint = pulumi.Input.asOptionalInput<String>(workflowsCustomEndpoint),
      workstationsCustomEndpoint = pulumi.Input.asOptionalInput<String>(workstationsCustomEndpoint),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessApprovalCustomEndpoint': ?accessApprovalCustomEndpoint,
      'accessContextManagerCustomEndpoint': ?accessContextManagerCustomEndpoint,
      'accessToken': ?accessToken,
      'activeDirectoryCustomEndpoint': ?activeDirectoryCustomEndpoint,
      'addPulumiAttributionLabel': ?addPulumiAttributionLabel,
      'alloydbCustomEndpoint': ?alloydbCustomEndpoint,
      'apiGatewayCustomEndpoint': ?apiGatewayCustomEndpoint,
      'apigeeCustomEndpoint': ?apigeeCustomEndpoint,
      'apihubCustomEndpoint': ?apihubCustomEndpoint,
      'apikeysCustomEndpoint': ?apikeysCustomEndpoint,
      'appEngineCustomEndpoint': ?appEngineCustomEndpoint,
      'apphubCustomEndpoint': ?apphubCustomEndpoint,
      'artifactRegistryCustomEndpoint': ?artifactRegistryCustomEndpoint,
      'assuredWorkloadsCustomEndpoint': ?assuredWorkloadsCustomEndpoint,
      'backupDrCustomEndpoint': ?backupDrCustomEndpoint,
      'batching': ?pulumi.Input.mapOptionalInputValue<ProviderBatching, Map<String, dynamic>>(batching, (value) => value.toMap()),
      'beyondcorpCustomEndpoint': ?beyondcorpCustomEndpoint,
      'bigQueryCustomEndpoint': ?bigQueryCustomEndpoint,
      'biglakeCustomEndpoint': ?biglakeCustomEndpoint,
      'biglakeIcebergCustomEndpoint': ?biglakeIcebergCustomEndpoint,
      'bigqueryAnalyticsHubCustomEndpoint': ?bigqueryAnalyticsHubCustomEndpoint,
      'bigqueryConnectionCustomEndpoint': ?bigqueryConnectionCustomEndpoint,
      'bigqueryDataTransferCustomEndpoint': ?bigqueryDataTransferCustomEndpoint,
      'bigqueryDatapolicyCustomEndpoint': ?bigqueryDatapolicyCustomEndpoint,
      'bigqueryDatapolicyv2CustomEndpoint': ?bigqueryDatapolicyv2CustomEndpoint,
      'bigqueryReservationCustomEndpoint': ?bigqueryReservationCustomEndpoint,
      'bigtableCustomEndpoint': ?bigtableCustomEndpoint,
      'billingCustomEndpoint': ?billingCustomEndpoint,
      'billingProject': ?billingProject,
      'binaryAuthorizationCustomEndpoint': ?binaryAuthorizationCustomEndpoint,
      'blockchainNodeEngineCustomEndpoint': ?blockchainNodeEngineCustomEndpoint,
      'certificateManagerCustomEndpoint': ?certificateManagerCustomEndpoint,
      'cesCustomEndpoint': ?cesCustomEndpoint,
      'chronicleCustomEndpoint': ?chronicleCustomEndpoint,
      'cloudAssetCustomEndpoint': ?cloudAssetCustomEndpoint,
      'cloudBillingCustomEndpoint': ?cloudBillingCustomEndpoint,
      'cloudBuildCustomEndpoint': ?cloudBuildCustomEndpoint,
      'cloudFunctionsCustomEndpoint': ?cloudFunctionsCustomEndpoint,
      'cloudIdentityCustomEndpoint': ?cloudIdentityCustomEndpoint,
      'cloudIdsCustomEndpoint': ?cloudIdsCustomEndpoint,
      'cloudQuotasCustomEndpoint': ?cloudQuotasCustomEndpoint,
      'cloudResourceManagerCustomEndpoint': ?cloudResourceManagerCustomEndpoint,
      'cloudRunCustomEndpoint': ?cloudRunCustomEndpoint,
      'cloudRunV2CustomEndpoint': ?cloudRunV2CustomEndpoint,
      'cloudSchedulerCustomEndpoint': ?cloudSchedulerCustomEndpoint,
      'cloudSecurityComplianceCustomEndpoint': ?cloudSecurityComplianceCustomEndpoint,
      'cloudTasksCustomEndpoint': ?cloudTasksCustomEndpoint,
      'cloudbuildv2CustomEndpoint': ?cloudbuildv2CustomEndpoint,
      'clouddeployCustomEndpoint': ?clouddeployCustomEndpoint,
      'clouddomainsCustomEndpoint': ?clouddomainsCustomEndpoint,
      'cloudfunctions2CustomEndpoint': ?cloudfunctions2CustomEndpoint,
      'colabCustomEndpoint': ?colabCustomEndpoint,
      'composerCustomEndpoint': ?composerCustomEndpoint,
      'computeCustomEndpoint': ?computeCustomEndpoint,
      'contactCenterInsightsCustomEndpoint': ?contactCenterInsightsCustomEndpoint,
      'containerAnalysisCustomEndpoint': ?containerAnalysisCustomEndpoint,
      'containerAttachedCustomEndpoint': ?containerAttachedCustomEndpoint,
      'containerAwsCustomEndpoint': ?containerAwsCustomEndpoint,
      'containerAzureCustomEndpoint': ?containerAzureCustomEndpoint,
      'containerCustomEndpoint': ?containerCustomEndpoint,
      'coreBillingCustomEndpoint': ?coreBillingCustomEndpoint,
      'credentials': ?credentials,
      'dataCatalogCustomEndpoint': ?dataCatalogCustomEndpoint,
      'dataFusionCustomEndpoint': ?dataFusionCustomEndpoint,
      'dataLossPreventionCustomEndpoint': ?dataLossPreventionCustomEndpoint,
      'dataPipelineCustomEndpoint': ?dataPipelineCustomEndpoint,
      'databaseMigrationServiceCustomEndpoint': ?databaseMigrationServiceCustomEndpoint,
      'dataflowCustomEndpoint': ?dataflowCustomEndpoint,
      'dataformCustomEndpoint': ?dataformCustomEndpoint,
      'dataplexCustomEndpoint': ?dataplexCustomEndpoint,
      'dataprocCustomEndpoint': ?dataprocCustomEndpoint,
      'dataprocGdcCustomEndpoint': ?dataprocGdcCustomEndpoint,
      'dataprocMetastoreCustomEndpoint': ?dataprocMetastoreCustomEndpoint,
      'datastreamCustomEndpoint': ?datastreamCustomEndpoint,
      'defaultLabels': ?defaultLabels,
      'deploymentManagerCustomEndpoint': ?deploymentManagerCustomEndpoint,
      'developerConnectCustomEndpoint': ?developerConnectCustomEndpoint,
      'dialogflowCustomEndpoint': ?dialogflowCustomEndpoint,
      'dialogflowCxCustomEndpoint': ?dialogflowCxCustomEndpoint,
      'disableGooglePartnerName': ?disableGooglePartnerName,
      'discoveryEngineCustomEndpoint': ?discoveryEngineCustomEndpoint,
      'dnsCustomEndpoint': ?dnsCustomEndpoint,
      'documentAiCustomEndpoint': ?documentAiCustomEndpoint,
      'documentAiWarehouseCustomEndpoint': ?documentAiWarehouseCustomEndpoint,
      'edgecontainerCustomEndpoint': ?edgecontainerCustomEndpoint,
      'edgenetworkCustomEndpoint': ?edgenetworkCustomEndpoint,
      'essentialContactsCustomEndpoint': ?essentialContactsCustomEndpoint,
      'eventarcCustomEndpoint': ?eventarcCustomEndpoint,
      'externalCredentials': ?pulumi.Input.mapOptionalInputValue<ProviderExternalCredentials, Map<String, dynamic>>(externalCredentials, (value) => value.toMap()),
      'filestoreCustomEndpoint': ?filestoreCustomEndpoint,
      'firebaseAiLogicCustomEndpoint': ?firebaseAiLogicCustomEndpoint,
      'firebaseAppCheckCustomEndpoint': ?firebaseAppCheckCustomEndpoint,
      'firebaseAppHostingCustomEndpoint': ?firebaseAppHostingCustomEndpoint,
      'firebaseCustomEndpoint': ?firebaseCustomEndpoint,
      'firebaseDataConnectCustomEndpoint': ?firebaseDataConnectCustomEndpoint,
      'firebaseDatabaseCustomEndpoint': ?firebaseDatabaseCustomEndpoint,
      'firebaseExtensionsCustomEndpoint': ?firebaseExtensionsCustomEndpoint,
      'firebaseHostingCustomEndpoint': ?firebaseHostingCustomEndpoint,
      'firebaseStorageCustomEndpoint': ?firebaseStorageCustomEndpoint,
      'firebaserulesCustomEndpoint': ?firebaserulesCustomEndpoint,
      'firestoreCustomEndpoint': ?firestoreCustomEndpoint,
      'geminiCustomEndpoint': ?geminiCustomEndpoint,
      'gkeBackupCustomEndpoint': ?gkeBackupCustomEndpoint,
      'gkeHub2CustomEndpoint': ?gkeHub2CustomEndpoint,
      'gkeHubCustomEndpoint': ?gkeHubCustomEndpoint,
      'gkeonpremCustomEndpoint': ?gkeonpremCustomEndpoint,
      'googlePartnerName': ?googlePartnerName,
      'healthcareCustomEndpoint': ?healthcareCustomEndpoint,
      'iam2CustomEndpoint': ?iam2CustomEndpoint,
      'iam3CustomEndpoint': ?iam3CustomEndpoint,
      'iamBetaCustomEndpoint': ?iamBetaCustomEndpoint,
      'iamCredentialsCustomEndpoint': ?iamCredentialsCustomEndpoint,
      'iamCustomEndpoint': ?iamCustomEndpoint,
      'iamWorkforcePoolCustomEndpoint': ?iamWorkforcePoolCustomEndpoint,
      'iapCustomEndpoint': ?iapCustomEndpoint,
      'identityPlatformCustomEndpoint': ?identityPlatformCustomEndpoint,
      'impersonateServiceAccount': ?impersonateServiceAccount,
      'impersonateServiceAccountDelegates': ?impersonateServiceAccountDelegates,
      'integrationConnectorsCustomEndpoint': ?integrationConnectorsCustomEndpoint,
      'integrationsCustomEndpoint': ?integrationsCustomEndpoint,
      'kmsCustomEndpoint': ?kmsCustomEndpoint,
      'loggingCustomEndpoint': ?loggingCustomEndpoint,
      'lookerCustomEndpoint': ?lookerCustomEndpoint,
      'lustreCustomEndpoint': ?lustreCustomEndpoint,
      'managedKafkaCustomEndpoint': ?managedKafkaCustomEndpoint,
      'memcacheCustomEndpoint': ?memcacheCustomEndpoint,
      'memorystoreCustomEndpoint': ?memorystoreCustomEndpoint,
      'migrationCenterCustomEndpoint': ?migrationCenterCustomEndpoint,
      'mlEngineCustomEndpoint': ?mlEngineCustomEndpoint,
      'modelArmorCustomEndpoint': ?modelArmorCustomEndpoint,
      'modelArmorGlobalCustomEndpoint': ?modelArmorGlobalCustomEndpoint,
      'monitoringCustomEndpoint': ?monitoringCustomEndpoint,
      'netappCustomEndpoint': ?netappCustomEndpoint,
      'networkConnectivityCustomEndpoint': ?networkConnectivityCustomEndpoint,
      'networkConnectivityv1CustomEndpoint': ?networkConnectivityv1CustomEndpoint,
      'networkManagementCustomEndpoint': ?networkManagementCustomEndpoint,
      'networkSecurityCustomEndpoint': ?networkSecurityCustomEndpoint,
      'networkServicesCustomEndpoint': ?networkServicesCustomEndpoint,
      'notebooksCustomEndpoint': ?notebooksCustomEndpoint,
      'observabilityCustomEndpoint': ?observabilityCustomEndpoint,
      'oracleDatabaseCustomEndpoint': ?oracleDatabaseCustomEndpoint,
      'orgPolicyCustomEndpoint': ?orgPolicyCustomEndpoint,
      'osConfigCustomEndpoint': ?osConfigCustomEndpoint,
      'osConfigV2CustomEndpoint': ?osConfigV2CustomEndpoint,
      'osLoginCustomEndpoint': ?osLoginCustomEndpoint,
      'parallelstoreCustomEndpoint': ?parallelstoreCustomEndpoint,
      'parameterManagerCustomEndpoint': ?parameterManagerCustomEndpoint,
      'parameterManagerRegionalCustomEndpoint': ?parameterManagerRegionalCustomEndpoint,
      'privatecaCustomEndpoint': ?privatecaCustomEndpoint,
      'privilegedAccessManagerCustomEndpoint': ?privilegedAccessManagerCustomEndpoint,
      'project': ?project,
      'publicCaCustomEndpoint': ?publicCaCustomEndpoint,
      'pubsubCustomEndpoint': ?pubsubCustomEndpoint,
      'pubsubLiteCustomEndpoint': ?pubsubLiteCustomEndpoint,
      'pulumiAttributionLabelAdditionStrategy': ?pulumiAttributionLabelAdditionStrategy,
      'recaptchaEnterpriseCustomEndpoint': ?recaptchaEnterpriseCustomEndpoint,
      'redisCustomEndpoint': ?redisCustomEndpoint,
      'region': ?region,
      'requestReason': ?requestReason,
      'requestTimeout': ?requestTimeout,
      'resourceManager3CustomEndpoint': ?resourceManager3CustomEndpoint,
      'resourceManagerCustomEndpoint': ?resourceManagerCustomEndpoint,
      'resourceManagerV3CustomEndpoint': ?resourceManagerV3CustomEndpoint,
      'runtimeConfigCustomEndpoint': ?runtimeConfigCustomEndpoint,
      'runtimeconfigCustomEndpoint': ?runtimeconfigCustomEndpoint,
      'saasRuntimeCustomEndpoint': ?saasRuntimeCustomEndpoint,
      'scopes': ?scopes,
      'secretManagerCustomEndpoint': ?secretManagerCustomEndpoint,
      'secretManagerRegionalCustomEndpoint': ?secretManagerRegionalCustomEndpoint,
      'secureSourceManagerCustomEndpoint': ?secureSourceManagerCustomEndpoint,
      'securityCenterCustomEndpoint': ?securityCenterCustomEndpoint,
      'securityCenterManagementCustomEndpoint': ?securityCenterManagementCustomEndpoint,
      'securityCenterV2CustomEndpoint': ?securityCenterV2CustomEndpoint,
      'securityScannerCustomEndpoint': ?securityScannerCustomEndpoint,
      'securitypostureCustomEndpoint': ?securitypostureCustomEndpoint,
      'serviceDirectoryCustomEndpoint': ?serviceDirectoryCustomEndpoint,
      'serviceManagementCustomEndpoint': ?serviceManagementCustomEndpoint,
      'serviceNetworkingCustomEndpoint': ?serviceNetworkingCustomEndpoint,
      'serviceUsageCustomEndpoint': ?serviceUsageCustomEndpoint,
      'siteVerificationCustomEndpoint': ?siteVerificationCustomEndpoint,
      'sourceRepoCustomEndpoint': ?sourceRepoCustomEndpoint,
      'spannerCustomEndpoint': ?spannerCustomEndpoint,
      'sqlCustomEndpoint': ?sqlCustomEndpoint,
      'storageBatchOperationsCustomEndpoint': ?storageBatchOperationsCustomEndpoint,
      'storageControlCustomEndpoint': ?storageControlCustomEndpoint,
      'storageCustomEndpoint': ?storageCustomEndpoint,
      'storageInsightsCustomEndpoint': ?storageInsightsCustomEndpoint,
      'storageTransferCustomEndpoint': ?storageTransferCustomEndpoint,
      'tagsCustomEndpoint': ?tagsCustomEndpoint,
      'tagsLocationCustomEndpoint': ?tagsLocationCustomEndpoint,
      'tpuV2CustomEndpoint': ?tpuV2CustomEndpoint,
      'transcoderCustomEndpoint': ?transcoderCustomEndpoint,
      'universeDomain': ?universeDomain,
      'userProjectOverride': ?userProjectOverride,
      'vertexAiCustomEndpoint': ?vertexAiCustomEndpoint,
      'vmwareengineCustomEndpoint': ?vmwareengineCustomEndpoint,
      'vpcAccessCustomEndpoint': ?vpcAccessCustomEndpoint,
      'workbenchCustomEndpoint': ?workbenchCustomEndpoint,
      'workflowsCustomEndpoint': ?workflowsCustomEndpoint,
      'workstationsCustomEndpoint': ?workstationsCustomEndpoint,
      'zone': ?zone,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      accessApprovalCustomEndpoint: map['accessApprovalCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['accessApprovalCustomEndpoint'] as String),
      accessContextManagerCustomEndpoint: map['accessContextManagerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['accessContextManagerCustomEndpoint'] as String),
      accessToken: map['accessToken'] == null ? null : pulumi.Output.create<String>(map['accessToken'] as String),
      activeDirectoryCustomEndpoint: map['activeDirectoryCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['activeDirectoryCustomEndpoint'] as String),
      addPulumiAttributionLabel: map['addPulumiAttributionLabel'] == null ? null : pulumi.Output.create<bool>(map['addPulumiAttributionLabel'] as bool),
      alloydbCustomEndpoint: map['alloydbCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['alloydbCustomEndpoint'] as String),
      apiGatewayCustomEndpoint: map['apiGatewayCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['apiGatewayCustomEndpoint'] as String),
      apigeeCustomEndpoint: map['apigeeCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['apigeeCustomEndpoint'] as String),
      apihubCustomEndpoint: map['apihubCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['apihubCustomEndpoint'] as String),
      apikeysCustomEndpoint: map['apikeysCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['apikeysCustomEndpoint'] as String),
      appEngineCustomEndpoint: map['appEngineCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['appEngineCustomEndpoint'] as String),
      apphubCustomEndpoint: map['apphubCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['apphubCustomEndpoint'] as String),
      artifactRegistryCustomEndpoint: map['artifactRegistryCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['artifactRegistryCustomEndpoint'] as String),
      assuredWorkloadsCustomEndpoint: map['assuredWorkloadsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['assuredWorkloadsCustomEndpoint'] as String),
      backupDrCustomEndpoint: map['backupDrCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['backupDrCustomEndpoint'] as String),
      batching: map['batching'] == null ? null : pulumi.Output.create<ProviderBatching>(ProviderBatching.fromMap((map['batching'] as Map).cast<String, dynamic>())),
      beyondcorpCustomEndpoint: map['beyondcorpCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['beyondcorpCustomEndpoint'] as String),
      bigQueryCustomEndpoint: map['bigQueryCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['bigQueryCustomEndpoint'] as String),
      biglakeCustomEndpoint: map['biglakeCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['biglakeCustomEndpoint'] as String),
      biglakeIcebergCustomEndpoint: map['biglakeIcebergCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['biglakeIcebergCustomEndpoint'] as String),
      bigqueryAnalyticsHubCustomEndpoint: map['bigqueryAnalyticsHubCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['bigqueryAnalyticsHubCustomEndpoint'] as String),
      bigqueryConnectionCustomEndpoint: map['bigqueryConnectionCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['bigqueryConnectionCustomEndpoint'] as String),
      bigqueryDataTransferCustomEndpoint: map['bigqueryDataTransferCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['bigqueryDataTransferCustomEndpoint'] as String),
      bigqueryDatapolicyCustomEndpoint: map['bigqueryDatapolicyCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['bigqueryDatapolicyCustomEndpoint'] as String),
      bigqueryDatapolicyv2CustomEndpoint: map['bigqueryDatapolicyv2CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['bigqueryDatapolicyv2CustomEndpoint'] as String),
      bigqueryReservationCustomEndpoint: map['bigqueryReservationCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['bigqueryReservationCustomEndpoint'] as String),
      bigtableCustomEndpoint: map['bigtableCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['bigtableCustomEndpoint'] as String),
      billingCustomEndpoint: map['billingCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['billingCustomEndpoint'] as String),
      billingProject: map['billingProject'] == null ? null : pulumi.Output.create<String>(map['billingProject'] as String),
      binaryAuthorizationCustomEndpoint: map['binaryAuthorizationCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['binaryAuthorizationCustomEndpoint'] as String),
      blockchainNodeEngineCustomEndpoint: map['blockchainNodeEngineCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['blockchainNodeEngineCustomEndpoint'] as String),
      certificateManagerCustomEndpoint: map['certificateManagerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['certificateManagerCustomEndpoint'] as String),
      cesCustomEndpoint: map['cesCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cesCustomEndpoint'] as String),
      chronicleCustomEndpoint: map['chronicleCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['chronicleCustomEndpoint'] as String),
      cloudAssetCustomEndpoint: map['cloudAssetCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudAssetCustomEndpoint'] as String),
      cloudBillingCustomEndpoint: map['cloudBillingCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudBillingCustomEndpoint'] as String),
      cloudBuildCustomEndpoint: map['cloudBuildCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudBuildCustomEndpoint'] as String),
      cloudFunctionsCustomEndpoint: map['cloudFunctionsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudFunctionsCustomEndpoint'] as String),
      cloudIdentityCustomEndpoint: map['cloudIdentityCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudIdentityCustomEndpoint'] as String),
      cloudIdsCustomEndpoint: map['cloudIdsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudIdsCustomEndpoint'] as String),
      cloudQuotasCustomEndpoint: map['cloudQuotasCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudQuotasCustomEndpoint'] as String),
      cloudResourceManagerCustomEndpoint: map['cloudResourceManagerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudResourceManagerCustomEndpoint'] as String),
      cloudRunCustomEndpoint: map['cloudRunCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudRunCustomEndpoint'] as String),
      cloudRunV2CustomEndpoint: map['cloudRunV2CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudRunV2CustomEndpoint'] as String),
      cloudSchedulerCustomEndpoint: map['cloudSchedulerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudSchedulerCustomEndpoint'] as String),
      cloudSecurityComplianceCustomEndpoint: map['cloudSecurityComplianceCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudSecurityComplianceCustomEndpoint'] as String),
      cloudTasksCustomEndpoint: map['cloudTasksCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudTasksCustomEndpoint'] as String),
      cloudbuildv2CustomEndpoint: map['cloudbuildv2CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudbuildv2CustomEndpoint'] as String),
      clouddeployCustomEndpoint: map['clouddeployCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['clouddeployCustomEndpoint'] as String),
      clouddomainsCustomEndpoint: map['clouddomainsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['clouddomainsCustomEndpoint'] as String),
      cloudfunctions2CustomEndpoint: map['cloudfunctions2CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['cloudfunctions2CustomEndpoint'] as String),
      colabCustomEndpoint: map['colabCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['colabCustomEndpoint'] as String),
      composerCustomEndpoint: map['composerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['composerCustomEndpoint'] as String),
      computeCustomEndpoint: map['computeCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['computeCustomEndpoint'] as String),
      contactCenterInsightsCustomEndpoint: map['contactCenterInsightsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['contactCenterInsightsCustomEndpoint'] as String),
      containerAnalysisCustomEndpoint: map['containerAnalysisCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['containerAnalysisCustomEndpoint'] as String),
      containerAttachedCustomEndpoint: map['containerAttachedCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['containerAttachedCustomEndpoint'] as String),
      containerAwsCustomEndpoint: map['containerAwsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['containerAwsCustomEndpoint'] as String),
      containerAzureCustomEndpoint: map['containerAzureCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['containerAzureCustomEndpoint'] as String),
      containerCustomEndpoint: map['containerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['containerCustomEndpoint'] as String),
      coreBillingCustomEndpoint: map['coreBillingCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['coreBillingCustomEndpoint'] as String),
      credentials: map['credentials'] == null ? null : pulumi.Output.create<String>(map['credentials'] as String),
      dataCatalogCustomEndpoint: map['dataCatalogCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dataCatalogCustomEndpoint'] as String),
      dataFusionCustomEndpoint: map['dataFusionCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dataFusionCustomEndpoint'] as String),
      dataLossPreventionCustomEndpoint: map['dataLossPreventionCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dataLossPreventionCustomEndpoint'] as String),
      dataPipelineCustomEndpoint: map['dataPipelineCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dataPipelineCustomEndpoint'] as String),
      databaseMigrationServiceCustomEndpoint: map['databaseMigrationServiceCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['databaseMigrationServiceCustomEndpoint'] as String),
      dataflowCustomEndpoint: map['dataflowCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dataflowCustomEndpoint'] as String),
      dataformCustomEndpoint: map['dataformCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dataformCustomEndpoint'] as String),
      dataplexCustomEndpoint: map['dataplexCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dataplexCustomEndpoint'] as String),
      dataprocCustomEndpoint: map['dataprocCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dataprocCustomEndpoint'] as String),
      dataprocGdcCustomEndpoint: map['dataprocGdcCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dataprocGdcCustomEndpoint'] as String),
      dataprocMetastoreCustomEndpoint: map['dataprocMetastoreCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dataprocMetastoreCustomEndpoint'] as String),
      datastreamCustomEndpoint: map['datastreamCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['datastreamCustomEndpoint'] as String),
      defaultLabels: map['defaultLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['defaultLabels'] as Map).cast<String, String>()),
      deploymentManagerCustomEndpoint: map['deploymentManagerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['deploymentManagerCustomEndpoint'] as String),
      developerConnectCustomEndpoint: map['developerConnectCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['developerConnectCustomEndpoint'] as String),
      dialogflowCustomEndpoint: map['dialogflowCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dialogflowCustomEndpoint'] as String),
      dialogflowCxCustomEndpoint: map['dialogflowCxCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dialogflowCxCustomEndpoint'] as String),
      disableGooglePartnerName: map['disableGooglePartnerName'] == null ? null : pulumi.Output.create<bool>(map['disableGooglePartnerName'] as bool),
      discoveryEngineCustomEndpoint: map['discoveryEngineCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['discoveryEngineCustomEndpoint'] as String),
      dnsCustomEndpoint: map['dnsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['dnsCustomEndpoint'] as String),
      documentAiCustomEndpoint: map['documentAiCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['documentAiCustomEndpoint'] as String),
      documentAiWarehouseCustomEndpoint: map['documentAiWarehouseCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['documentAiWarehouseCustomEndpoint'] as String),
      edgecontainerCustomEndpoint: map['edgecontainerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['edgecontainerCustomEndpoint'] as String),
      edgenetworkCustomEndpoint: map['edgenetworkCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['edgenetworkCustomEndpoint'] as String),
      essentialContactsCustomEndpoint: map['essentialContactsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['essentialContactsCustomEndpoint'] as String),
      eventarcCustomEndpoint: map['eventarcCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['eventarcCustomEndpoint'] as String),
      externalCredentials: map['externalCredentials'] == null ? null : pulumi.Output.create<ProviderExternalCredentials>(ProviderExternalCredentials.fromMap((map['externalCredentials'] as Map).cast<String, dynamic>())),
      filestoreCustomEndpoint: map['filestoreCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['filestoreCustomEndpoint'] as String),
      firebaseAiLogicCustomEndpoint: map['firebaseAiLogicCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firebaseAiLogicCustomEndpoint'] as String),
      firebaseAppCheckCustomEndpoint: map['firebaseAppCheckCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firebaseAppCheckCustomEndpoint'] as String),
      firebaseAppHostingCustomEndpoint: map['firebaseAppHostingCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firebaseAppHostingCustomEndpoint'] as String),
      firebaseCustomEndpoint: map['firebaseCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firebaseCustomEndpoint'] as String),
      firebaseDataConnectCustomEndpoint: map['firebaseDataConnectCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firebaseDataConnectCustomEndpoint'] as String),
      firebaseDatabaseCustomEndpoint: map['firebaseDatabaseCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firebaseDatabaseCustomEndpoint'] as String),
      firebaseExtensionsCustomEndpoint: map['firebaseExtensionsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firebaseExtensionsCustomEndpoint'] as String),
      firebaseHostingCustomEndpoint: map['firebaseHostingCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firebaseHostingCustomEndpoint'] as String),
      firebaseStorageCustomEndpoint: map['firebaseStorageCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firebaseStorageCustomEndpoint'] as String),
      firebaserulesCustomEndpoint: map['firebaserulesCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firebaserulesCustomEndpoint'] as String),
      firestoreCustomEndpoint: map['firestoreCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['firestoreCustomEndpoint'] as String),
      geminiCustomEndpoint: map['geminiCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['geminiCustomEndpoint'] as String),
      gkeBackupCustomEndpoint: map['gkeBackupCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['gkeBackupCustomEndpoint'] as String),
      gkeHub2CustomEndpoint: map['gkeHub2CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['gkeHub2CustomEndpoint'] as String),
      gkeHubCustomEndpoint: map['gkeHubCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['gkeHubCustomEndpoint'] as String),
      gkeonpremCustomEndpoint: map['gkeonpremCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['gkeonpremCustomEndpoint'] as String),
      googlePartnerName: map['googlePartnerName'] == null ? null : pulumi.Output.create<String>(map['googlePartnerName'] as String),
      healthcareCustomEndpoint: map['healthcareCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['healthcareCustomEndpoint'] as String),
      iam2CustomEndpoint: map['iam2CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['iam2CustomEndpoint'] as String),
      iam3CustomEndpoint: map['iam3CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['iam3CustomEndpoint'] as String),
      iamBetaCustomEndpoint: map['iamBetaCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['iamBetaCustomEndpoint'] as String),
      iamCredentialsCustomEndpoint: map['iamCredentialsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['iamCredentialsCustomEndpoint'] as String),
      iamCustomEndpoint: map['iamCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['iamCustomEndpoint'] as String),
      iamWorkforcePoolCustomEndpoint: map['iamWorkforcePoolCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['iamWorkforcePoolCustomEndpoint'] as String),
      iapCustomEndpoint: map['iapCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['iapCustomEndpoint'] as String),
      identityPlatformCustomEndpoint: map['identityPlatformCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['identityPlatformCustomEndpoint'] as String),
      impersonateServiceAccount: map['impersonateServiceAccount'] == null ? null : pulumi.Output.create<String>(map['impersonateServiceAccount'] as String),
      impersonateServiceAccountDelegates: map['impersonateServiceAccountDelegates'] == null ? null : pulumi.Output.create<List<String>>((map['impersonateServiceAccountDelegates'] as List).cast<String>()),
      integrationConnectorsCustomEndpoint: map['integrationConnectorsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['integrationConnectorsCustomEndpoint'] as String),
      integrationsCustomEndpoint: map['integrationsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['integrationsCustomEndpoint'] as String),
      kmsCustomEndpoint: map['kmsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['kmsCustomEndpoint'] as String),
      loggingCustomEndpoint: map['loggingCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['loggingCustomEndpoint'] as String),
      lookerCustomEndpoint: map['lookerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['lookerCustomEndpoint'] as String),
      lustreCustomEndpoint: map['lustreCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['lustreCustomEndpoint'] as String),
      managedKafkaCustomEndpoint: map['managedKafkaCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['managedKafkaCustomEndpoint'] as String),
      memcacheCustomEndpoint: map['memcacheCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['memcacheCustomEndpoint'] as String),
      memorystoreCustomEndpoint: map['memorystoreCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['memorystoreCustomEndpoint'] as String),
      migrationCenterCustomEndpoint: map['migrationCenterCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['migrationCenterCustomEndpoint'] as String),
      mlEngineCustomEndpoint: map['mlEngineCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['mlEngineCustomEndpoint'] as String),
      modelArmorCustomEndpoint: map['modelArmorCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['modelArmorCustomEndpoint'] as String),
      modelArmorGlobalCustomEndpoint: map['modelArmorGlobalCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['modelArmorGlobalCustomEndpoint'] as String),
      monitoringCustomEndpoint: map['monitoringCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['monitoringCustomEndpoint'] as String),
      netappCustomEndpoint: map['netappCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['netappCustomEndpoint'] as String),
      networkConnectivityCustomEndpoint: map['networkConnectivityCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['networkConnectivityCustomEndpoint'] as String),
      networkConnectivityv1CustomEndpoint: map['networkConnectivityv1CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['networkConnectivityv1CustomEndpoint'] as String),
      networkManagementCustomEndpoint: map['networkManagementCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['networkManagementCustomEndpoint'] as String),
      networkSecurityCustomEndpoint: map['networkSecurityCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['networkSecurityCustomEndpoint'] as String),
      networkServicesCustomEndpoint: map['networkServicesCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['networkServicesCustomEndpoint'] as String),
      notebooksCustomEndpoint: map['notebooksCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['notebooksCustomEndpoint'] as String),
      observabilityCustomEndpoint: map['observabilityCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['observabilityCustomEndpoint'] as String),
      oracleDatabaseCustomEndpoint: map['oracleDatabaseCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['oracleDatabaseCustomEndpoint'] as String),
      orgPolicyCustomEndpoint: map['orgPolicyCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['orgPolicyCustomEndpoint'] as String),
      osConfigCustomEndpoint: map['osConfigCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['osConfigCustomEndpoint'] as String),
      osConfigV2CustomEndpoint: map['osConfigV2CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['osConfigV2CustomEndpoint'] as String),
      osLoginCustomEndpoint: map['osLoginCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['osLoginCustomEndpoint'] as String),
      parallelstoreCustomEndpoint: map['parallelstoreCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['parallelstoreCustomEndpoint'] as String),
      parameterManagerCustomEndpoint: map['parameterManagerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['parameterManagerCustomEndpoint'] as String),
      parameterManagerRegionalCustomEndpoint: map['parameterManagerRegionalCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['parameterManagerRegionalCustomEndpoint'] as String),
      privatecaCustomEndpoint: map['privatecaCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['privatecaCustomEndpoint'] as String),
      privilegedAccessManagerCustomEndpoint: map['privilegedAccessManagerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['privilegedAccessManagerCustomEndpoint'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      publicCaCustomEndpoint: map['publicCaCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['publicCaCustomEndpoint'] as String),
      pubsubCustomEndpoint: map['pubsubCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['pubsubCustomEndpoint'] as String),
      pubsubLiteCustomEndpoint: map['pubsubLiteCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['pubsubLiteCustomEndpoint'] as String),
      pulumiAttributionLabelAdditionStrategy: map['pulumiAttributionLabelAdditionStrategy'] == null ? null : pulumi.Output.create<String>(map['pulumiAttributionLabelAdditionStrategy'] as String),
      recaptchaEnterpriseCustomEndpoint: map['recaptchaEnterpriseCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['recaptchaEnterpriseCustomEndpoint'] as String),
      redisCustomEndpoint: map['redisCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['redisCustomEndpoint'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requestReason: map['requestReason'] == null ? null : pulumi.Output.create<String>(map['requestReason'] as String),
      requestTimeout: map['requestTimeout'] == null ? null : pulumi.Output.create<String>(map['requestTimeout'] as String),
      resourceManager3CustomEndpoint: map['resourceManager3CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['resourceManager3CustomEndpoint'] as String),
      resourceManagerCustomEndpoint: map['resourceManagerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['resourceManagerCustomEndpoint'] as String),
      resourceManagerV3CustomEndpoint: map['resourceManagerV3CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['resourceManagerV3CustomEndpoint'] as String),
      runtimeConfigCustomEndpoint: map['runtimeConfigCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['runtimeConfigCustomEndpoint'] as String),
      runtimeconfigCustomEndpoint: map['runtimeconfigCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['runtimeconfigCustomEndpoint'] as String),
      saasRuntimeCustomEndpoint: map['saasRuntimeCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['saasRuntimeCustomEndpoint'] as String),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<List<String>>((map['scopes'] as List).cast<String>()),
      secretManagerCustomEndpoint: map['secretManagerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['secretManagerCustomEndpoint'] as String),
      secretManagerRegionalCustomEndpoint: map['secretManagerRegionalCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['secretManagerRegionalCustomEndpoint'] as String),
      secureSourceManagerCustomEndpoint: map['secureSourceManagerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['secureSourceManagerCustomEndpoint'] as String),
      securityCenterCustomEndpoint: map['securityCenterCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['securityCenterCustomEndpoint'] as String),
      securityCenterManagementCustomEndpoint: map['securityCenterManagementCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['securityCenterManagementCustomEndpoint'] as String),
      securityCenterV2CustomEndpoint: map['securityCenterV2CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['securityCenterV2CustomEndpoint'] as String),
      securityScannerCustomEndpoint: map['securityScannerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['securityScannerCustomEndpoint'] as String),
      securitypostureCustomEndpoint: map['securitypostureCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['securitypostureCustomEndpoint'] as String),
      serviceDirectoryCustomEndpoint: map['serviceDirectoryCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['serviceDirectoryCustomEndpoint'] as String),
      serviceManagementCustomEndpoint: map['serviceManagementCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['serviceManagementCustomEndpoint'] as String),
      serviceNetworkingCustomEndpoint: map['serviceNetworkingCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['serviceNetworkingCustomEndpoint'] as String),
      serviceUsageCustomEndpoint: map['serviceUsageCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['serviceUsageCustomEndpoint'] as String),
      siteVerificationCustomEndpoint: map['siteVerificationCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['siteVerificationCustomEndpoint'] as String),
      sourceRepoCustomEndpoint: map['sourceRepoCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['sourceRepoCustomEndpoint'] as String),
      spannerCustomEndpoint: map['spannerCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['spannerCustomEndpoint'] as String),
      sqlCustomEndpoint: map['sqlCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['sqlCustomEndpoint'] as String),
      storageBatchOperationsCustomEndpoint: map['storageBatchOperationsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageBatchOperationsCustomEndpoint'] as String),
      storageControlCustomEndpoint: map['storageControlCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageControlCustomEndpoint'] as String),
      storageCustomEndpoint: map['storageCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageCustomEndpoint'] as String),
      storageInsightsCustomEndpoint: map['storageInsightsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageInsightsCustomEndpoint'] as String),
      storageTransferCustomEndpoint: map['storageTransferCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageTransferCustomEndpoint'] as String),
      tagsCustomEndpoint: map['tagsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['tagsCustomEndpoint'] as String),
      tagsLocationCustomEndpoint: map['tagsLocationCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['tagsLocationCustomEndpoint'] as String),
      tpuV2CustomEndpoint: map['tpuV2CustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['tpuV2CustomEndpoint'] as String),
      transcoderCustomEndpoint: map['transcoderCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['transcoderCustomEndpoint'] as String),
      universeDomain: map['universeDomain'] == null ? null : pulumi.Output.create<String>(map['universeDomain'] as String),
      userProjectOverride: map['userProjectOverride'] == null ? null : pulumi.Output.create<bool>(map['userProjectOverride'] as bool),
      vertexAiCustomEndpoint: map['vertexAiCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['vertexAiCustomEndpoint'] as String),
      vmwareengineCustomEndpoint: map['vmwareengineCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['vmwareengineCustomEndpoint'] as String),
      vpcAccessCustomEndpoint: map['vpcAccessCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['vpcAccessCustomEndpoint'] as String),
      workbenchCustomEndpoint: map['workbenchCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['workbenchCustomEndpoint'] as String),
      workflowsCustomEndpoint: map['workflowsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['workflowsCustomEndpoint'] as String),
      workstationsCustomEndpoint: map['workstationsCustomEndpoint'] == null ? null : pulumi.Output.create<String>(map['workstationsCustomEndpoint'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}


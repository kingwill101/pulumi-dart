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
    this.accessApprovalCustomEndpoint,
    this.accessContextManagerCustomEndpoint,
    this.accessToken,
    this.activeDirectoryCustomEndpoint,
    this.addPulumiAttributionLabel,
    this.alloydbCustomEndpoint,
    this.apiGatewayCustomEndpoint,
    this.apigeeCustomEndpoint,
    this.apihubCustomEndpoint,
    this.apikeysCustomEndpoint,
    this.appEngineCustomEndpoint,
    this.apphubCustomEndpoint,
    this.artifactRegistryCustomEndpoint,
    this.assuredWorkloadsCustomEndpoint,
    this.backupDrCustomEndpoint,
    this.batching,
    this.beyondcorpCustomEndpoint,
    this.bigQueryCustomEndpoint,
    this.biglakeCustomEndpoint,
    this.biglakeIcebergCustomEndpoint,
    this.bigqueryAnalyticsHubCustomEndpoint,
    this.bigqueryConnectionCustomEndpoint,
    this.bigqueryDataTransferCustomEndpoint,
    this.bigqueryDatapolicyCustomEndpoint,
    this.bigqueryDatapolicyv2CustomEndpoint,
    this.bigqueryReservationCustomEndpoint,
    this.bigtableCustomEndpoint,
    this.billingCustomEndpoint,
    this.billingProject,
    this.binaryAuthorizationCustomEndpoint,
    this.blockchainNodeEngineCustomEndpoint,
    this.certificateManagerCustomEndpoint,
    this.cesCustomEndpoint,
    this.chronicleCustomEndpoint,
    this.cloudAssetCustomEndpoint,
    this.cloudBillingCustomEndpoint,
    this.cloudBuildCustomEndpoint,
    this.cloudFunctionsCustomEndpoint,
    this.cloudIdentityCustomEndpoint,
    this.cloudIdsCustomEndpoint,
    this.cloudQuotasCustomEndpoint,
    this.cloudResourceManagerCustomEndpoint,
    this.cloudRunCustomEndpoint,
    this.cloudRunV2CustomEndpoint,
    this.cloudSchedulerCustomEndpoint,
    this.cloudSecurityComplianceCustomEndpoint,
    this.cloudTasksCustomEndpoint,
    this.cloudbuildv2CustomEndpoint,
    this.clouddeployCustomEndpoint,
    this.clouddomainsCustomEndpoint,
    this.cloudfunctions2CustomEndpoint,
    this.colabCustomEndpoint,
    this.composerCustomEndpoint,
    this.computeCustomEndpoint,
    this.contactCenterInsightsCustomEndpoint,
    this.containerAnalysisCustomEndpoint,
    this.containerAttachedCustomEndpoint,
    this.containerAwsCustomEndpoint,
    this.containerAzureCustomEndpoint,
    this.containerCustomEndpoint,
    this.coreBillingCustomEndpoint,
    this.credentials,
    this.dataCatalogCustomEndpoint,
    this.dataFusionCustomEndpoint,
    this.dataLossPreventionCustomEndpoint,
    this.dataPipelineCustomEndpoint,
    this.databaseMigrationServiceCustomEndpoint,
    this.dataflowCustomEndpoint,
    this.dataformCustomEndpoint,
    this.dataplexCustomEndpoint,
    this.dataprocCustomEndpoint,
    this.dataprocGdcCustomEndpoint,
    this.dataprocMetastoreCustomEndpoint,
    this.datastreamCustomEndpoint,
    this.defaultLabels,
    this.deploymentManagerCustomEndpoint,
    this.developerConnectCustomEndpoint,
    this.dialogflowCustomEndpoint,
    this.dialogflowCxCustomEndpoint,
    this.disableGooglePartnerName,
    this.discoveryEngineCustomEndpoint,
    this.dnsCustomEndpoint,
    this.documentAiCustomEndpoint,
    this.documentAiWarehouseCustomEndpoint,
    this.edgecontainerCustomEndpoint,
    this.edgenetworkCustomEndpoint,
    this.essentialContactsCustomEndpoint,
    this.eventarcCustomEndpoint,
    this.externalCredentials,
    this.filestoreCustomEndpoint,
    this.firebaseAiLogicCustomEndpoint,
    this.firebaseAppCheckCustomEndpoint,
    this.firebaseAppHostingCustomEndpoint,
    this.firebaseCustomEndpoint,
    this.firebaseDataConnectCustomEndpoint,
    this.firebaseDatabaseCustomEndpoint,
    this.firebaseExtensionsCustomEndpoint,
    this.firebaseHostingCustomEndpoint,
    this.firebaseStorageCustomEndpoint,
    this.firebaserulesCustomEndpoint,
    this.firestoreCustomEndpoint,
    this.geminiCustomEndpoint,
    this.gkeBackupCustomEndpoint,
    this.gkeHub2CustomEndpoint,
    this.gkeHubCustomEndpoint,
    this.gkeonpremCustomEndpoint,
    this.googlePartnerName,
    this.healthcareCustomEndpoint,
    this.iam2CustomEndpoint,
    this.iam3CustomEndpoint,
    this.iamBetaCustomEndpoint,
    this.iamCredentialsCustomEndpoint,
    this.iamCustomEndpoint,
    this.iamWorkforcePoolCustomEndpoint,
    this.iapCustomEndpoint,
    this.identityPlatformCustomEndpoint,
    this.impersonateServiceAccount,
    this.impersonateServiceAccountDelegates,
    this.integrationConnectorsCustomEndpoint,
    this.integrationsCustomEndpoint,
    this.kmsCustomEndpoint,
    this.loggingCustomEndpoint,
    this.lookerCustomEndpoint,
    this.lustreCustomEndpoint,
    this.managedKafkaCustomEndpoint,
    this.memcacheCustomEndpoint,
    this.memorystoreCustomEndpoint,
    this.migrationCenterCustomEndpoint,
    this.mlEngineCustomEndpoint,
    this.modelArmorCustomEndpoint,
    this.modelArmorGlobalCustomEndpoint,
    this.monitoringCustomEndpoint,
    this.netappCustomEndpoint,
    this.networkConnectivityCustomEndpoint,
    this.networkConnectivityv1CustomEndpoint,
    this.networkManagementCustomEndpoint,
    this.networkSecurityCustomEndpoint,
    this.networkServicesCustomEndpoint,
    this.notebooksCustomEndpoint,
    this.observabilityCustomEndpoint,
    this.oracleDatabaseCustomEndpoint,
    this.orgPolicyCustomEndpoint,
    this.osConfigCustomEndpoint,
    this.osConfigV2CustomEndpoint,
    this.osLoginCustomEndpoint,
    this.parallelstoreCustomEndpoint,
    this.parameterManagerCustomEndpoint,
    this.parameterManagerRegionalCustomEndpoint,
    this.privatecaCustomEndpoint,
    this.privilegedAccessManagerCustomEndpoint,
    this.project,
    this.publicCaCustomEndpoint,
    this.pubsubCustomEndpoint,
    this.pubsubLiteCustomEndpoint,
    this.pulumiAttributionLabelAdditionStrategy,
    this.recaptchaEnterpriseCustomEndpoint,
    this.redisCustomEndpoint,
    this.region,
    this.requestReason,
    this.requestTimeout,
    this.resourceManager3CustomEndpoint,
    this.resourceManagerCustomEndpoint,
    this.resourceManagerV3CustomEndpoint,
    this.runtimeConfigCustomEndpoint,
    this.runtimeconfigCustomEndpoint,
    this.saasRuntimeCustomEndpoint,
    this.scopes,
    this.secretManagerCustomEndpoint,
    this.secretManagerRegionalCustomEndpoint,
    this.secureSourceManagerCustomEndpoint,
    this.securityCenterCustomEndpoint,
    this.securityCenterManagementCustomEndpoint,
    this.securityCenterV2CustomEndpoint,
    this.securityScannerCustomEndpoint,
    this.securitypostureCustomEndpoint,
    this.serviceDirectoryCustomEndpoint,
    this.serviceManagementCustomEndpoint,
    this.serviceNetworkingCustomEndpoint,
    this.serviceUsageCustomEndpoint,
    this.siteVerificationCustomEndpoint,
    this.sourceRepoCustomEndpoint,
    this.spannerCustomEndpoint,
    this.sqlCustomEndpoint,
    this.storageBatchOperationsCustomEndpoint,
    this.storageControlCustomEndpoint,
    this.storageCustomEndpoint,
    this.storageInsightsCustomEndpoint,
    this.storageTransferCustomEndpoint,
    this.tagsCustomEndpoint,
    this.tagsLocationCustomEndpoint,
    this.tpuV2CustomEndpoint,
    this.transcoderCustomEndpoint,
    this.universeDomain,
    this.userProjectOverride,
    this.vertexAiCustomEndpoint,
    this.vmwareengineCustomEndpoint,
    this.vpcAccessCustomEndpoint,
    this.workbenchCustomEndpoint,
    this.workflowsCustomEndpoint,
    this.workstationsCustomEndpoint,
    this.zone,
  });

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
      'batching':
          ?pulumi.Input.mapOptionalInputValue<
            ProviderBatching,
            Map<String, dynamic>
          >(batching, (value) => value.toMap()),
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
      'cloudSecurityComplianceCustomEndpoint':
          ?cloudSecurityComplianceCustomEndpoint,
      'cloudTasksCustomEndpoint': ?cloudTasksCustomEndpoint,
      'cloudbuildv2CustomEndpoint': ?cloudbuildv2CustomEndpoint,
      'clouddeployCustomEndpoint': ?clouddeployCustomEndpoint,
      'clouddomainsCustomEndpoint': ?clouddomainsCustomEndpoint,
      'cloudfunctions2CustomEndpoint': ?cloudfunctions2CustomEndpoint,
      'colabCustomEndpoint': ?colabCustomEndpoint,
      'composerCustomEndpoint': ?composerCustomEndpoint,
      'computeCustomEndpoint': ?computeCustomEndpoint,
      'contactCenterInsightsCustomEndpoint':
          ?contactCenterInsightsCustomEndpoint,
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
      'databaseMigrationServiceCustomEndpoint':
          ?databaseMigrationServiceCustomEndpoint,
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
      'externalCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            ProviderExternalCredentials,
            Map<String, dynamic>
          >(externalCredentials, (value) => value.toMap()),
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
      'integrationConnectorsCustomEndpoint':
          ?integrationConnectorsCustomEndpoint,
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
      'networkConnectivityv1CustomEndpoint':
          ?networkConnectivityv1CustomEndpoint,
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
      'parameterManagerRegionalCustomEndpoint':
          ?parameterManagerRegionalCustomEndpoint,
      'privatecaCustomEndpoint': ?privatecaCustomEndpoint,
      'privilegedAccessManagerCustomEndpoint':
          ?privilegedAccessManagerCustomEndpoint,
      'project': ?project,
      'publicCaCustomEndpoint': ?publicCaCustomEndpoint,
      'pubsubCustomEndpoint': ?pubsubCustomEndpoint,
      'pubsubLiteCustomEndpoint': ?pubsubLiteCustomEndpoint,
      'pulumiAttributionLabelAdditionStrategy':
          ?pulumiAttributionLabelAdditionStrategy,
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
      'secretManagerRegionalCustomEndpoint':
          ?secretManagerRegionalCustomEndpoint,
      'secureSourceManagerCustomEndpoint': ?secureSourceManagerCustomEndpoint,
      'securityCenterCustomEndpoint': ?securityCenterCustomEndpoint,
      'securityCenterManagementCustomEndpoint':
          ?securityCenterManagementCustomEndpoint,
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
      'storageBatchOperationsCustomEndpoint':
          ?storageBatchOperationsCustomEndpoint,
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
      accessApprovalCustomEndpoint: (() {
        final guardedValue = map['accessApprovalCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accessContextManagerCustomEndpoint: (() {
        final guardedValue = map['accessContextManagerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accessToken: (() {
        final guardedValue = map['accessToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      activeDirectoryCustomEndpoint: (() {
        final guardedValue = map['activeDirectoryCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      addPulumiAttributionLabel: (() {
        final guardedValue = map['addPulumiAttributionLabel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      alloydbCustomEndpoint: (() {
        final guardedValue = map['alloydbCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apiGatewayCustomEndpoint: (() {
        final guardedValue = map['apiGatewayCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apigeeCustomEndpoint: (() {
        final guardedValue = map['apigeeCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apihubCustomEndpoint: (() {
        final guardedValue = map['apihubCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apikeysCustomEndpoint: (() {
        final guardedValue = map['apikeysCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appEngineCustomEndpoint: (() {
        final guardedValue = map['appEngineCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apphubCustomEndpoint: (() {
        final guardedValue = map['apphubCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      artifactRegistryCustomEndpoint: (() {
        final guardedValue = map['artifactRegistryCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      assuredWorkloadsCustomEndpoint: (() {
        final guardedValue = map['assuredWorkloadsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupDrCustomEndpoint: (() {
        final guardedValue = map['backupDrCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      batching: (() {
        final guardedValue = map['batching'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProviderBatching.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      beyondcorpCustomEndpoint: (() {
        final guardedValue = map['beyondcorpCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bigQueryCustomEndpoint: (() {
        final guardedValue = map['bigQueryCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      biglakeCustomEndpoint: (() {
        final guardedValue = map['biglakeCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      biglakeIcebergCustomEndpoint: (() {
        final guardedValue = map['biglakeIcebergCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bigqueryAnalyticsHubCustomEndpoint: (() {
        final guardedValue = map['bigqueryAnalyticsHubCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bigqueryConnectionCustomEndpoint: (() {
        final guardedValue = map['bigqueryConnectionCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bigqueryDataTransferCustomEndpoint: (() {
        final guardedValue = map['bigqueryDataTransferCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bigqueryDatapolicyCustomEndpoint: (() {
        final guardedValue = map['bigqueryDatapolicyCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bigqueryDatapolicyv2CustomEndpoint: (() {
        final guardedValue = map['bigqueryDatapolicyv2CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bigqueryReservationCustomEndpoint: (() {
        final guardedValue = map['bigqueryReservationCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bigtableCustomEndpoint: (() {
        final guardedValue = map['bigtableCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      billingCustomEndpoint: (() {
        final guardedValue = map['billingCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      billingProject: (() {
        final guardedValue = map['billingProject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      binaryAuthorizationCustomEndpoint: (() {
        final guardedValue = map['binaryAuthorizationCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      blockchainNodeEngineCustomEndpoint: (() {
        final guardedValue = map['blockchainNodeEngineCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateManagerCustomEndpoint: (() {
        final guardedValue = map['certificateManagerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cesCustomEndpoint: (() {
        final guardedValue = map['cesCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      chronicleCustomEndpoint: (() {
        final guardedValue = map['chronicleCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudAssetCustomEndpoint: (() {
        final guardedValue = map['cloudAssetCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudBillingCustomEndpoint: (() {
        final guardedValue = map['cloudBillingCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudBuildCustomEndpoint: (() {
        final guardedValue = map['cloudBuildCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudFunctionsCustomEndpoint: (() {
        final guardedValue = map['cloudFunctionsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudIdentityCustomEndpoint: (() {
        final guardedValue = map['cloudIdentityCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudIdsCustomEndpoint: (() {
        final guardedValue = map['cloudIdsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudQuotasCustomEndpoint: (() {
        final guardedValue = map['cloudQuotasCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudResourceManagerCustomEndpoint: (() {
        final guardedValue = map['cloudResourceManagerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudRunCustomEndpoint: (() {
        final guardedValue = map['cloudRunCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudRunV2CustomEndpoint: (() {
        final guardedValue = map['cloudRunV2CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudSchedulerCustomEndpoint: (() {
        final guardedValue = map['cloudSchedulerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudSecurityComplianceCustomEndpoint: (() {
        final guardedValue = map['cloudSecurityComplianceCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudTasksCustomEndpoint: (() {
        final guardedValue = map['cloudTasksCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudbuildv2CustomEndpoint: (() {
        final guardedValue = map['cloudbuildv2CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clouddeployCustomEndpoint: (() {
        final guardedValue = map['clouddeployCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clouddomainsCustomEndpoint: (() {
        final guardedValue = map['clouddomainsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cloudfunctions2CustomEndpoint: (() {
        final guardedValue = map['cloudfunctions2CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      colabCustomEndpoint: (() {
        final guardedValue = map['colabCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      composerCustomEndpoint: (() {
        final guardedValue = map['composerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computeCustomEndpoint: (() {
        final guardedValue = map['computeCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contactCenterInsightsCustomEndpoint: (() {
        final guardedValue = map['contactCenterInsightsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerAnalysisCustomEndpoint: (() {
        final guardedValue = map['containerAnalysisCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerAttachedCustomEndpoint: (() {
        final guardedValue = map['containerAttachedCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerAwsCustomEndpoint: (() {
        final guardedValue = map['containerAwsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerAzureCustomEndpoint: (() {
        final guardedValue = map['containerAzureCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerCustomEndpoint: (() {
        final guardedValue = map['containerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      coreBillingCustomEndpoint: (() {
        final guardedValue = map['coreBillingCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataCatalogCustomEndpoint: (() {
        final guardedValue = map['dataCatalogCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataFusionCustomEndpoint: (() {
        final guardedValue = map['dataFusionCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataLossPreventionCustomEndpoint: (() {
        final guardedValue = map['dataLossPreventionCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataPipelineCustomEndpoint: (() {
        final guardedValue = map['dataPipelineCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databaseMigrationServiceCustomEndpoint: (() {
        final guardedValue = map['databaseMigrationServiceCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataflowCustomEndpoint: (() {
        final guardedValue = map['dataflowCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataformCustomEndpoint: (() {
        final guardedValue = map['dataformCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataplexCustomEndpoint: (() {
        final guardedValue = map['dataplexCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataprocCustomEndpoint: (() {
        final guardedValue = map['dataprocCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataprocGdcCustomEndpoint: (() {
        final guardedValue = map['dataprocGdcCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataprocMetastoreCustomEndpoint: (() {
        final guardedValue = map['dataprocMetastoreCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      datastreamCustomEndpoint: (() {
        final guardedValue = map['datastreamCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultLabels: (() {
        final guardedValue = map['defaultLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      deploymentManagerCustomEndpoint: (() {
        final guardedValue = map['deploymentManagerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      developerConnectCustomEndpoint: (() {
        final guardedValue = map['developerConnectCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dialogflowCustomEndpoint: (() {
        final guardedValue = map['dialogflowCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dialogflowCxCustomEndpoint: (() {
        final guardedValue = map['dialogflowCxCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableGooglePartnerName: (() {
        final guardedValue = map['disableGooglePartnerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      discoveryEngineCustomEndpoint: (() {
        final guardedValue = map['discoveryEngineCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsCustomEndpoint: (() {
        final guardedValue = map['dnsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentAiCustomEndpoint: (() {
        final guardedValue = map['documentAiCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentAiWarehouseCustomEndpoint: (() {
        final guardedValue = map['documentAiWarehouseCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edgecontainerCustomEndpoint: (() {
        final guardedValue = map['edgecontainerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edgenetworkCustomEndpoint: (() {
        final guardedValue = map['edgenetworkCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      essentialContactsCustomEndpoint: (() {
        final guardedValue = map['essentialContactsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventarcCustomEndpoint: (() {
        final guardedValue = map['eventarcCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalCredentials: (() {
        final guardedValue = map['externalCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProviderExternalCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      filestoreCustomEndpoint: (() {
        final guardedValue = map['filestoreCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firebaseAiLogicCustomEndpoint: (() {
        final guardedValue = map['firebaseAiLogicCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firebaseAppCheckCustomEndpoint: (() {
        final guardedValue = map['firebaseAppCheckCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firebaseAppHostingCustomEndpoint: (() {
        final guardedValue = map['firebaseAppHostingCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firebaseCustomEndpoint: (() {
        final guardedValue = map['firebaseCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firebaseDataConnectCustomEndpoint: (() {
        final guardedValue = map['firebaseDataConnectCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firebaseDatabaseCustomEndpoint: (() {
        final guardedValue = map['firebaseDatabaseCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firebaseExtensionsCustomEndpoint: (() {
        final guardedValue = map['firebaseExtensionsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firebaseHostingCustomEndpoint: (() {
        final guardedValue = map['firebaseHostingCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firebaseStorageCustomEndpoint: (() {
        final guardedValue = map['firebaseStorageCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firebaserulesCustomEndpoint: (() {
        final guardedValue = map['firebaserulesCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      firestoreCustomEndpoint: (() {
        final guardedValue = map['firestoreCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      geminiCustomEndpoint: (() {
        final guardedValue = map['geminiCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gkeBackupCustomEndpoint: (() {
        final guardedValue = map['gkeBackupCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gkeHub2CustomEndpoint: (() {
        final guardedValue = map['gkeHub2CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gkeHubCustomEndpoint: (() {
        final guardedValue = map['gkeHubCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gkeonpremCustomEndpoint: (() {
        final guardedValue = map['gkeonpremCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      googlePartnerName: (() {
        final guardedValue = map['googlePartnerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthcareCustomEndpoint: (() {
        final guardedValue = map['healthcareCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iam2CustomEndpoint: (() {
        final guardedValue = map['iam2CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iam3CustomEndpoint: (() {
        final guardedValue = map['iam3CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iamBetaCustomEndpoint: (() {
        final guardedValue = map['iamBetaCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iamCredentialsCustomEndpoint: (() {
        final guardedValue = map['iamCredentialsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iamCustomEndpoint: (() {
        final guardedValue = map['iamCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iamWorkforcePoolCustomEndpoint: (() {
        final guardedValue = map['iamWorkforcePoolCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iapCustomEndpoint: (() {
        final guardedValue = map['iapCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identityPlatformCustomEndpoint: (() {
        final guardedValue = map['identityPlatformCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      impersonateServiceAccount: (() {
        final guardedValue = map['impersonateServiceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      impersonateServiceAccountDelegates: (() {
        final guardedValue = map['impersonateServiceAccountDelegates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      integrationConnectorsCustomEndpoint: (() {
        final guardedValue = map['integrationConnectorsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      integrationsCustomEndpoint: (() {
        final guardedValue = map['integrationsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsCustomEndpoint: (() {
        final guardedValue = map['kmsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loggingCustomEndpoint: (() {
        final guardedValue = map['loggingCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lookerCustomEndpoint: (() {
        final guardedValue = map['lookerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lustreCustomEndpoint: (() {
        final guardedValue = map['lustreCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedKafkaCustomEndpoint: (() {
        final guardedValue = map['managedKafkaCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memcacheCustomEndpoint: (() {
        final guardedValue = map['memcacheCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memorystoreCustomEndpoint: (() {
        final guardedValue = map['memorystoreCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      migrationCenterCustomEndpoint: (() {
        final guardedValue = map['migrationCenterCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mlEngineCustomEndpoint: (() {
        final guardedValue = map['mlEngineCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelArmorCustomEndpoint: (() {
        final guardedValue = map['modelArmorCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelArmorGlobalCustomEndpoint: (() {
        final guardedValue = map['modelArmorGlobalCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monitoringCustomEndpoint: (() {
        final guardedValue = map['monitoringCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netappCustomEndpoint: (() {
        final guardedValue = map['netappCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkConnectivityCustomEndpoint: (() {
        final guardedValue = map['networkConnectivityCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkConnectivityv1CustomEndpoint: (() {
        final guardedValue = map['networkConnectivityv1CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkManagementCustomEndpoint: (() {
        final guardedValue = map['networkManagementCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkSecurityCustomEndpoint: (() {
        final guardedValue = map['networkSecurityCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkServicesCustomEndpoint: (() {
        final guardedValue = map['networkServicesCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notebooksCustomEndpoint: (() {
        final guardedValue = map['notebooksCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      observabilityCustomEndpoint: (() {
        final guardedValue = map['observabilityCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oracleDatabaseCustomEndpoint: (() {
        final guardedValue = map['oracleDatabaseCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orgPolicyCustomEndpoint: (() {
        final guardedValue = map['orgPolicyCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osConfigCustomEndpoint: (() {
        final guardedValue = map['osConfigCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osConfigV2CustomEndpoint: (() {
        final guardedValue = map['osConfigV2CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osLoginCustomEndpoint: (() {
        final guardedValue = map['osLoginCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parallelstoreCustomEndpoint: (() {
        final guardedValue = map['parallelstoreCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterManagerCustomEndpoint: (() {
        final guardedValue = map['parameterManagerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterManagerRegionalCustomEndpoint: (() {
        final guardedValue = map['parameterManagerRegionalCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privatecaCustomEndpoint: (() {
        final guardedValue = map['privatecaCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privilegedAccessManagerCustomEndpoint: (() {
        final guardedValue = map['privilegedAccessManagerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicCaCustomEndpoint: (() {
        final guardedValue = map['publicCaCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pubsubCustomEndpoint: (() {
        final guardedValue = map['pubsubCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pubsubLiteCustomEndpoint: (() {
        final guardedValue = map['pubsubLiteCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiAttributionLabelAdditionStrategy: (() {
        final guardedValue = map['pulumiAttributionLabelAdditionStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recaptchaEnterpriseCustomEndpoint: (() {
        final guardedValue = map['recaptchaEnterpriseCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      redisCustomEndpoint: (() {
        final guardedValue = map['redisCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestReason: (() {
        final guardedValue = map['requestReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestTimeout: (() {
        final guardedValue = map['requestTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceManager3CustomEndpoint: (() {
        final guardedValue = map['resourceManager3CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceManagerCustomEndpoint: (() {
        final guardedValue = map['resourceManagerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceManagerV3CustomEndpoint: (() {
        final guardedValue = map['resourceManagerV3CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runtimeConfigCustomEndpoint: (() {
        final guardedValue = map['runtimeConfigCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runtimeconfigCustomEndpoint: (() {
        final guardedValue = map['runtimeconfigCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      saasRuntimeCustomEndpoint: (() {
        final guardedValue = map['saasRuntimeCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      secretManagerCustomEndpoint: (() {
        final guardedValue = map['secretManagerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretManagerRegionalCustomEndpoint: (() {
        final guardedValue = map['secretManagerRegionalCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secureSourceManagerCustomEndpoint: (() {
        final guardedValue = map['secureSourceManagerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityCenterCustomEndpoint: (() {
        final guardedValue = map['securityCenterCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityCenterManagementCustomEndpoint: (() {
        final guardedValue = map['securityCenterManagementCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityCenterV2CustomEndpoint: (() {
        final guardedValue = map['securityCenterV2CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityScannerCustomEndpoint: (() {
        final guardedValue = map['securityScannerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securitypostureCustomEndpoint: (() {
        final guardedValue = map['securitypostureCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceDirectoryCustomEndpoint: (() {
        final guardedValue = map['serviceDirectoryCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceManagementCustomEndpoint: (() {
        final guardedValue = map['serviceManagementCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceNetworkingCustomEndpoint: (() {
        final guardedValue = map['serviceNetworkingCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceUsageCustomEndpoint: (() {
        final guardedValue = map['serviceUsageCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteVerificationCustomEndpoint: (() {
        final guardedValue = map['siteVerificationCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceRepoCustomEndpoint: (() {
        final guardedValue = map['sourceRepoCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spannerCustomEndpoint: (() {
        final guardedValue = map['spannerCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sqlCustomEndpoint: (() {
        final guardedValue = map['sqlCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageBatchOperationsCustomEndpoint: (() {
        final guardedValue = map['storageBatchOperationsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageControlCustomEndpoint: (() {
        final guardedValue = map['storageControlCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageCustomEndpoint: (() {
        final guardedValue = map['storageCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageInsightsCustomEndpoint: (() {
        final guardedValue = map['storageInsightsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageTransferCustomEndpoint: (() {
        final guardedValue = map['storageTransferCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagsCustomEndpoint: (() {
        final guardedValue = map['tagsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagsLocationCustomEndpoint: (() {
        final guardedValue = map['tagsLocationCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tpuV2CustomEndpoint: (() {
        final guardedValue = map['tpuV2CustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transcoderCustomEndpoint: (() {
        final guardedValue = map['transcoderCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      universeDomain: (() {
        final guardedValue = map['universeDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userProjectOverride: (() {
        final guardedValue = map['userProjectOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      vertexAiCustomEndpoint: (() {
        final guardedValue = map['vertexAiCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmwareengineCustomEndpoint: (() {
        final guardedValue = map['vmwareengineCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcAccessCustomEndpoint: (() {
        final guardedValue = map['vpcAccessCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workbenchCustomEndpoint: (() {
        final guardedValue = map['workbenchCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workflowsCustomEndpoint: (() {
        final guardedValue = map['workflowsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workstationsCustomEndpoint: (() {
        final guardedValue = map['workstationsCustomEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

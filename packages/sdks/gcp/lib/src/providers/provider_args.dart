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
      accessApprovalCustomEndpoint: map['accessApprovalCustomEndpoint'] == null ? null : (map['accessApprovalCustomEndpoint'] as String).input(),
      accessContextManagerCustomEndpoint: map['accessContextManagerCustomEndpoint'] == null ? null : (map['accessContextManagerCustomEndpoint'] as String).input(),
      accessToken: map['accessToken'] == null ? null : (map['accessToken'] as String).input(),
      activeDirectoryCustomEndpoint: map['activeDirectoryCustomEndpoint'] == null ? null : (map['activeDirectoryCustomEndpoint'] as String).input(),
      addPulumiAttributionLabel: map['addPulumiAttributionLabel'] == null ? null : (map['addPulumiAttributionLabel'] as bool).input(),
      alloydbCustomEndpoint: map['alloydbCustomEndpoint'] == null ? null : (map['alloydbCustomEndpoint'] as String).input(),
      apiGatewayCustomEndpoint: map['apiGatewayCustomEndpoint'] == null ? null : (map['apiGatewayCustomEndpoint'] as String).input(),
      apigeeCustomEndpoint: map['apigeeCustomEndpoint'] == null ? null : (map['apigeeCustomEndpoint'] as String).input(),
      apihubCustomEndpoint: map['apihubCustomEndpoint'] == null ? null : (map['apihubCustomEndpoint'] as String).input(),
      apikeysCustomEndpoint: map['apikeysCustomEndpoint'] == null ? null : (map['apikeysCustomEndpoint'] as String).input(),
      appEngineCustomEndpoint: map['appEngineCustomEndpoint'] == null ? null : (map['appEngineCustomEndpoint'] as String).input(),
      apphubCustomEndpoint: map['apphubCustomEndpoint'] == null ? null : (map['apphubCustomEndpoint'] as String).input(),
      artifactRegistryCustomEndpoint: map['artifactRegistryCustomEndpoint'] == null ? null : (map['artifactRegistryCustomEndpoint'] as String).input(),
      assuredWorkloadsCustomEndpoint: map['assuredWorkloadsCustomEndpoint'] == null ? null : (map['assuredWorkloadsCustomEndpoint'] as String).input(),
      backupDrCustomEndpoint: map['backupDrCustomEndpoint'] == null ? null : (map['backupDrCustomEndpoint'] as String).input(),
      batching: map['batching'] == null ? null : (ProviderBatching.fromMap((map['batching'] as Map).cast<String, dynamic>())).input(),
      beyondcorpCustomEndpoint: map['beyondcorpCustomEndpoint'] == null ? null : (map['beyondcorpCustomEndpoint'] as String).input(),
      bigQueryCustomEndpoint: map['bigQueryCustomEndpoint'] == null ? null : (map['bigQueryCustomEndpoint'] as String).input(),
      biglakeCustomEndpoint: map['biglakeCustomEndpoint'] == null ? null : (map['biglakeCustomEndpoint'] as String).input(),
      biglakeIcebergCustomEndpoint: map['biglakeIcebergCustomEndpoint'] == null ? null : (map['biglakeIcebergCustomEndpoint'] as String).input(),
      bigqueryAnalyticsHubCustomEndpoint: map['bigqueryAnalyticsHubCustomEndpoint'] == null ? null : (map['bigqueryAnalyticsHubCustomEndpoint'] as String).input(),
      bigqueryConnectionCustomEndpoint: map['bigqueryConnectionCustomEndpoint'] == null ? null : (map['bigqueryConnectionCustomEndpoint'] as String).input(),
      bigqueryDataTransferCustomEndpoint: map['bigqueryDataTransferCustomEndpoint'] == null ? null : (map['bigqueryDataTransferCustomEndpoint'] as String).input(),
      bigqueryDatapolicyCustomEndpoint: map['bigqueryDatapolicyCustomEndpoint'] == null ? null : (map['bigqueryDatapolicyCustomEndpoint'] as String).input(),
      bigqueryDatapolicyv2CustomEndpoint: map['bigqueryDatapolicyv2CustomEndpoint'] == null ? null : (map['bigqueryDatapolicyv2CustomEndpoint'] as String).input(),
      bigqueryReservationCustomEndpoint: map['bigqueryReservationCustomEndpoint'] == null ? null : (map['bigqueryReservationCustomEndpoint'] as String).input(),
      bigtableCustomEndpoint: map['bigtableCustomEndpoint'] == null ? null : (map['bigtableCustomEndpoint'] as String).input(),
      billingCustomEndpoint: map['billingCustomEndpoint'] == null ? null : (map['billingCustomEndpoint'] as String).input(),
      billingProject: map['billingProject'] == null ? null : (map['billingProject'] as String).input(),
      binaryAuthorizationCustomEndpoint: map['binaryAuthorizationCustomEndpoint'] == null ? null : (map['binaryAuthorizationCustomEndpoint'] as String).input(),
      blockchainNodeEngineCustomEndpoint: map['blockchainNodeEngineCustomEndpoint'] == null ? null : (map['blockchainNodeEngineCustomEndpoint'] as String).input(),
      certificateManagerCustomEndpoint: map['certificateManagerCustomEndpoint'] == null ? null : (map['certificateManagerCustomEndpoint'] as String).input(),
      cesCustomEndpoint: map['cesCustomEndpoint'] == null ? null : (map['cesCustomEndpoint'] as String).input(),
      chronicleCustomEndpoint: map['chronicleCustomEndpoint'] == null ? null : (map['chronicleCustomEndpoint'] as String).input(),
      cloudAssetCustomEndpoint: map['cloudAssetCustomEndpoint'] == null ? null : (map['cloudAssetCustomEndpoint'] as String).input(),
      cloudBillingCustomEndpoint: map['cloudBillingCustomEndpoint'] == null ? null : (map['cloudBillingCustomEndpoint'] as String).input(),
      cloudBuildCustomEndpoint: map['cloudBuildCustomEndpoint'] == null ? null : (map['cloudBuildCustomEndpoint'] as String).input(),
      cloudFunctionsCustomEndpoint: map['cloudFunctionsCustomEndpoint'] == null ? null : (map['cloudFunctionsCustomEndpoint'] as String).input(),
      cloudIdentityCustomEndpoint: map['cloudIdentityCustomEndpoint'] == null ? null : (map['cloudIdentityCustomEndpoint'] as String).input(),
      cloudIdsCustomEndpoint: map['cloudIdsCustomEndpoint'] == null ? null : (map['cloudIdsCustomEndpoint'] as String).input(),
      cloudQuotasCustomEndpoint: map['cloudQuotasCustomEndpoint'] == null ? null : (map['cloudQuotasCustomEndpoint'] as String).input(),
      cloudResourceManagerCustomEndpoint: map['cloudResourceManagerCustomEndpoint'] == null ? null : (map['cloudResourceManagerCustomEndpoint'] as String).input(),
      cloudRunCustomEndpoint: map['cloudRunCustomEndpoint'] == null ? null : (map['cloudRunCustomEndpoint'] as String).input(),
      cloudRunV2CustomEndpoint: map['cloudRunV2CustomEndpoint'] == null ? null : (map['cloudRunV2CustomEndpoint'] as String).input(),
      cloudSchedulerCustomEndpoint: map['cloudSchedulerCustomEndpoint'] == null ? null : (map['cloudSchedulerCustomEndpoint'] as String).input(),
      cloudSecurityComplianceCustomEndpoint: map['cloudSecurityComplianceCustomEndpoint'] == null ? null : (map['cloudSecurityComplianceCustomEndpoint'] as String).input(),
      cloudTasksCustomEndpoint: map['cloudTasksCustomEndpoint'] == null ? null : (map['cloudTasksCustomEndpoint'] as String).input(),
      cloudbuildv2CustomEndpoint: map['cloudbuildv2CustomEndpoint'] == null ? null : (map['cloudbuildv2CustomEndpoint'] as String).input(),
      clouddeployCustomEndpoint: map['clouddeployCustomEndpoint'] == null ? null : (map['clouddeployCustomEndpoint'] as String).input(),
      clouddomainsCustomEndpoint: map['clouddomainsCustomEndpoint'] == null ? null : (map['clouddomainsCustomEndpoint'] as String).input(),
      cloudfunctions2CustomEndpoint: map['cloudfunctions2CustomEndpoint'] == null ? null : (map['cloudfunctions2CustomEndpoint'] as String).input(),
      colabCustomEndpoint: map['colabCustomEndpoint'] == null ? null : (map['colabCustomEndpoint'] as String).input(),
      composerCustomEndpoint: map['composerCustomEndpoint'] == null ? null : (map['composerCustomEndpoint'] as String).input(),
      computeCustomEndpoint: map['computeCustomEndpoint'] == null ? null : (map['computeCustomEndpoint'] as String).input(),
      contactCenterInsightsCustomEndpoint: map['contactCenterInsightsCustomEndpoint'] == null ? null : (map['contactCenterInsightsCustomEndpoint'] as String).input(),
      containerAnalysisCustomEndpoint: map['containerAnalysisCustomEndpoint'] == null ? null : (map['containerAnalysisCustomEndpoint'] as String).input(),
      containerAttachedCustomEndpoint: map['containerAttachedCustomEndpoint'] == null ? null : (map['containerAttachedCustomEndpoint'] as String).input(),
      containerAwsCustomEndpoint: map['containerAwsCustomEndpoint'] == null ? null : (map['containerAwsCustomEndpoint'] as String).input(),
      containerAzureCustomEndpoint: map['containerAzureCustomEndpoint'] == null ? null : (map['containerAzureCustomEndpoint'] as String).input(),
      containerCustomEndpoint: map['containerCustomEndpoint'] == null ? null : (map['containerCustomEndpoint'] as String).input(),
      coreBillingCustomEndpoint: map['coreBillingCustomEndpoint'] == null ? null : (map['coreBillingCustomEndpoint'] as String).input(),
      credentials: map['credentials'] == null ? null : (map['credentials'] as String).input(),
      dataCatalogCustomEndpoint: map['dataCatalogCustomEndpoint'] == null ? null : (map['dataCatalogCustomEndpoint'] as String).input(),
      dataFusionCustomEndpoint: map['dataFusionCustomEndpoint'] == null ? null : (map['dataFusionCustomEndpoint'] as String).input(),
      dataLossPreventionCustomEndpoint: map['dataLossPreventionCustomEndpoint'] == null ? null : (map['dataLossPreventionCustomEndpoint'] as String).input(),
      dataPipelineCustomEndpoint: map['dataPipelineCustomEndpoint'] == null ? null : (map['dataPipelineCustomEndpoint'] as String).input(),
      databaseMigrationServiceCustomEndpoint: map['databaseMigrationServiceCustomEndpoint'] == null ? null : (map['databaseMigrationServiceCustomEndpoint'] as String).input(),
      dataflowCustomEndpoint: map['dataflowCustomEndpoint'] == null ? null : (map['dataflowCustomEndpoint'] as String).input(),
      dataformCustomEndpoint: map['dataformCustomEndpoint'] == null ? null : (map['dataformCustomEndpoint'] as String).input(),
      dataplexCustomEndpoint: map['dataplexCustomEndpoint'] == null ? null : (map['dataplexCustomEndpoint'] as String).input(),
      dataprocCustomEndpoint: map['dataprocCustomEndpoint'] == null ? null : (map['dataprocCustomEndpoint'] as String).input(),
      dataprocGdcCustomEndpoint: map['dataprocGdcCustomEndpoint'] == null ? null : (map['dataprocGdcCustomEndpoint'] as String).input(),
      dataprocMetastoreCustomEndpoint: map['dataprocMetastoreCustomEndpoint'] == null ? null : (map['dataprocMetastoreCustomEndpoint'] as String).input(),
      datastreamCustomEndpoint: map['datastreamCustomEndpoint'] == null ? null : (map['datastreamCustomEndpoint'] as String).input(),
      defaultLabels: map['defaultLabels'] == null ? null : ((map['defaultLabels'] as Map).cast<String, String>()).input(),
      deploymentManagerCustomEndpoint: map['deploymentManagerCustomEndpoint'] == null ? null : (map['deploymentManagerCustomEndpoint'] as String).input(),
      developerConnectCustomEndpoint: map['developerConnectCustomEndpoint'] == null ? null : (map['developerConnectCustomEndpoint'] as String).input(),
      dialogflowCustomEndpoint: map['dialogflowCustomEndpoint'] == null ? null : (map['dialogflowCustomEndpoint'] as String).input(),
      dialogflowCxCustomEndpoint: map['dialogflowCxCustomEndpoint'] == null ? null : (map['dialogflowCxCustomEndpoint'] as String).input(),
      disableGooglePartnerName: map['disableGooglePartnerName'] == null ? null : (map['disableGooglePartnerName'] as bool).input(),
      discoveryEngineCustomEndpoint: map['discoveryEngineCustomEndpoint'] == null ? null : (map['discoveryEngineCustomEndpoint'] as String).input(),
      dnsCustomEndpoint: map['dnsCustomEndpoint'] == null ? null : (map['dnsCustomEndpoint'] as String).input(),
      documentAiCustomEndpoint: map['documentAiCustomEndpoint'] == null ? null : (map['documentAiCustomEndpoint'] as String).input(),
      documentAiWarehouseCustomEndpoint: map['documentAiWarehouseCustomEndpoint'] == null ? null : (map['documentAiWarehouseCustomEndpoint'] as String).input(),
      edgecontainerCustomEndpoint: map['edgecontainerCustomEndpoint'] == null ? null : (map['edgecontainerCustomEndpoint'] as String).input(),
      edgenetworkCustomEndpoint: map['edgenetworkCustomEndpoint'] == null ? null : (map['edgenetworkCustomEndpoint'] as String).input(),
      essentialContactsCustomEndpoint: map['essentialContactsCustomEndpoint'] == null ? null : (map['essentialContactsCustomEndpoint'] as String).input(),
      eventarcCustomEndpoint: map['eventarcCustomEndpoint'] == null ? null : (map['eventarcCustomEndpoint'] as String).input(),
      externalCredentials: map['externalCredentials'] == null ? null : (ProviderExternalCredentials.fromMap((map['externalCredentials'] as Map).cast<String, dynamic>())).input(),
      filestoreCustomEndpoint: map['filestoreCustomEndpoint'] == null ? null : (map['filestoreCustomEndpoint'] as String).input(),
      firebaseAiLogicCustomEndpoint: map['firebaseAiLogicCustomEndpoint'] == null ? null : (map['firebaseAiLogicCustomEndpoint'] as String).input(),
      firebaseAppCheckCustomEndpoint: map['firebaseAppCheckCustomEndpoint'] == null ? null : (map['firebaseAppCheckCustomEndpoint'] as String).input(),
      firebaseAppHostingCustomEndpoint: map['firebaseAppHostingCustomEndpoint'] == null ? null : (map['firebaseAppHostingCustomEndpoint'] as String).input(),
      firebaseCustomEndpoint: map['firebaseCustomEndpoint'] == null ? null : (map['firebaseCustomEndpoint'] as String).input(),
      firebaseDataConnectCustomEndpoint: map['firebaseDataConnectCustomEndpoint'] == null ? null : (map['firebaseDataConnectCustomEndpoint'] as String).input(),
      firebaseDatabaseCustomEndpoint: map['firebaseDatabaseCustomEndpoint'] == null ? null : (map['firebaseDatabaseCustomEndpoint'] as String).input(),
      firebaseExtensionsCustomEndpoint: map['firebaseExtensionsCustomEndpoint'] == null ? null : (map['firebaseExtensionsCustomEndpoint'] as String).input(),
      firebaseHostingCustomEndpoint: map['firebaseHostingCustomEndpoint'] == null ? null : (map['firebaseHostingCustomEndpoint'] as String).input(),
      firebaseStorageCustomEndpoint: map['firebaseStorageCustomEndpoint'] == null ? null : (map['firebaseStorageCustomEndpoint'] as String).input(),
      firebaserulesCustomEndpoint: map['firebaserulesCustomEndpoint'] == null ? null : (map['firebaserulesCustomEndpoint'] as String).input(),
      firestoreCustomEndpoint: map['firestoreCustomEndpoint'] == null ? null : (map['firestoreCustomEndpoint'] as String).input(),
      geminiCustomEndpoint: map['geminiCustomEndpoint'] == null ? null : (map['geminiCustomEndpoint'] as String).input(),
      gkeBackupCustomEndpoint: map['gkeBackupCustomEndpoint'] == null ? null : (map['gkeBackupCustomEndpoint'] as String).input(),
      gkeHub2CustomEndpoint: map['gkeHub2CustomEndpoint'] == null ? null : (map['gkeHub2CustomEndpoint'] as String).input(),
      gkeHubCustomEndpoint: map['gkeHubCustomEndpoint'] == null ? null : (map['gkeHubCustomEndpoint'] as String).input(),
      gkeonpremCustomEndpoint: map['gkeonpremCustomEndpoint'] == null ? null : (map['gkeonpremCustomEndpoint'] as String).input(),
      googlePartnerName: map['googlePartnerName'] == null ? null : (map['googlePartnerName'] as String).input(),
      healthcareCustomEndpoint: map['healthcareCustomEndpoint'] == null ? null : (map['healthcareCustomEndpoint'] as String).input(),
      iam2CustomEndpoint: map['iam2CustomEndpoint'] == null ? null : (map['iam2CustomEndpoint'] as String).input(),
      iam3CustomEndpoint: map['iam3CustomEndpoint'] == null ? null : (map['iam3CustomEndpoint'] as String).input(),
      iamBetaCustomEndpoint: map['iamBetaCustomEndpoint'] == null ? null : (map['iamBetaCustomEndpoint'] as String).input(),
      iamCredentialsCustomEndpoint: map['iamCredentialsCustomEndpoint'] == null ? null : (map['iamCredentialsCustomEndpoint'] as String).input(),
      iamCustomEndpoint: map['iamCustomEndpoint'] == null ? null : (map['iamCustomEndpoint'] as String).input(),
      iamWorkforcePoolCustomEndpoint: map['iamWorkforcePoolCustomEndpoint'] == null ? null : (map['iamWorkforcePoolCustomEndpoint'] as String).input(),
      iapCustomEndpoint: map['iapCustomEndpoint'] == null ? null : (map['iapCustomEndpoint'] as String).input(),
      identityPlatformCustomEndpoint: map['identityPlatformCustomEndpoint'] == null ? null : (map['identityPlatformCustomEndpoint'] as String).input(),
      impersonateServiceAccount: map['impersonateServiceAccount'] == null ? null : (map['impersonateServiceAccount'] as String).input(),
      impersonateServiceAccountDelegates: map['impersonateServiceAccountDelegates'] == null ? null : ((map['impersonateServiceAccountDelegates'] as List).cast<String>()).input(),
      integrationConnectorsCustomEndpoint: map['integrationConnectorsCustomEndpoint'] == null ? null : (map['integrationConnectorsCustomEndpoint'] as String).input(),
      integrationsCustomEndpoint: map['integrationsCustomEndpoint'] == null ? null : (map['integrationsCustomEndpoint'] as String).input(),
      kmsCustomEndpoint: map['kmsCustomEndpoint'] == null ? null : (map['kmsCustomEndpoint'] as String).input(),
      loggingCustomEndpoint: map['loggingCustomEndpoint'] == null ? null : (map['loggingCustomEndpoint'] as String).input(),
      lookerCustomEndpoint: map['lookerCustomEndpoint'] == null ? null : (map['lookerCustomEndpoint'] as String).input(),
      lustreCustomEndpoint: map['lustreCustomEndpoint'] == null ? null : (map['lustreCustomEndpoint'] as String).input(),
      managedKafkaCustomEndpoint: map['managedKafkaCustomEndpoint'] == null ? null : (map['managedKafkaCustomEndpoint'] as String).input(),
      memcacheCustomEndpoint: map['memcacheCustomEndpoint'] == null ? null : (map['memcacheCustomEndpoint'] as String).input(),
      memorystoreCustomEndpoint: map['memorystoreCustomEndpoint'] == null ? null : (map['memorystoreCustomEndpoint'] as String).input(),
      migrationCenterCustomEndpoint: map['migrationCenterCustomEndpoint'] == null ? null : (map['migrationCenterCustomEndpoint'] as String).input(),
      mlEngineCustomEndpoint: map['mlEngineCustomEndpoint'] == null ? null : (map['mlEngineCustomEndpoint'] as String).input(),
      modelArmorCustomEndpoint: map['modelArmorCustomEndpoint'] == null ? null : (map['modelArmorCustomEndpoint'] as String).input(),
      modelArmorGlobalCustomEndpoint: map['modelArmorGlobalCustomEndpoint'] == null ? null : (map['modelArmorGlobalCustomEndpoint'] as String).input(),
      monitoringCustomEndpoint: map['monitoringCustomEndpoint'] == null ? null : (map['monitoringCustomEndpoint'] as String).input(),
      netappCustomEndpoint: map['netappCustomEndpoint'] == null ? null : (map['netappCustomEndpoint'] as String).input(),
      networkConnectivityCustomEndpoint: map['networkConnectivityCustomEndpoint'] == null ? null : (map['networkConnectivityCustomEndpoint'] as String).input(),
      networkConnectivityv1CustomEndpoint: map['networkConnectivityv1CustomEndpoint'] == null ? null : (map['networkConnectivityv1CustomEndpoint'] as String).input(),
      networkManagementCustomEndpoint: map['networkManagementCustomEndpoint'] == null ? null : (map['networkManagementCustomEndpoint'] as String).input(),
      networkSecurityCustomEndpoint: map['networkSecurityCustomEndpoint'] == null ? null : (map['networkSecurityCustomEndpoint'] as String).input(),
      networkServicesCustomEndpoint: map['networkServicesCustomEndpoint'] == null ? null : (map['networkServicesCustomEndpoint'] as String).input(),
      notebooksCustomEndpoint: map['notebooksCustomEndpoint'] == null ? null : (map['notebooksCustomEndpoint'] as String).input(),
      observabilityCustomEndpoint: map['observabilityCustomEndpoint'] == null ? null : (map['observabilityCustomEndpoint'] as String).input(),
      oracleDatabaseCustomEndpoint: map['oracleDatabaseCustomEndpoint'] == null ? null : (map['oracleDatabaseCustomEndpoint'] as String).input(),
      orgPolicyCustomEndpoint: map['orgPolicyCustomEndpoint'] == null ? null : (map['orgPolicyCustomEndpoint'] as String).input(),
      osConfigCustomEndpoint: map['osConfigCustomEndpoint'] == null ? null : (map['osConfigCustomEndpoint'] as String).input(),
      osConfigV2CustomEndpoint: map['osConfigV2CustomEndpoint'] == null ? null : (map['osConfigV2CustomEndpoint'] as String).input(),
      osLoginCustomEndpoint: map['osLoginCustomEndpoint'] == null ? null : (map['osLoginCustomEndpoint'] as String).input(),
      parallelstoreCustomEndpoint: map['parallelstoreCustomEndpoint'] == null ? null : (map['parallelstoreCustomEndpoint'] as String).input(),
      parameterManagerCustomEndpoint: map['parameterManagerCustomEndpoint'] == null ? null : (map['parameterManagerCustomEndpoint'] as String).input(),
      parameterManagerRegionalCustomEndpoint: map['parameterManagerRegionalCustomEndpoint'] == null ? null : (map['parameterManagerRegionalCustomEndpoint'] as String).input(),
      privatecaCustomEndpoint: map['privatecaCustomEndpoint'] == null ? null : (map['privatecaCustomEndpoint'] as String).input(),
      privilegedAccessManagerCustomEndpoint: map['privilegedAccessManagerCustomEndpoint'] == null ? null : (map['privilegedAccessManagerCustomEndpoint'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      publicCaCustomEndpoint: map['publicCaCustomEndpoint'] == null ? null : (map['publicCaCustomEndpoint'] as String).input(),
      pubsubCustomEndpoint: map['pubsubCustomEndpoint'] == null ? null : (map['pubsubCustomEndpoint'] as String).input(),
      pubsubLiteCustomEndpoint: map['pubsubLiteCustomEndpoint'] == null ? null : (map['pubsubLiteCustomEndpoint'] as String).input(),
      pulumiAttributionLabelAdditionStrategy: map['pulumiAttributionLabelAdditionStrategy'] == null ? null : (map['pulumiAttributionLabelAdditionStrategy'] as String).input(),
      recaptchaEnterpriseCustomEndpoint: map['recaptchaEnterpriseCustomEndpoint'] == null ? null : (map['recaptchaEnterpriseCustomEndpoint'] as String).input(),
      redisCustomEndpoint: map['redisCustomEndpoint'] == null ? null : (map['redisCustomEndpoint'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      requestReason: map['requestReason'] == null ? null : (map['requestReason'] as String).input(),
      requestTimeout: map['requestTimeout'] == null ? null : (map['requestTimeout'] as String).input(),
      resourceManager3CustomEndpoint: map['resourceManager3CustomEndpoint'] == null ? null : (map['resourceManager3CustomEndpoint'] as String).input(),
      resourceManagerCustomEndpoint: map['resourceManagerCustomEndpoint'] == null ? null : (map['resourceManagerCustomEndpoint'] as String).input(),
      resourceManagerV3CustomEndpoint: map['resourceManagerV3CustomEndpoint'] == null ? null : (map['resourceManagerV3CustomEndpoint'] as String).input(),
      runtimeConfigCustomEndpoint: map['runtimeConfigCustomEndpoint'] == null ? null : (map['runtimeConfigCustomEndpoint'] as String).input(),
      runtimeconfigCustomEndpoint: map['runtimeconfigCustomEndpoint'] == null ? null : (map['runtimeconfigCustomEndpoint'] as String).input(),
      saasRuntimeCustomEndpoint: map['saasRuntimeCustomEndpoint'] == null ? null : (map['saasRuntimeCustomEndpoint'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
      secretManagerCustomEndpoint: map['secretManagerCustomEndpoint'] == null ? null : (map['secretManagerCustomEndpoint'] as String).input(),
      secretManagerRegionalCustomEndpoint: map['secretManagerRegionalCustomEndpoint'] == null ? null : (map['secretManagerRegionalCustomEndpoint'] as String).input(),
      secureSourceManagerCustomEndpoint: map['secureSourceManagerCustomEndpoint'] == null ? null : (map['secureSourceManagerCustomEndpoint'] as String).input(),
      securityCenterCustomEndpoint: map['securityCenterCustomEndpoint'] == null ? null : (map['securityCenterCustomEndpoint'] as String).input(),
      securityCenterManagementCustomEndpoint: map['securityCenterManagementCustomEndpoint'] == null ? null : (map['securityCenterManagementCustomEndpoint'] as String).input(),
      securityCenterV2CustomEndpoint: map['securityCenterV2CustomEndpoint'] == null ? null : (map['securityCenterV2CustomEndpoint'] as String).input(),
      securityScannerCustomEndpoint: map['securityScannerCustomEndpoint'] == null ? null : (map['securityScannerCustomEndpoint'] as String).input(),
      securitypostureCustomEndpoint: map['securitypostureCustomEndpoint'] == null ? null : (map['securitypostureCustomEndpoint'] as String).input(),
      serviceDirectoryCustomEndpoint: map['serviceDirectoryCustomEndpoint'] == null ? null : (map['serviceDirectoryCustomEndpoint'] as String).input(),
      serviceManagementCustomEndpoint: map['serviceManagementCustomEndpoint'] == null ? null : (map['serviceManagementCustomEndpoint'] as String).input(),
      serviceNetworkingCustomEndpoint: map['serviceNetworkingCustomEndpoint'] == null ? null : (map['serviceNetworkingCustomEndpoint'] as String).input(),
      serviceUsageCustomEndpoint: map['serviceUsageCustomEndpoint'] == null ? null : (map['serviceUsageCustomEndpoint'] as String).input(),
      siteVerificationCustomEndpoint: map['siteVerificationCustomEndpoint'] == null ? null : (map['siteVerificationCustomEndpoint'] as String).input(),
      sourceRepoCustomEndpoint: map['sourceRepoCustomEndpoint'] == null ? null : (map['sourceRepoCustomEndpoint'] as String).input(),
      spannerCustomEndpoint: map['spannerCustomEndpoint'] == null ? null : (map['spannerCustomEndpoint'] as String).input(),
      sqlCustomEndpoint: map['sqlCustomEndpoint'] == null ? null : (map['sqlCustomEndpoint'] as String).input(),
      storageBatchOperationsCustomEndpoint: map['storageBatchOperationsCustomEndpoint'] == null ? null : (map['storageBatchOperationsCustomEndpoint'] as String).input(),
      storageControlCustomEndpoint: map['storageControlCustomEndpoint'] == null ? null : (map['storageControlCustomEndpoint'] as String).input(),
      storageCustomEndpoint: map['storageCustomEndpoint'] == null ? null : (map['storageCustomEndpoint'] as String).input(),
      storageInsightsCustomEndpoint: map['storageInsightsCustomEndpoint'] == null ? null : (map['storageInsightsCustomEndpoint'] as String).input(),
      storageTransferCustomEndpoint: map['storageTransferCustomEndpoint'] == null ? null : (map['storageTransferCustomEndpoint'] as String).input(),
      tagsCustomEndpoint: map['tagsCustomEndpoint'] == null ? null : (map['tagsCustomEndpoint'] as String).input(),
      tagsLocationCustomEndpoint: map['tagsLocationCustomEndpoint'] == null ? null : (map['tagsLocationCustomEndpoint'] as String).input(),
      tpuV2CustomEndpoint: map['tpuV2CustomEndpoint'] == null ? null : (map['tpuV2CustomEndpoint'] as String).input(),
      transcoderCustomEndpoint: map['transcoderCustomEndpoint'] == null ? null : (map['transcoderCustomEndpoint'] as String).input(),
      universeDomain: map['universeDomain'] == null ? null : (map['universeDomain'] as String).input(),
      userProjectOverride: map['userProjectOverride'] == null ? null : (map['userProjectOverride'] as bool).input(),
      vertexAiCustomEndpoint: map['vertexAiCustomEndpoint'] == null ? null : (map['vertexAiCustomEndpoint'] as String).input(),
      vmwareengineCustomEndpoint: map['vmwareengineCustomEndpoint'] == null ? null : (map['vmwareengineCustomEndpoint'] as String).input(),
      vpcAccessCustomEndpoint: map['vpcAccessCustomEndpoint'] == null ? null : (map['vpcAccessCustomEndpoint'] as String).input(),
      workbenchCustomEndpoint: map['workbenchCustomEndpoint'] == null ? null : (map['workbenchCustomEndpoint'] as String).input(),
      workflowsCustomEndpoint: map['workflowsCustomEndpoint'] == null ? null : (map['workflowsCustomEndpoint'] as String).input(),
      workstationsCustomEndpoint: map['workstationsCustomEndpoint'] == null ? null : (map['workstationsCustomEndpoint'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}


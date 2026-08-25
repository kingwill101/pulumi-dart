// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_amazon_s3_settings.dart';
import 'feed_details_amazon_s3_v2_settings.dart';
import 'feed_details_amazon_sqs_settings.dart';
import 'feed_details_amazon_sqs_v2_settings.dart';
import 'feed_details_anomali_settings.dart';
import 'feed_details_aws_ec2_hosts_settings.dart';
import 'feed_details_aws_ec2_instances_settings.dart';
import 'feed_details_aws_ec2_vpcs_settings.dart';
import 'feed_details_aws_iam_settings.dart';
import 'feed_details_azure_ad_audit_settings.dart';
import 'feed_details_azure_ad_context_settings.dart';
import 'feed_details_azure_ad_settings.dart';
import 'feed_details_azure_blob_store_settings.dart';
import 'feed_details_azure_blob_store_v2_settings.dart';
import 'feed_details_azure_event_hub_settings.dart';
import 'feed_details_azure_mdm_intune_settings.dart';
import 'feed_details_cloud_passage_settings.dart';
import 'feed_details_cortex_xdr_settings.dart';
import 'feed_details_crowdstrike_alerts_settings.dart';
import 'feed_details_crowdstrike_detects_settings.dart';
import 'feed_details_dummy_log_type_settings.dart';
import 'feed_details_duo_auth_settings.dart';
import 'feed_details_duo_user_context_settings.dart';
import 'feed_details_fox_it_stix_settings.dart';
import 'feed_details_gcs_settings.dart';
import 'feed_details_gcs_v2_settings.dart';
import 'feed_details_google_cloud_identity_device_users_settings.dart';
import 'feed_details_google_cloud_identity_devices_settings.dart';
import 'feed_details_google_cloud_storage_event_driven_settings.dart';
import 'feed_details_http_settings.dart';
import 'feed_details_https_push_amazon_kinesis_firehose_settings.dart';
import 'feed_details_https_push_google_cloud_pubsub_settings.dart';
import 'feed_details_https_push_webhook_settings.dart';
import 'feed_details_imperva_waf_settings.dart';
import 'feed_details_mandiant_ioc_settings.dart';
import 'feed_details_microsoft_graph_alert_settings.dart';
import 'feed_details_microsoft_security_center_alert_settings.dart';
import 'feed_details_mimecast_mail_settings.dart';
import 'feed_details_mimecast_mail_v2_settings.dart';
import 'feed_details_netskope_alert_settings.dart';
import 'feed_details_netskope_alert_v2_settings.dart';
import 'feed_details_office365_settings.dart';
import 'feed_details_okta_settings.dart';
import 'feed_details_okta_user_context_settings.dart';
import 'feed_details_pan_ioc_settings.dart';
import 'feed_details_pan_prisma_cloud_settings.dart';
import 'feed_details_proofpoint_mail_settings.dart';
import 'feed_details_proofpoint_on_demand_settings.dart';
import 'feed_details_pubsub_settings.dart';
import 'feed_details_qualys_scan_settings.dart';
import 'feed_details_qualys_vm_settings.dart';
import 'feed_details_rapid7_insight_settings.dart';
import 'feed_details_recorded_future_ioc_settings.dart';
import 'feed_details_rh_isac_ioc_settings.dart';
import 'feed_details_salesforce_settings.dart';
import 'feed_details_sentinelone_alert_settings.dart';
import 'feed_details_service_now_cmdb_settings.dart';
import 'feed_details_sftp_settings.dart';
import 'feed_details_symantec_event_export_settings.dart';
import 'feed_details_thinkst_canary_settings.dart';
import 'feed_details_threat_connect_ioc_settings.dart';
import 'feed_details_threat_connect_ioc_v3_settings.dart';
import 'feed_details_trellix_hx_alerts_settings.dart';
import 'feed_details_trellix_hx_bulk_acqs_settings.dart';
import 'feed_details_trellix_hx_hosts_settings.dart';
import 'feed_details_workday_settings.dart';
import 'feed_details_workspace_activity_settings.dart';
import 'feed_details_workspace_alerts_settings.dart';
import 'feed_details_workspace_chrome_os_settings.dart';
import 'feed_details_workspace_groups_settings.dart';
import 'feed_details_workspace_mobile_settings.dart';
import 'feed_details_workspace_privileges_settings.dart';
import 'feed_details_workspace_users_settings.dart';

class FeedDetails {
  /// Settings required by Amazon Kinesis Firehose Feeds(HTTP-Push).
  final pulumi.Input<Map<String, dynamic>?>? amazonKinesisFirehoseSettings;
  /// Amazon S3 settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAmazonS3Settings?>? amazonS3Settings;
  /// AmazonS3V2Settings is the settings proto for Omniflow S3 feeds.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAmazonS3V2Settings?>? amazonS3V2Settings;
  /// Amazon SQS settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAmazonSqsSettings?>? amazonSqsSettings;
  /// AmazonSQSV2Settings is the settings proto for Omniflow SQS feeds.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAmazonSqsV2Settings?>? amazonSqsV2Settings;
  /// Anomali IOC settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAnomaliSettings?>? anomaliSettings;
  /// The asset namespace to apply to all logs ingested through this feed.
  final pulumi.Input<String?>? assetNamespace;
  /// AWS EC2 Hosts Settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAwsEc2HostsSettings?>? awsEc2HostsSettings;
  /// AWS EC2 Instances Settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAwsEc2InstancesSettings?>? awsEc2InstancesSettings;
  /// AWS EC2 Vpcs Settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAwsEc2VpcsSettings?>? awsEc2VpcsSettings;
  /// AWSIAMSettings contains details needed for creating an AWS IAM feed.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAwsIamSettings?>? awsIamSettings;
  /// Azure AD Audit settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureAdAuditSettings?>? azureAdAuditSettings;
  /// Azure AD Context settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureAdContextSettings?>? azureAdContextSettings;
  /// Azure AD settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureAdSettings?>? azureAdSettings;
  /// Azure Blob Storage settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureBlobStoreSettings?>? azureBlobStoreSettings;
  /// AzureBlobStoreV2Settings is the settings proto for Azure Blob Storage feeds.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureBlobStoreV2Settings?>? azureBlobStoreV2Settings;
  /// Settings required by Azure Event Hub Feeds.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureEventHubSettings?>? azureEventHubSettings;
  /// Azure MDM Intune settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureMdmIntuneSettings?>? azureMdmIntuneSettings;
  /// CloudPassage settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsCloudPassageSettings?>? cloudPassageSettings;
  /// PAN Cortex XDR settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsCortexXdrSettings?>? cortexXdrSettings;
  /// CrowdStrike Alerts settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsCrowdstrikeAlertsSettings?>? crowdstrikeAlertsSettings;
  /// CrowdStrike Detects settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsCrowdstrikeDetectsSettings?>? crowdstrikeDetectsSettings;
  /// Settings required by Feeds of DummyLogType(used for testing purposes).
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsDummyLogTypeSettings?>? dummyLogTypeSettings;
  /// Duo Authentication settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsDuoAuthSettings?>? duoAuthSettings;
  /// Duo User Context settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsDuoUserContextSettings?>? duoUserContextSettings;
  /// Source Type of the feed.
  /// Possible values:
  /// GOOGLE_CLOUD_STORAGE
  /// HTTP
  /// SFTP
  /// AMAZON_S3
  /// AZURE_BLOBSTORE
  /// API
  /// AMAZON_SQS
  /// PUBSUB
  /// AMAZON_KINESIS_FIREHOSE
  /// WEBHOOK
  /// HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB
  /// HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE
  /// HTTPS_PUSH_WEBHOOK
  /// AZURE_EVENT_HUB
  /// GOOGLE_CLOUD_STORAGE_V2
  /// AMAZON_S3_V2
  /// AMAZON_SQS_V2
  /// AZURE_BLOBSTORE_V2
  /// GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN
  /// Possible values are: `GOOGLE_CLOUD_STORAGE`, `HTTP`, `SFTP`, `AMAZON_S3`, `AZURE_BLOBSTORE`, `API`, `AMAZON_SQS`, `PUBSUB`, `AMAZON_KINESIS_FIREHOSE`, `WEBHOOK`, `HTTPS_PUSH_GOOGLE_CLOUD_PUBSUB`, `HTTPS_PUSH_AMAZON_KINESIS_FIREHOSE`, `HTTPS_PUSH_WEBHOOK`, `AZURE_EVENT_HUB`, `GOOGLE_CLOUD_STORAGE_V2`, `AMAZON_S3_V2`, `AMAZON_SQS_V2`, `AZURE_BLOBSTORE_V2`, `GOOGLE_CLOUD_STORAGE_EVENT_DRIVEN`.
  final pulumi.Input<String?>? feedSourceType;
  /// Fox-IT STIX settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsFoxItStixSettings?>? foxItStixSettings;
  /// Google Cloud Storage settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsGcsSettings?>? gcsSettings;
  /// GoogleCloudStorageV2Settings is the settings proto for Omniflow Google Cloud
  /// Storage feeds.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsGcsV2Settings?>? gcsV2Settings;
  /// Google Cloud Identity Device Users settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsGoogleCloudIdentityDeviceUsersSettings?>? googleCloudIdentityDeviceUsersSettings;
  /// Google Cloud Identity Devices settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsGoogleCloudIdentityDevicesSettings?>? googleCloudIdentityDevicesSettings;
  /// GoogleCloudStorageEventDrivenSettings is the settings proto for Omniflow
  /// Google Cloud Storage feeds driven by pubsub events.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsGoogleCloudStorageEventDrivenSettings?>? googleCloudStorageEventDrivenSettings;
  /// HTTP settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsHttpSettings?>? httpSettings;
  /// Settings required by Amazon Kinesis Firehose Feeds(HTTPS-Push V2).
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsHttpsPushAmazonKinesisFirehoseSettings?>? httpsPushAmazonKinesisFirehoseSettings;
  /// Settings required by Google Cloud Platform Pub/Sub Feeds(HTTPS-Push V2).
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsHttpsPushGoogleCloudPubsubSettings?>? httpsPushGoogleCloudPubsubSettings;
  /// Settings required by Webhook Feeds(HTTPS-Push V2).
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsHttpsPushWebhookSettings?>? httpsPushWebhookSettings;
  /// Imperva WAF settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsImpervaWafSettings?>? impervaWafSettings;
  /// The ingestion metadata labels to apply to all logs ingested through this
  /// feed, and the resulting normalized data.
  final pulumi.Input<Map<String, String>?>? labels;
  /// LogType.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/logTypes/{log_type}
  final pulumi.Input<String> logType;
  /// Mandiant IOC settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsMandiantIocSettings?>? mandiantIocSettings;
  /// Microsoft Graph Alert settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsMicrosoftGraphAlertSettings?>? microsoftGraphAlertSettings;
  /// Microsoft Security Center alert settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsMicrosoftSecurityCenterAlertSettings?>? microsoftSecurityCenterAlertSettings;
  /// Mimecast Mail settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsMimecastMailSettings?>? mimecastMailSettings;
  /// Mimecast Mail V2 Settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsMimecastMailV2Settings?>? mimecastMailV2Settings;
  /// Netskope Alert settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsNetskopeAlertSettings?>? netskopeAlertSettings;
  /// Netskope Alert V2 settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsNetskopeAlertV2Settings?>? netskopeAlertV2Settings;
  /// Office 365 settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsOffice365Settings?>? office365Settings;
  /// Okta settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsOktaSettings?>? oktaSettings;
  /// Okta user context settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsOktaUserContextSettings?>? oktaUserContextSettings;
  /// PAN IOC settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsPanIocSettings?>? panIocSettings;
  /// PAN Prisma Cloud settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsPanPrismaCloudSettings?>? panPrismaCloudSettings;
  /// Proofpoint Mail settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsProofpointMailSettings?>? proofpointMailSettings;
  /// Proofpoint On-demand settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsProofpointOnDemandSettings?>? proofpointOnDemandSettings;
  /// Settings required by Google Cloud Pub/Sub Feeds(HTTP-Push).
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsPubsubSettings?>? pubsubSettings;
  /// Qualys Scan settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsQualysScanSettings?>? qualysScanSettings;
  /// Qualys VM settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsQualysVmSettings?>? qualysVmSettings;
  /// Rapid7 Insight settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsRapid7InsightSettings?>? rapid7InsightSettings;
  /// Recorded Future IOC settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsRecordedFutureIocSettings?>? recordedFutureIocSettings;
  /// RH-ISAC settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsRhIsacIocSettings?>? rhIsacIocSettings;
  /// Salesforce settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSalesforceSettings?>? salesforceSettings;
  /// SentinelOne Alert settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSentineloneAlertSettings?>? sentineloneAlertSettings;
  /// ServiceNow CMDB settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsServiceNowCmdbSettings?>? serviceNowCmdbSettings;
  /// SFTP settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSftpSettings?>? sftpSettings;
  /// (Output)
  /// The status of the feed's migration to STS.
  /// Possible values:
  /// NOT_READY
  /// READY
  /// AUTH_RECONFIG_REQUIRED
  final pulumi.Input<String?>? stsMigrationReadiness;
  /// Symantec Event Export settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsSymantecEventExportSettings?>? symantecEventExportSettings;
  /// Thinkst Canary settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsThinkstCanarySettings?>? thinkstCanarySettings;
  /// ThreatConnect IOC Settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsThreatConnectIocSettings?>? threatConnectIocSettings;
  /// ThreatConnectIoCV3Settings
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsThreatConnectIocV3Settings?>? threatConnectIocV3Settings;
  /// Settings required by Feeds of TrellixHxAlerts.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxAlertsSettings?>? trellixHxAlertsSettings;
  /// Settings required by Feeds of TrellixHxBulkAcqs.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxBulkAcqsSettings?>? trellixHxBulkAcqsSettings;
  /// Settings required by Feeds of TrellixHxHosts.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsTrellixHxHostsSettings?>? trellixHxHostsSettings;
  /// Settings required by Webhook Feeds(HTTP-Push).
  final pulumi.Input<Map<String, dynamic>?>? webhookSettings;
  /// Workday settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkdaySettings?>? workdaySettings;
  /// Workspace Activity settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceActivitySettings?>? workspaceActivitySettings;
  /// Workspace Alert settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceAlertsSettings?>? workspaceAlertsSettings;
  /// Workspace Chrome OS settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceChromeOsSettings?>? workspaceChromeOsSettings;
  /// Workspace Groups settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceGroupsSettings?>? workspaceGroupsSettings;
  /// Workspace Mobile settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspaceMobileSettings?>? workspaceMobileSettings;
  /// Workspace Privileges settings.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsWorkspacePrivilegesSettings?>? workspacePrivilegesSettings;
  /// Workspace Users settings.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedDetailsAmazonS3Settings"&gt;&lt;/a&gt;The `amazonS3Settings` block supports:
  final pulumi.Input<FeedDetailsWorkspaceUsersSettings?>? workspaceUsersSettings;

  /// Creates a new [FeedDetails].
  /// [amazonKinesisFirehoseSettings] Settings required by Amazon Kinesis Firehose Feeds(HTTP-Push).
  /// [amazonS3Settings] Amazon S3 settings.
  /// [amazonS3V2Settings] AmazonS3V2Settings is the settings proto for Omniflow S3 feeds.
  /// [amazonSqsSettings] Amazon SQS settings.
  /// [amazonSqsV2Settings] AmazonSQSV2Settings is the settings proto for Omniflow SQS feeds.
  /// [anomaliSettings] Anomali IOC settings.
  /// [assetNamespace] The asset namespace to apply to all logs ingested through this feed.
  /// [awsEc2HostsSettings] AWS EC2 Hosts Settings.
  /// [awsEc2InstancesSettings] AWS EC2 Instances Settings.
  /// [awsEc2VpcsSettings] AWS EC2 Vpcs Settings.
  /// [awsIamSettings] AWSIAMSettings contains details needed for creating an AWS IAM feed.
  /// [azureAdAuditSettings] Azure AD Audit settings.
  /// [azureAdContextSettings] Azure AD Context settings.
  /// [azureAdSettings] Azure AD settings.
  /// [azureBlobStoreSettings] Azure Blob Storage settings.
  /// [azureBlobStoreV2Settings] AzureBlobStoreV2Settings is the settings proto for Azure Blob Storage feeds.
  /// [azureEventHubSettings] Settings required by Azure Event Hub Feeds.
  /// [azureMdmIntuneSettings] Azure MDM Intune settings.
  /// [cloudPassageSettings] CloudPassage settings.
  /// [cortexXdrSettings] PAN Cortex XDR settings.
  /// [crowdstrikeAlertsSettings] CrowdStrike Alerts settings.
  /// [crowdstrikeDetectsSettings] CrowdStrike Detects settings.
  /// [dummyLogTypeSettings] Settings required by Feeds of DummyLogType(used for testing purposes).
  /// [duoAuthSettings] Duo Authentication settings.
  /// [duoUserContextSettings] Duo User Context settings.
  /// [feedSourceType] Source Type of the feed.
  /// [foxItStixSettings] Fox-IT STIX settings.
  /// [gcsSettings] Google Cloud Storage settings.
  /// [gcsV2Settings] GoogleCloudStorageV2Settings is the settings proto for Omniflow Google Cloud
  /// [googleCloudIdentityDeviceUsersSettings] Google Cloud Identity Device Users settings.
  /// [googleCloudIdentityDevicesSettings] Google Cloud Identity Devices settings.
  /// [googleCloudStorageEventDrivenSettings] GoogleCloudStorageEventDrivenSettings is the settings proto for Omniflow
  /// [httpSettings] HTTP settings.
  /// [httpsPushAmazonKinesisFirehoseSettings] Settings required by Amazon Kinesis Firehose Feeds(HTTPS-Push V2).
  /// [httpsPushGoogleCloudPubsubSettings] Settings required by Google Cloud Platform Pub/Sub Feeds(HTTPS-Push V2).
  /// [httpsPushWebhookSettings] Settings required by Webhook Feeds(HTTPS-Push V2).
  /// [impervaWafSettings] Imperva WAF settings.
  /// [labels] The ingestion metadata labels to apply to all logs ingested through this
  /// [logType] LogType.
  /// [mandiantIocSettings] Mandiant IOC settings.
  /// [microsoftGraphAlertSettings] Microsoft Graph Alert settings.
  /// [microsoftSecurityCenterAlertSettings] Microsoft Security Center alert settings.
  /// [mimecastMailSettings] Mimecast Mail settings.
  /// [mimecastMailV2Settings] Mimecast Mail V2 Settings.
  /// [netskopeAlertSettings] Netskope Alert settings.
  /// [netskopeAlertV2Settings] Netskope Alert V2 settings.
  /// [office365Settings] Office 365 settings.
  /// [oktaSettings] Okta settings.
  /// [oktaUserContextSettings] Okta user context settings.
  /// [panIocSettings] PAN IOC settings.
  /// [panPrismaCloudSettings] PAN Prisma Cloud settings.
  /// [proofpointMailSettings] Proofpoint Mail settings.
  /// [proofpointOnDemandSettings] Proofpoint On-demand settings.
  /// [pubsubSettings] Settings required by Google Cloud Pub/Sub Feeds(HTTP-Push).
  /// [qualysScanSettings] Qualys Scan settings.
  /// [qualysVmSettings] Qualys VM settings.
  /// [rapid7InsightSettings] Rapid7 Insight settings.
  /// [recordedFutureIocSettings] Recorded Future IOC settings.
  /// [rhIsacIocSettings] RH-ISAC settings.
  /// [salesforceSettings] Salesforce settings.
  /// [sentineloneAlertSettings] SentinelOne Alert settings.
  /// [serviceNowCmdbSettings] ServiceNow CMDB settings.
  /// [sftpSettings] SFTP settings.
  /// [stsMigrationReadiness] (Output)
  /// [symantecEventExportSettings] Symantec Event Export settings.
  /// [thinkstCanarySettings] Thinkst Canary settings.
  /// [threatConnectIocSettings] ThreatConnect IOC Settings.
  /// [threatConnectIocV3Settings] ThreatConnectIoCV3Settings
  /// [trellixHxAlertsSettings] Settings required by Feeds of TrellixHxAlerts.
  /// [trellixHxBulkAcqsSettings] Settings required by Feeds of TrellixHxBulkAcqs.
  /// [trellixHxHostsSettings] Settings required by Feeds of TrellixHxHosts.
  /// [webhookSettings] Settings required by Webhook Feeds(HTTP-Push).
  /// [workdaySettings] Workday settings.
  /// [workspaceActivitySettings] Workspace Activity settings.
  /// [workspaceAlertsSettings] Workspace Alert settings.
  /// [workspaceChromeOsSettings] Workspace Chrome OS settings.
  /// [workspaceGroupsSettings] Workspace Groups settings.
  /// [workspaceMobileSettings] Workspace Mobile settings.
  /// [workspacePrivilegesSettings] Workspace Privileges settings.
  /// [workspaceUsersSettings] Workspace Users settings.
  const FeedDetails({
    this.amazonKinesisFirehoseSettings,
    this.amazonS3Settings,
    this.amazonS3V2Settings,
    this.amazonSqsSettings,
    this.amazonSqsV2Settings,
    this.anomaliSettings,
    this.assetNamespace,
    this.awsEc2HostsSettings,
    this.awsEc2InstancesSettings,
    this.awsEc2VpcsSettings,
    this.awsIamSettings,
    this.azureAdAuditSettings,
    this.azureAdContextSettings,
    this.azureAdSettings,
    this.azureBlobStoreSettings,
    this.azureBlobStoreV2Settings,
    this.azureEventHubSettings,
    this.azureMdmIntuneSettings,
    this.cloudPassageSettings,
    this.cortexXdrSettings,
    this.crowdstrikeAlertsSettings,
    this.crowdstrikeDetectsSettings,
    this.dummyLogTypeSettings,
    this.duoAuthSettings,
    this.duoUserContextSettings,
    this.feedSourceType,
    this.foxItStixSettings,
    this.gcsSettings,
    this.gcsV2Settings,
    this.googleCloudIdentityDeviceUsersSettings,
    this.googleCloudIdentityDevicesSettings,
    this.googleCloudStorageEventDrivenSettings,
    this.httpSettings,
    this.httpsPushAmazonKinesisFirehoseSettings,
    this.httpsPushGoogleCloudPubsubSettings,
    this.httpsPushWebhookSettings,
    this.impervaWafSettings,
    this.labels,
    required this.logType,
    this.mandiantIocSettings,
    this.microsoftGraphAlertSettings,
    this.microsoftSecurityCenterAlertSettings,
    this.mimecastMailSettings,
    this.mimecastMailV2Settings,
    this.netskopeAlertSettings,
    this.netskopeAlertV2Settings,
    this.office365Settings,
    this.oktaSettings,
    this.oktaUserContextSettings,
    this.panIocSettings,
    this.panPrismaCloudSettings,
    this.proofpointMailSettings,
    this.proofpointOnDemandSettings,
    this.pubsubSettings,
    this.qualysScanSettings,
    this.qualysVmSettings,
    this.rapid7InsightSettings,
    this.recordedFutureIocSettings,
    this.rhIsacIocSettings,
    this.salesforceSettings,
    this.sentineloneAlertSettings,
    this.serviceNowCmdbSettings,
    this.sftpSettings,
    this.stsMigrationReadiness,
    this.symantecEventExportSettings,
    this.thinkstCanarySettings,
    this.threatConnectIocSettings,
    this.threatConnectIocV3Settings,
    this.trellixHxAlertsSettings,
    this.trellixHxBulkAcqsSettings,
    this.trellixHxHostsSettings,
    this.webhookSettings,
    this.workdaySettings,
    this.workspaceActivitySettings,
    this.workspaceAlertsSettings,
    this.workspaceChromeOsSettings,
    this.workspaceGroupsSettings,
    this.workspaceMobileSettings,
    this.workspacePrivilegesSettings,
    this.workspaceUsersSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonKinesisFirehoseSettings': ?amazonKinesisFirehoseSettings,
      'amazonS3Settings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAmazonS3Settings, Map<String, dynamic>>(amazonS3Settings, (value) => value.toMap()),
      'amazonS3V2Settings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAmazonS3V2Settings, Map<String, dynamic>>(amazonS3V2Settings, (value) => value.toMap()),
      'amazonSqsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAmazonSqsSettings, Map<String, dynamic>>(amazonSqsSettings, (value) => value.toMap()),
      'amazonSqsV2Settings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAmazonSqsV2Settings, Map<String, dynamic>>(amazonSqsV2Settings, (value) => value.toMap()),
      'anomaliSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAnomaliSettings, Map<String, dynamic>>(anomaliSettings, (value) => value.toMap()),
      'assetNamespace': ?assetNamespace,
      'awsEc2HostsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAwsEc2HostsSettings, Map<String, dynamic>>(awsEc2HostsSettings, (value) => value.toMap()),
      'awsEc2InstancesSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAwsEc2InstancesSettings, Map<String, dynamic>>(awsEc2InstancesSettings, (value) => value.toMap()),
      'awsEc2VpcsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAwsEc2VpcsSettings, Map<String, dynamic>>(awsEc2VpcsSettings, (value) => value.toMap()),
      'awsIamSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAwsIamSettings, Map<String, dynamic>>(awsIamSettings, (value) => value.toMap()),
      'azureAdAuditSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAzureAdAuditSettings, Map<String, dynamic>>(azureAdAuditSettings, (value) => value.toMap()),
      'azureAdContextSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAzureAdContextSettings, Map<String, dynamic>>(azureAdContextSettings, (value) => value.toMap()),
      'azureAdSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAzureAdSettings, Map<String, dynamic>>(azureAdSettings, (value) => value.toMap()),
      'azureBlobStoreSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAzureBlobStoreSettings, Map<String, dynamic>>(azureBlobStoreSettings, (value) => value.toMap()),
      'azureBlobStoreV2Settings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAzureBlobStoreV2Settings, Map<String, dynamic>>(azureBlobStoreV2Settings, (value) => value.toMap()),
      'azureEventHubSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAzureEventHubSettings, Map<String, dynamic>>(azureEventHubSettings, (value) => value.toMap()),
      'azureMdmIntuneSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAzureMdmIntuneSettings, Map<String, dynamic>>(azureMdmIntuneSettings, (value) => value.toMap()),
      'cloudPassageSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsCloudPassageSettings, Map<String, dynamic>>(cloudPassageSettings, (value) => value.toMap()),
      'cortexXdrSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsCortexXdrSettings, Map<String, dynamic>>(cortexXdrSettings, (value) => value.toMap()),
      'crowdstrikeAlertsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsCrowdstrikeAlertsSettings, Map<String, dynamic>>(crowdstrikeAlertsSettings, (value) => value.toMap()),
      'crowdstrikeDetectsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsCrowdstrikeDetectsSettings, Map<String, dynamic>>(crowdstrikeDetectsSettings, (value) => value.toMap()),
      'dummyLogTypeSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsDummyLogTypeSettings, Map<String, dynamic>>(dummyLogTypeSettings, (value) => value.toMap()),
      'duoAuthSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsDuoAuthSettings, Map<String, dynamic>>(duoAuthSettings, (value) => value.toMap()),
      'duoUserContextSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsDuoUserContextSettings, Map<String, dynamic>>(duoUserContextSettings, (value) => value.toMap()),
      'feedSourceType': ?feedSourceType,
      'foxItStixSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsFoxItStixSettings, Map<String, dynamic>>(foxItStixSettings, (value) => value.toMap()),
      'gcsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsGcsSettings, Map<String, dynamic>>(gcsSettings, (value) => value.toMap()),
      'gcsV2Settings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsGcsV2Settings, Map<String, dynamic>>(gcsV2Settings, (value) => value.toMap()),
      'googleCloudIdentityDeviceUsersSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsGoogleCloudIdentityDeviceUsersSettings, Map<String, dynamic>>(googleCloudIdentityDeviceUsersSettings, (value) => value.toMap()),
      'googleCloudIdentityDevicesSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsGoogleCloudIdentityDevicesSettings, Map<String, dynamic>>(googleCloudIdentityDevicesSettings, (value) => value.toMap()),
      'googleCloudStorageEventDrivenSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsGoogleCloudStorageEventDrivenSettings, Map<String, dynamic>>(googleCloudStorageEventDrivenSettings, (value) => value.toMap()),
      'httpSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsHttpSettings, Map<String, dynamic>>(httpSettings, (value) => value.toMap()),
      'httpsPushAmazonKinesisFirehoseSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsHttpsPushAmazonKinesisFirehoseSettings, Map<String, dynamic>>(httpsPushAmazonKinesisFirehoseSettings, (value) => value.toMap()),
      'httpsPushGoogleCloudPubsubSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsHttpsPushGoogleCloudPubsubSettings, Map<String, dynamic>>(httpsPushGoogleCloudPubsubSettings, (value) => value.toMap()),
      'httpsPushWebhookSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsHttpsPushWebhookSettings, Map<String, dynamic>>(httpsPushWebhookSettings, (value) => value.toMap()),
      'impervaWafSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsImpervaWafSettings, Map<String, dynamic>>(impervaWafSettings, (value) => value.toMap()),
      'labels': ?labels,
      'logType': logType,
      'mandiantIocSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsMandiantIocSettings, Map<String, dynamic>>(mandiantIocSettings, (value) => value.toMap()),
      'microsoftGraphAlertSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsMicrosoftGraphAlertSettings, Map<String, dynamic>>(microsoftGraphAlertSettings, (value) => value.toMap()),
      'microsoftSecurityCenterAlertSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsMicrosoftSecurityCenterAlertSettings, Map<String, dynamic>>(microsoftSecurityCenterAlertSettings, (value) => value.toMap()),
      'mimecastMailSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsMimecastMailSettings, Map<String, dynamic>>(mimecastMailSettings, (value) => value.toMap()),
      'mimecastMailV2Settings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsMimecastMailV2Settings, Map<String, dynamic>>(mimecastMailV2Settings, (value) => value.toMap()),
      'netskopeAlertSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsNetskopeAlertSettings, Map<String, dynamic>>(netskopeAlertSettings, (value) => value.toMap()),
      'netskopeAlertV2Settings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsNetskopeAlertV2Settings, Map<String, dynamic>>(netskopeAlertV2Settings, (value) => value.toMap()),
      'office365Settings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsOffice365Settings, Map<String, dynamic>>(office365Settings, (value) => value.toMap()),
      'oktaSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsOktaSettings, Map<String, dynamic>>(oktaSettings, (value) => value.toMap()),
      'oktaUserContextSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsOktaUserContextSettings, Map<String, dynamic>>(oktaUserContextSettings, (value) => value.toMap()),
      'panIocSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsPanIocSettings, Map<String, dynamic>>(panIocSettings, (value) => value.toMap()),
      'panPrismaCloudSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsPanPrismaCloudSettings, Map<String, dynamic>>(panPrismaCloudSettings, (value) => value.toMap()),
      'proofpointMailSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsProofpointMailSettings, Map<String, dynamic>>(proofpointMailSettings, (value) => value.toMap()),
      'proofpointOnDemandSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsProofpointOnDemandSettings, Map<String, dynamic>>(proofpointOnDemandSettings, (value) => value.toMap()),
      'pubsubSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsPubsubSettings, Map<String, dynamic>>(pubsubSettings, (value) => value.toMap()),
      'qualysScanSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsQualysScanSettings, Map<String, dynamic>>(qualysScanSettings, (value) => value.toMap()),
      'qualysVmSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsQualysVmSettings, Map<String, dynamic>>(qualysVmSettings, (value) => value.toMap()),
      'rapid7InsightSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsRapid7InsightSettings, Map<String, dynamic>>(rapid7InsightSettings, (value) => value.toMap()),
      'recordedFutureIocSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsRecordedFutureIocSettings, Map<String, dynamic>>(recordedFutureIocSettings, (value) => value.toMap()),
      'rhIsacIocSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsRhIsacIocSettings, Map<String, dynamic>>(rhIsacIocSettings, (value) => value.toMap()),
      'salesforceSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSalesforceSettings, Map<String, dynamic>>(salesforceSettings, (value) => value.toMap()),
      'sentineloneAlertSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSentineloneAlertSettings, Map<String, dynamic>>(sentineloneAlertSettings, (value) => value.toMap()),
      'serviceNowCmdbSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsServiceNowCmdbSettings, Map<String, dynamic>>(serviceNowCmdbSettings, (value) => value.toMap()),
      'sftpSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSftpSettings, Map<String, dynamic>>(sftpSettings, (value) => value.toMap()),
      'stsMigrationReadiness': ?stsMigrationReadiness,
      'symantecEventExportSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsSymantecEventExportSettings, Map<String, dynamic>>(symantecEventExportSettings, (value) => value.toMap()),
      'thinkstCanarySettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsThinkstCanarySettings, Map<String, dynamic>>(thinkstCanarySettings, (value) => value.toMap()),
      'threatConnectIocSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsThreatConnectIocSettings, Map<String, dynamic>>(threatConnectIocSettings, (value) => value.toMap()),
      'threatConnectIocV3Settings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsThreatConnectIocV3Settings, Map<String, dynamic>>(threatConnectIocV3Settings, (value) => value.toMap()),
      'trellixHxAlertsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxAlertsSettings, Map<String, dynamic>>(trellixHxAlertsSettings, (value) => value.toMap()),
      'trellixHxBulkAcqsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxBulkAcqsSettings, Map<String, dynamic>>(trellixHxBulkAcqsSettings, (value) => value.toMap()),
      'trellixHxHostsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsTrellixHxHostsSettings, Map<String, dynamic>>(trellixHxHostsSettings, (value) => value.toMap()),
      'webhookSettings': ?webhookSettings,
      'workdaySettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkdaySettings, Map<String, dynamic>>(workdaySettings, (value) => value.toMap()),
      'workspaceActivitySettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceActivitySettings, Map<String, dynamic>>(workspaceActivitySettings, (value) => value.toMap()),
      'workspaceAlertsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceAlertsSettings, Map<String, dynamic>>(workspaceAlertsSettings, (value) => value.toMap()),
      'workspaceChromeOsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceChromeOsSettings, Map<String, dynamic>>(workspaceChromeOsSettings, (value) => value.toMap()),
      'workspaceGroupsSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceGroupsSettings, Map<String, dynamic>>(workspaceGroupsSettings, (value) => value.toMap()),
      'workspaceMobileSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceMobileSettings, Map<String, dynamic>>(workspaceMobileSettings, (value) => value.toMap()),
      'workspacePrivilegesSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspacePrivilegesSettings, Map<String, dynamic>>(workspacePrivilegesSettings, (value) => value.toMap()),
      'workspaceUsersSettings': ?pulumi.Input.mapOptionalInputValue<FeedDetailsWorkspaceUsersSettings, Map<String, dynamic>>(workspaceUsersSettings, (value) => value.toMap()),
    };
  }

  factory FeedDetails.fromMap(Map<String, dynamic> map) {
    return FeedDetails(
      amazonKinesisFirehoseSettings: (() { final guardedValue = map['amazonKinesisFirehoseSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      amazonS3Settings: (() { final guardedValue = map['amazonS3Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAmazonS3Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amazonS3V2Settings: (() { final guardedValue = map['amazonS3V2Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAmazonS3V2Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amazonSqsSettings: (() { final guardedValue = map['amazonSqsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAmazonSqsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      amazonSqsV2Settings: (() { final guardedValue = map['amazonSqsV2Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAmazonSqsV2Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      anomaliSettings: (() { final guardedValue = map['anomaliSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAnomaliSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assetNamespace: (() { final guardedValue = map['assetNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsEc2HostsSettings: (() { final guardedValue = map['awsEc2HostsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAwsEc2HostsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsEc2InstancesSettings: (() { final guardedValue = map['awsEc2InstancesSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAwsEc2InstancesSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsEc2VpcsSettings: (() { final guardedValue = map['awsEc2VpcsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAwsEc2VpcsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsIamSettings: (() { final guardedValue = map['awsIamSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAwsIamSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAdAuditSettings: (() { final guardedValue = map['azureAdAuditSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAzureAdAuditSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAdContextSettings: (() { final guardedValue = map['azureAdContextSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAzureAdContextSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureAdSettings: (() { final guardedValue = map['azureAdSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAzureAdSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureBlobStoreSettings: (() { final guardedValue = map['azureBlobStoreSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAzureBlobStoreSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureBlobStoreV2Settings: (() { final guardedValue = map['azureBlobStoreV2Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAzureBlobStoreV2Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureEventHubSettings: (() { final guardedValue = map['azureEventHubSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAzureEventHubSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureMdmIntuneSettings: (() { final guardedValue = map['azureMdmIntuneSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAzureMdmIntuneSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cloudPassageSettings: (() { final guardedValue = map['cloudPassageSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsCloudPassageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cortexXdrSettings: (() { final guardedValue = map['cortexXdrSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsCortexXdrSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      crowdstrikeAlertsSettings: (() { final guardedValue = map['crowdstrikeAlertsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsCrowdstrikeAlertsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      crowdstrikeDetectsSettings: (() { final guardedValue = map['crowdstrikeDetectsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsCrowdstrikeDetectsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dummyLogTypeSettings: (() { final guardedValue = map['dummyLogTypeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsDummyLogTypeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      duoAuthSettings: (() { final guardedValue = map['duoAuthSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsDuoAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      duoUserContextSettings: (() { final guardedValue = map['duoUserContextSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsDuoUserContextSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      feedSourceType: (() { final guardedValue = map['feedSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      foxItStixSettings: (() { final guardedValue = map['foxItStixSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsFoxItStixSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsSettings: (() { final guardedValue = map['gcsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsGcsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsV2Settings: (() { final guardedValue = map['gcsV2Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsGcsV2Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleCloudIdentityDeviceUsersSettings: (() { final guardedValue = map['googleCloudIdentityDeviceUsersSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsGoogleCloudIdentityDeviceUsersSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleCloudIdentityDevicesSettings: (() { final guardedValue = map['googleCloudIdentityDevicesSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsGoogleCloudIdentityDevicesSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleCloudStorageEventDrivenSettings: (() { final guardedValue = map['googleCloudStorageEventDrivenSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsGoogleCloudStorageEventDrivenSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpSettings: (() { final guardedValue = map['httpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsHttpSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpsPushAmazonKinesisFirehoseSettings: (() { final guardedValue = map['httpsPushAmazonKinesisFirehoseSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsHttpsPushAmazonKinesisFirehoseSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpsPushGoogleCloudPubsubSettings: (() { final guardedValue = map['httpsPushGoogleCloudPubsubSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsHttpsPushGoogleCloudPubsubSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpsPushWebhookSettings: (() { final guardedValue = map['httpsPushWebhookSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsHttpsPushWebhookSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      impervaWafSettings: (() { final guardedValue = map['impervaWafSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsImpervaWafSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      logType: pulumi.Input.fromValue(map['logType'] as String),
      mandiantIocSettings: (() { final guardedValue = map['mandiantIocSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsMandiantIocSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      microsoftGraphAlertSettings: (() { final guardedValue = map['microsoftGraphAlertSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsMicrosoftGraphAlertSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      microsoftSecurityCenterAlertSettings: (() { final guardedValue = map['microsoftSecurityCenterAlertSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsMicrosoftSecurityCenterAlertSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mimecastMailSettings: (() { final guardedValue = map['mimecastMailSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsMimecastMailSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mimecastMailV2Settings: (() { final guardedValue = map['mimecastMailV2Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsMimecastMailV2Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netskopeAlertSettings: (() { final guardedValue = map['netskopeAlertSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsNetskopeAlertSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netskopeAlertV2Settings: (() { final guardedValue = map['netskopeAlertV2Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsNetskopeAlertV2Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      office365Settings: (() { final guardedValue = map['office365Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsOffice365Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oktaSettings: (() { final guardedValue = map['oktaSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsOktaSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oktaUserContextSettings: (() { final guardedValue = map['oktaUserContextSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsOktaUserContextSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      panIocSettings: (() { final guardedValue = map['panIocSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsPanIocSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      panPrismaCloudSettings: (() { final guardedValue = map['panPrismaCloudSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsPanPrismaCloudSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proofpointMailSettings: (() { final guardedValue = map['proofpointMailSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsProofpointMailSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proofpointOnDemandSettings: (() { final guardedValue = map['proofpointOnDemandSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsProofpointOnDemandSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pubsubSettings: (() { final guardedValue = map['pubsubSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsPubsubSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      qualysScanSettings: (() { final guardedValue = map['qualysScanSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsQualysScanSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      qualysVmSettings: (() { final guardedValue = map['qualysVmSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsQualysVmSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rapid7InsightSettings: (() { final guardedValue = map['rapid7InsightSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsRapid7InsightSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recordedFutureIocSettings: (() { final guardedValue = map['recordedFutureIocSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsRecordedFutureIocSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rhIsacIocSettings: (() { final guardedValue = map['rhIsacIocSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsRhIsacIocSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      salesforceSettings: (() { final guardedValue = map['salesforceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSalesforceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sentineloneAlertSettings: (() { final guardedValue = map['sentineloneAlertSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSentineloneAlertSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceNowCmdbSettings: (() { final guardedValue = map['serviceNowCmdbSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsServiceNowCmdbSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sftpSettings: (() { final guardedValue = map['sftpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSftpSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stsMigrationReadiness: (() { final guardedValue = map['stsMigrationReadiness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      symantecEventExportSettings: (() { final guardedValue = map['symantecEventExportSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsSymantecEventExportSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      thinkstCanarySettings: (() { final guardedValue = map['thinkstCanarySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsThinkstCanarySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      threatConnectIocSettings: (() { final guardedValue = map['threatConnectIocSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsThreatConnectIocSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      threatConnectIocV3Settings: (() { final guardedValue = map['threatConnectIocV3Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsThreatConnectIocV3Settings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trellixHxAlertsSettings: (() { final guardedValue = map['trellixHxAlertsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxAlertsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trellixHxBulkAcqsSettings: (() { final guardedValue = map['trellixHxBulkAcqsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxBulkAcqsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trellixHxHostsSettings: (() { final guardedValue = map['trellixHxHostsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsTrellixHxHostsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webhookSettings: (() { final guardedValue = map['webhookSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      workdaySettings: (() { final guardedValue = map['workdaySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkdaySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceActivitySettings: (() { final guardedValue = map['workspaceActivitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceActivitySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceAlertsSettings: (() { final guardedValue = map['workspaceAlertsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceAlertsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceChromeOsSettings: (() { final guardedValue = map['workspaceChromeOsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceChromeOsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceGroupsSettings: (() { final guardedValue = map['workspaceGroupsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceGroupsSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceMobileSettings: (() { final guardedValue = map['workspaceMobileSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceMobileSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspacePrivilegesSettings: (() { final guardedValue = map['workspacePrivilegesSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspacePrivilegesSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaceUsersSettings: (() { final guardedValue = map['workspaceUsersSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsWorkspaceUsersSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

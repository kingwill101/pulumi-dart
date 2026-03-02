// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_hybrid_benefit_properties_response.dart';
import 'database_instance_properties_response.dart';
import 'domain_controller_properties_response.dart';
import 'domain_user_credentials_response.dart';
import 'gmsa_details_response.dart';
import 'log_analytics_configuration_response.dart';
import 'managed_instance_operation_status_response.dart';
import 'management_server_properties_response.dart';

/// The properties of a SCOM instance resource
class MonitoringInstancePropertiesResponse {
  /// The properties to enable Azure Hybrid benefit for various SCOM infrastructure license.
  final pulumi.Input<AzureHybridBenefitPropertiesResponse>? azureHybridBenefit;
  /// The database instance where the SCOM Operational and Warehouse databases will be stored.
  final pulumi.Input<DatabaseInstancePropertiesResponse>? databaseInstance;
  /// Domain controller details
  final pulumi.Input<DomainControllerPropertiesResponse>? domainController;
  /// Domain user which will be used to join VMs to domain and login to VMs.
  final pulumi.Input<DomainUserCredentialsResponse>? domainUserCredentials;
  /// Gmsa Details for load balancer and vmss
  final pulumi.Input<GmsaDetailsResponse>? gmsaDetails;
  /// Details of Log Analytics workspace and data being ingested.
  final pulumi.Input<LogAnalyticsConfigurationResponse> logAnalyticsProperties;
  /// List of management server endpoints
  final pulumi.Input<List<ManagementServerPropertiesResponse>> managementEndpoints;
  /// Gets status of current and latest SCOM managed instance operations.
  final pulumi.Input<List<ManagedInstanceOperationStatusResponse>> operationsStatus;
  /// SCOM product version to be installed on instance
  final pulumi.Input<String> productVersion;
  /// Gets or sets the provisioning state.
  final pulumi.Input<String> provisioningState;
  /// Virtual Network subnet id on which Aquila instance will be provisioned
  final pulumi.Input<String>? vNetSubnetId;

  /// Creates a new [MonitoringInstancePropertiesResponse].
  /// [azureHybridBenefit] The properties to enable Azure Hybrid benefit for various SCOM infrastructure license.
  /// [databaseInstance] The database instance where the SCOM Operational and Warehouse databases will be stored.
  /// [domainController] Domain controller details
  /// [domainUserCredentials] Domain user which will be used to join VMs to domain and login to VMs.
  /// [gmsaDetails] Gmsa Details for load balancer and vmss
  /// [logAnalyticsProperties] Details of Log Analytics workspace and data being ingested.
  /// [managementEndpoints] List of management server endpoints
  /// [operationsStatus] Gets status of current and latest SCOM managed instance operations.
  /// [productVersion] SCOM product version to be installed on instance
  /// [provisioningState] Gets or sets the provisioning state.
  /// [vNetSubnetId] Virtual Network subnet id on which Aquila instance will be provisioned
  MonitoringInstancePropertiesResponse({
    this.azureHybridBenefit,
    this.databaseInstance,
    this.domainController,
    this.domainUserCredentials,
    this.gmsaDetails,
    required this.logAnalyticsProperties,
    required this.managementEndpoints,
    required this.operationsStatus,
    required this.productVersion,
    required this.provisioningState,
    this.vNetSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureHybridBenefit': ?pulumi.Input.mapOptionalInputValue<AzureHybridBenefitPropertiesResponse, Map<String, dynamic>>(azureHybridBenefit, (value) => value.toMap()),
      'databaseInstance': ?pulumi.Input.mapOptionalInputValue<DatabaseInstancePropertiesResponse, Map<String, dynamic>>(databaseInstance, (value) => value.toMap()),
      'domainController': ?pulumi.Input.mapOptionalInputValue<DomainControllerPropertiesResponse, Map<String, dynamic>>(domainController, (value) => value.toMap()),
      'domainUserCredentials': ?pulumi.Input.mapOptionalInputValue<DomainUserCredentialsResponse, Map<String, dynamic>>(domainUserCredentials, (value) => value.toMap()),
      'gmsaDetails': ?pulumi.Input.mapOptionalInputValue<GmsaDetailsResponse, Map<String, dynamic>>(gmsaDetails, (value) => value.toMap()),
      'logAnalyticsProperties': pulumi.Input.mapInputValue<LogAnalyticsConfigurationResponse, Map<String, dynamic>>(logAnalyticsProperties, (value) => value.toMap()),
      'managementEndpoints': pulumi.Input.mapInputValue<List<ManagementServerPropertiesResponse>, List<Map<String, dynamic>>>(managementEndpoints, (value) => pulumi.Input.encodeList<ManagementServerPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operationsStatus': pulumi.Input.mapInputValue<List<ManagedInstanceOperationStatusResponse>, List<Map<String, dynamic>>>(operationsStatus, (value) => pulumi.Input.encodeList<ManagedInstanceOperationStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'productVersion': productVersion,
      'provisioningState': provisioningState,
      'vNetSubnetId': ?vNetSubnetId,
    };
  }

  factory MonitoringInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringInstancePropertiesResponse(
      azureHybridBenefit: map['azureHybridBenefit'] == null ? null : (AzureHybridBenefitPropertiesResponse.fromMap((map['azureHybridBenefit'] as Map).cast<String, dynamic>())).input(),
      databaseInstance: map['databaseInstance'] == null ? null : (DatabaseInstancePropertiesResponse.fromMap((map['databaseInstance'] as Map).cast<String, dynamic>())).input(),
      domainController: map['domainController'] == null ? null : (DomainControllerPropertiesResponse.fromMap((map['domainController'] as Map).cast<String, dynamic>())).input(),
      domainUserCredentials: map['domainUserCredentials'] == null ? null : (DomainUserCredentialsResponse.fromMap((map['domainUserCredentials'] as Map).cast<String, dynamic>())).input(),
      gmsaDetails: map['gmsaDetails'] == null ? null : (GmsaDetailsResponse.fromMap((map['gmsaDetails'] as Map).cast<String, dynamic>())).input(),
      logAnalyticsProperties: (LogAnalyticsConfigurationResponse.fromMap((map['logAnalyticsProperties'] as Map).cast<String, dynamic>())).input(),
      managementEndpoints: (pulumi.Input.decodeList<ManagementServerPropertiesResponse>(map['managementEndpoints'], (value) => ManagementServerPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      operationsStatus: (pulumi.Input.decodeList<ManagedInstanceOperationStatusResponse>(map['operationsStatus'], (value) => ManagedInstanceOperationStatusResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      productVersion: (map['productVersion'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      vNetSubnetId: map['vNetSubnetId'] == null ? null : (map['vNetSubnetId'] as String).input(),
    );
  }
}


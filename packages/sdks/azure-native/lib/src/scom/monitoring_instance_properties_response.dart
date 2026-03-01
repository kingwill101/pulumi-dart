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
  final AzureHybridBenefitPropertiesResponse? azureHybridBenefit;
  /// The database instance where the SCOM Operational and Warehouse databases will be stored.
  final DatabaseInstancePropertiesResponse? databaseInstance;
  /// Domain controller details
  final DomainControllerPropertiesResponse? domainController;
  /// Domain user which will be used to join VMs to domain and login to VMs.
  final DomainUserCredentialsResponse? domainUserCredentials;
  /// Gmsa Details for load balancer and vmss
  final GmsaDetailsResponse? gmsaDetails;
  /// Details of Log Analytics workspace and data being ingested.
  final LogAnalyticsConfigurationResponse logAnalyticsProperties;
  /// List of management server endpoints
  final List<ManagementServerPropertiesResponse> managementEndpoints;
  /// Gets status of current and latest SCOM managed instance operations.
  final List<ManagedInstanceOperationStatusResponse> operationsStatus;
  /// SCOM product version to be installed on instance
  final String productVersion;
  /// Gets or sets the provisioning state.
  final String provisioningState;
  /// Virtual Network subnet id on which Aquila instance will be provisioned
  final String? vNetSubnetId;

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
      'azureHybridBenefit': ?azureHybridBenefit == null ? null : azureHybridBenefit!.toMap(),
      'databaseInstance': ?databaseInstance == null ? null : databaseInstance!.toMap(),
      'domainController': ?domainController == null ? null : domainController!.toMap(),
      'domainUserCredentials': ?domainUserCredentials == null ? null : domainUserCredentials!.toMap(),
      'gmsaDetails': ?gmsaDetails == null ? null : gmsaDetails!.toMap(),
      'logAnalyticsProperties': logAnalyticsProperties.toMap(),
      'managementEndpoints': pulumi.Input.encodeList<ManagementServerPropertiesResponse, Map<String, dynamic>>(managementEndpoints, (value) => value.toMap()),
      'operationsStatus': pulumi.Input.encodeList<ManagedInstanceOperationStatusResponse, Map<String, dynamic>>(operationsStatus, (value) => value.toMap()),
      'productVersion': productVersion,
      'provisioningState': provisioningState,
      'vNetSubnetId': ?vNetSubnetId,
    };
  }

  factory MonitoringInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringInstancePropertiesResponse(
      azureHybridBenefit: map['azureHybridBenefit'] == null ? null : AzureHybridBenefitPropertiesResponse.fromMap((map['azureHybridBenefit'] as Map).cast<String, dynamic>()),
      databaseInstance: map['databaseInstance'] == null ? null : DatabaseInstancePropertiesResponse.fromMap((map['databaseInstance'] as Map).cast<String, dynamic>()),
      domainController: map['domainController'] == null ? null : DomainControllerPropertiesResponse.fromMap((map['domainController'] as Map).cast<String, dynamic>()),
      domainUserCredentials: map['domainUserCredentials'] == null ? null : DomainUserCredentialsResponse.fromMap((map['domainUserCredentials'] as Map).cast<String, dynamic>()),
      gmsaDetails: map['gmsaDetails'] == null ? null : GmsaDetailsResponse.fromMap((map['gmsaDetails'] as Map).cast<String, dynamic>()),
      logAnalyticsProperties: LogAnalyticsConfigurationResponse.fromMap((map['logAnalyticsProperties'] as Map).cast<String, dynamic>()),
      managementEndpoints: pulumi.Input.decodeList<ManagementServerPropertiesResponse>(map['managementEndpoints'], (value) => ManagementServerPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      operationsStatus: pulumi.Input.decodeList<ManagedInstanceOperationStatusResponse>(map['operationsStatus'], (value) => ManagedInstanceOperationStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      productVersion: map['productVersion'] as String,
      provisioningState: map['provisioningState'] as String,
      vNetSubnetId: map['vNetSubnetId'] == null ? null : map['vNetSubnetId'] as String,
    );
  }
}


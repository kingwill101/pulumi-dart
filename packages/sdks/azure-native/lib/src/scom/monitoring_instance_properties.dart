// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_hybrid_benefit_properties.dart';
import 'database_instance_properties.dart';
import 'domain_controller_properties.dart';
import 'domain_user_credentials.dart';
import 'gmsa_details.dart';

/// The properties of a SCOM instance resource
class MonitoringInstanceProperties {
  /// The properties to enable Azure Hybrid benefit for various SCOM infrastructure license.
  final pulumi.Input<AzureHybridBenefitProperties>? azureHybridBenefit;
  /// The database instance where the SCOM Operational and Warehouse databases will be stored.
  final pulumi.Input<DatabaseInstanceProperties>? databaseInstance;
  /// Domain controller details
  final pulumi.Input<DomainControllerProperties>? domainController;
  /// Domain user which will be used to join VMs to domain and login to VMs.
  final pulumi.Input<DomainUserCredentials>? domainUserCredentials;
  /// Gmsa Details for load balancer and vmss
  final pulumi.Input<GmsaDetails>? gmsaDetails;
  /// Virtual Network subnet id on which Aquila instance will be provisioned
  final pulumi.Input<String>? vNetSubnetId;

  /// Creates a new [MonitoringInstanceProperties].
  /// [azureHybridBenefit] The properties to enable Azure Hybrid benefit for various SCOM infrastructure license.
  /// [databaseInstance] The database instance where the SCOM Operational and Warehouse databases will be stored.
  /// [domainController] Domain controller details
  /// [domainUserCredentials] Domain user which will be used to join VMs to domain and login to VMs.
  /// [gmsaDetails] Gmsa Details for load balancer and vmss
  /// [vNetSubnetId] Virtual Network subnet id on which Aquila instance will be provisioned
  MonitoringInstanceProperties({
    this.azureHybridBenefit,
    this.databaseInstance,
    this.domainController,
    this.domainUserCredentials,
    this.gmsaDetails,
    this.vNetSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureHybridBenefit': ?pulumi.Input.mapOptionalInputValue<AzureHybridBenefitProperties, Map<String, dynamic>>(azureHybridBenefit, (value) => value.toMap()),
      'databaseInstance': ?pulumi.Input.mapOptionalInputValue<DatabaseInstanceProperties, Map<String, dynamic>>(databaseInstance, (value) => value.toMap()),
      'domainController': ?pulumi.Input.mapOptionalInputValue<DomainControllerProperties, Map<String, dynamic>>(domainController, (value) => value.toMap()),
      'domainUserCredentials': ?pulumi.Input.mapOptionalInputValue<DomainUserCredentials, Map<String, dynamic>>(domainUserCredentials, (value) => value.toMap()),
      'gmsaDetails': ?pulumi.Input.mapOptionalInputValue<GmsaDetails, Map<String, dynamic>>(gmsaDetails, (value) => value.toMap()),
      'vNetSubnetId': ?vNetSubnetId,
    };
  }

  factory MonitoringInstanceProperties.fromMap(Map<String, dynamic> map) {
    return MonitoringInstanceProperties(
      azureHybridBenefit: (() { final guardedValue = map['azureHybridBenefit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureHybridBenefitProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseInstance: (() { final guardedValue = map['databaseInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseInstanceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainController: (() { final guardedValue = map['domainController']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainControllerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainUserCredentials: (() { final guardedValue = map['domainUserCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainUserCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gmsaDetails: (() { final guardedValue = map['gmsaDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GmsaDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vNetSubnetId: (() { final guardedValue = map['vNetSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


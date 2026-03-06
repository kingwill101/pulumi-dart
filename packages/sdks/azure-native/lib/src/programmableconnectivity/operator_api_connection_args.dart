// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_properties.dart';
import 'saas_properties.dart';

/// {@template pulumi_programmableconnectivity_operator_api_connection_args_doc}
/// The set of arguments for OperatorApiConnection.
/// {@endtemplate}
/// {@macro pulumi_programmableconnectivity_operator_api_connection_args_doc}
class OperatorApiConnectionArgs {
  /// Type of the account the user has with the Operator's Network API infrastructure. AzureManaged | UserManaged.
  final pulumi.Input<String> accountType;
  /// Application ID of the App Developer that is registered with the Operator in a specific country/region.
  final pulumi.Input<String>? appId;
  /// Application secret linked to the 'appId'. This should be stored securely and is not returned back when the resource information is read.
  final pulumi.Input<String>? appSecret;
  /// Details about the Application that would use the Operator's Network APIs.
  final pulumi.Input<ApplicationProperties>? configuredApplication;
  /// Reference to the APC Gateway resource ID.
  final pulumi.Input<String> gatewayId;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Azure Programmable Connectivity (APC) Operator API Connection Name.
  final pulumi.Input<String>? operatorApiConnectionName;
  /// Reference to the Operator API Plan Resource ID.
  final pulumi.Input<String> operatorApiPlanId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Details about the SaaS offer purchased from the marketplace.
  final pulumi.Input<SaasProperties>? saasProperties;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [OperatorApiConnectionArgs].
  /// [accountType] Type of the account the user has with the Operator's Network API infrastructure. AzureManaged | UserManaged.
  /// [appId] Application ID of the App Developer that is registered with the Operator in a specific country/region.
  /// [appSecret] Application secret linked to the 'appId'. This should be stored securely and is not returned back when the resource information is read.
  /// [configuredApplication] Details about the Application that would use the Operator's Network APIs.
  /// [gatewayId] Reference to the APC Gateway resource ID.
  /// [location] The geo-location where the resource lives
  /// [operatorApiConnectionName] Azure Programmable Connectivity (APC) Operator API Connection Name.
  /// [operatorApiPlanId] Reference to the Operator API Plan Resource ID.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [saasProperties] Details about the SaaS offer purchased from the marketplace.
  /// [tags] Resource tags.
  const OperatorApiConnectionArgs({
    required this.accountType,
    this.appId,
    this.appSecret,
    this.configuredApplication,
    required this.gatewayId,
    this.location,
    this.operatorApiConnectionName,
    required this.operatorApiPlanId,
    required this.resourceGroupName,
    this.saasProperties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountType': accountType,
      'appId': ?appId,
      'appSecret': ?appSecret,
      'configuredApplication': ?pulumi.Input.mapOptionalInputValue<ApplicationProperties, Map<String, dynamic>>(configuredApplication, (value) => value.toMap()),
      'gatewayId': gatewayId,
      'location': ?location,
      'operatorApiConnectionName': ?operatorApiConnectionName,
      'operatorApiPlanId': operatorApiPlanId,
      'resourceGroupName': resourceGroupName,
      'saasProperties': ?pulumi.Input.mapOptionalInputValue<SaasProperties, Map<String, dynamic>>(saasProperties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory OperatorApiConnectionArgs.fromMap(Map<String, dynamic> map) {
    return OperatorApiConnectionArgs(
      accountType: pulumi.Input.fromValue(map['accountType'] as String),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appSecret: (() { final guardedValue = map['appSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuredApplication: (() { final guardedValue = map['configuredApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorApiConnectionName: (() { final guardedValue = map['operatorApiConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorApiPlanId: pulumi.Input.fromValue(map['operatorApiPlanId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      saasProperties: (() { final guardedValue = map['saasProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SaasProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


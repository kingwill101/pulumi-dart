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
  OperatorApiConnectionArgs({
    required pulumi.Output<String> accountType,
    pulumi.Output<String>? appId,
    pulumi.Output<String>? appSecret,
    pulumi.Output<ApplicationProperties>? configuredApplication,
    required pulumi.Output<String> gatewayId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? operatorApiConnectionName,
    required pulumi.Output<String> operatorApiPlanId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<SaasProperties>? saasProperties,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountType = pulumi.Input.asInput<String>(accountType),
      appId = pulumi.Input.asOptionalInput<String>(appId),
      appSecret = pulumi.Input.asOptionalInput<String>(appSecret),
      configuredApplication = pulumi.Input.asOptionalInput<ApplicationProperties>(configuredApplication),
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      location = pulumi.Input.asOptionalInput<String>(location),
      operatorApiConnectionName = pulumi.Input.asOptionalInput<String>(operatorApiConnectionName),
      operatorApiPlanId = pulumi.Input.asInput<String>(operatorApiPlanId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      saasProperties = pulumi.Input.asOptionalInput<SaasProperties>(saasProperties),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accountType: pulumi.Output.create<String>(map['accountType'] as String),
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      appSecret: map['appSecret'] == null ? null : pulumi.Output.create<String>(map['appSecret'] as String),
      configuredApplication: map['configuredApplication'] == null ? null : pulumi.Output.create<ApplicationProperties>(ApplicationProperties.fromMap((map['configuredApplication'] as Map).cast<String, dynamic>())),
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      operatorApiConnectionName: map['operatorApiConnectionName'] == null ? null : pulumi.Output.create<String>(map['operatorApiConnectionName'] as String),
      operatorApiPlanId: pulumi.Output.create<String>(map['operatorApiPlanId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      saasProperties: map['saasProperties'] == null ? null : pulumi.Output.create<SaasProperties>(SaasProperties.fromMap((map['saasProperties'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


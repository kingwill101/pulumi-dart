// ignore_for_file: unused_element, unnecessary_cast

import 'alert_rule_properties_response.dart';
import 'error_detail_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAlert.
class GetAlertResult {
  /// Describes the properties of an alert.
  final AlertRulePropertiesResponse? alertRuleProperties;
  /// ID of the alert rule resource created.
  final String alertRuleResourceId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Defines the alert instance errors.
  final ErrorDetailResponse errors;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// Name of provider instances associated with the alert.
  final List<String>? providerNames;
  /// The provider type for alert. For example, the value can be SapHana.
  final String? providerType;
  /// State of provisioning of the alert instance
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Name of the alert template from which it was created.
  final String? templateName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAlertResult].
  /// [alertRuleProperties] Describes the properties of an alert.
  /// [alertRuleResourceId] ID of the alert rule resource created.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [errors] Defines the alert instance errors.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [providerNames] Name of provider instances associated with the alert.
  /// [providerType] The provider type for alert. For example, the value can be SapHana.
  /// [provisioningState] State of provisioning of the alert instance
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [templateName] Name of the alert template from which it was created.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAlertResult({
    this.alertRuleProperties,
    required this.alertRuleResourceId,
    required this.azureApiVersion,
    required this.errors,
    required this.id,
    required this.name,
    this.providerNames,
    this.providerType,
    required this.provisioningState,
    required this.systemData,
    this.templateName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleProperties': ?alertRuleProperties == null ? null : alertRuleProperties!.toMap(),
      'alertRuleResourceId': alertRuleResourceId,
      'azureApiVersion': azureApiVersion,
      'errors': errors.toMap(),
      'id': id,
      'name': name,
      'providerNames': ?providerNames,
      'providerType': ?providerType,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'templateName': ?templateName,
      'type': type,
    };
  }

  factory GetAlertResult.fromMap(Map<String, dynamic> map) {
    return GetAlertResult(
      alertRuleProperties: map['alertRuleProperties'] == null ? null : AlertRulePropertiesResponse.fromMap((map['alertRuleProperties']! as Map).cast<String, dynamic>()),
      alertRuleResourceId: map['alertRuleResourceId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      errors: ErrorDetailResponse.fromMap((map['errors'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      providerNames: map['providerNames'] == null ? null : (map['providerNames']! as List).cast<String>(),
      providerType: map['providerType'] == null ? null : map['providerType']! as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      templateName: map['templateName'] == null ? null : map['templateName']! as String,
      type: map['type'] as String,
    );
  }
}


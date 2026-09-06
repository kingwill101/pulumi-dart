// ignore_for_file: unused_element, unnecessary_cast

import 'alert_rule_properties_response.dart';
import 'error_detail_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAlert.
class GetAlertResult {
  /// Describes the properties of an alert.
  final AlertRulePropertiesResponse? alertRuleProperties;
  /// ID of the alert rule resource created.
  final String? alertRuleResourceId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Defines the alert instance errors.
  final ErrorDetailResponse? errors;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Name of provider instances associated with the alert.
  final List<String>? providerNames;
  /// The provider type for alert. For example, the value can be SapHana.
  final String? providerType;
  /// State of provisioning of the alert instance
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Name of the alert template from which it was created.
  final String? templateName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetAlertResult({
    this.alertRuleProperties,
    this.alertRuleResourceId,
    this.azureApiVersion,
    this.errors,
    this.id,
    this.name,
    this.providerNames,
    this.providerType,
    this.provisioningState,
    this.systemData,
    this.templateName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleProperties': ?alertRuleProperties?.toMap(),
      'alertRuleResourceId': ?alertRuleResourceId,
      'azureApiVersion': ?azureApiVersion,
      'errors': ?errors?.toMap(),
      'id': ?id,
      'name': ?name,
      'providerNames': ?providerNames,
      'providerType': ?providerType,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'templateName': ?templateName,
      'type': ?type,
    };
  }

  factory GetAlertResult.fromMap(Map<String, dynamic> map) {
    return GetAlertResult(
      alertRuleProperties: (() { final guardedValue = map['alertRuleProperties']; if (guardedValue == null) return null; return AlertRulePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      alertRuleResourceId: (() { final guardedValue = map['alertRuleResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerNames: (() { final guardedValue = map['providerNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      providerType: (() { final guardedValue = map['providerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getMicrosoftSecurityIncidentCreationAlertRule.
class GetMicrosoftSecurityIncidentCreationAlertRuleResult {
  /// The Name of the alert rule template used to create this rule.
  final String? alertRuleTemplateName;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The description of the alert rule.
  final String? description;

  /// The display name for alerts created by this alert rule.
  final String displayName;

  /// the alerts' displayNames on which the cases will not be generated
  final List<String>? displayNamesExcludeFilter;

  /// the alerts' displayNames on which the cases will be generated
  final List<String>? displayNamesFilter;

  /// Determines whether this alert rule is enabled or disabled.
  final bool enabled;

  /// Etag of the azure resource
  final String? etag;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The kind of the alert rule
  /// Expected value is 'MicrosoftSecurityIncidentCreation'.
  final String kind;

  /// The last time that this alert has been modified.
  final String lastModifiedUtc;

  /// The name of the resource
  final String name;

  /// The alerts' productName on which the cases will be generated
  final String productFilter;

  /// the alerts' severities on which the cases will be generated
  final List<String>? severitiesFilter;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetMicrosoftSecurityIncidentCreationAlertRuleResult].
  /// [alertRuleTemplateName] The Name of the alert rule template used to create this rule.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of the alert rule.
  /// [displayName] The display name for alerts created by this alert rule.
  /// [displayNamesExcludeFilter] the alerts' displayNames on which the cases will not be generated
  /// [displayNamesFilter] the alerts' displayNames on which the cases will be generated
  /// [enabled] Determines whether this alert rule is enabled or disabled.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the alert rule
  /// [lastModifiedUtc] The last time that this alert has been modified.
  /// [name] The name of the resource
  /// [productFilter] The alerts' productName on which the cases will be generated
  /// [severitiesFilter] the alerts' severities on which the cases will be generated
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetMicrosoftSecurityIncidentCreationAlertRuleResult({
    this.alertRuleTemplateName,
    required this.azureApiVersion,
    this.description,
    required this.displayName,
    this.displayNamesExcludeFilter,
    this.displayNamesFilter,
    required this.enabled,
    this.etag,
    required this.id,
    required this.kind,
    required this.lastModifiedUtc,
    required this.name,
    required this.productFilter,
    this.severitiesFilter,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateName': ?alertRuleTemplateName,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': displayName,
      'displayNamesExcludeFilter': ?displayNamesExcludeFilter,
      'displayNamesFilter': ?displayNamesFilter,
      'enabled': enabled,
      'etag': ?etag,
      'id': id,
      'kind': kind,
      'lastModifiedUtc': lastModifiedUtc,
      'name': name,
      'productFilter': productFilter,
      'severitiesFilter': ?severitiesFilter,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetMicrosoftSecurityIncidentCreationAlertRuleResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetMicrosoftSecurityIncidentCreationAlertRuleResult(
      alertRuleTemplateName: (() {
        final guardedValue = map['alertRuleTemplateName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      displayName: map['displayName'] as String,
      displayNamesExcludeFilter: (() {
        final guardedValue = map['displayNamesExcludeFilter'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      displayNamesFilter: (() {
        final guardedValue = map['displayNamesFilter'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      enabled: map['enabled'] as bool,
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      lastModifiedUtc: map['lastModifiedUtc'] as String,
      name: map['name'] as String,
      productFilter: map['productFilter'] as String,
      severitiesFilter: (() {
        final guardedValue = map['severitiesFilter'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}

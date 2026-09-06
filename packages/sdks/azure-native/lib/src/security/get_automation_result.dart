// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_scope_response.dart';
import 'automation_source_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAutomation.
class GetAutomationResult {
  /// A collection of the actions which are triggered if all the configured rules evaluations, within at least one rule set, are true.
  final List<dynamic>? actions;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The security automation description.
  final String? description;
  /// Entity tag is used for comparing two or more entities from the same requested resource.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Indicates whether the security automation is enabled.
  final bool? isEnabled;
  /// Kind of the resource
  final String? kind;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// A collection of scopes on which the security automations logic is applied. Supported scopes are the subscription itself or a resource group under that subscription. The automation will only apply on defined scopes.
  final List<AutomationScopeResponse>? scopes;
  /// A collection of the source event types which evaluate the security automation set of rules.
  final List<AutomationSourceResponse>? sources;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAutomationResult].
  /// [actions] A collection of the actions which are triggered if all the configured rules evaluations, within at least one rule set, are true.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The security automation description.
  /// [etag] Entity tag is used for comparing two or more entities from the same requested resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isEnabled] Indicates whether the security automation is enabled.
  /// [kind] Kind of the resource
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [scopes] A collection of scopes on which the security automations logic is applied. Supported scopes are the subscription itself or a resource group under that subscription. The automation will only apply on defined scopes.
  /// [sources] A collection of the source event types which evaluate the security automation set of rules.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAutomationResult({
    this.actions,
    this.azureApiVersion,
    this.description,
    this.etag,
    this.id,
    this.isEnabled,
    this.kind,
    this.location,
    this.name,
    this.scopes,
    this.sources,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'isEnabled': ?isEnabled,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'scopes': ?(() { final guardedValue = scopes; if (guardedValue == null) return null; return pulumi.Input.encodeList<AutomationScopeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sources': ?(() { final guardedValue = sources; if (guardedValue == null) return null; return pulumi.Input.encodeList<AutomationSourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetAutomationResult.fromMap(Map<String, dynamic> map) {
    return GetAutomationResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutomationScopeResponse>(guardedValue, (value) => AutomationScopeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AutomationSourceResponse>(guardedValue, (value) => AutomationSourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

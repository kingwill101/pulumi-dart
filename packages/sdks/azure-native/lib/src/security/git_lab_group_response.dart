// ignore_for_file: unused_element, unnecessary_cast

import 'git_lab_group_properties_response.dart';
import 'system_data_response.dart';

/// GitLab Group resource.
class GitLabGroupResponse {
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// GitLab Group properties.
  final GitLabGroupPropertiesResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GitLabGroupResponse].
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [properties] GitLab Group properties.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GitLabGroupResponse({
    required this.id,
    required this.name,
    this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GitLabGroupResponse.fromMap(Map<String, dynamic> map) {
    return GitLabGroupResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      properties: map['properties'] == null ? null : GitLabGroupPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}


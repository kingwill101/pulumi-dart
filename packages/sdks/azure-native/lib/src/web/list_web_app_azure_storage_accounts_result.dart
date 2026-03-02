// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_storage_info_value_response.dart';

/// Result data returned by listWebAppAzureStorageAccounts.
class ListWebAppAzureStorageAccountsResult {
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Azure storage accounts.
  final Map<String, AzureStorageInfoValueResponse> properties;
  /// Resource type.
  final String type;

  /// Creates a new [ListWebAppAzureStorageAccountsResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [properties] Azure storage accounts.
  /// [type] Resource type.
  ListWebAppAzureStorageAccountsResult({
    required this.id,
    this.kind,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'name': name,
      'properties': pulumi.Input.encodeMapValues<AzureStorageInfoValueResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ListWebAppAzureStorageAccountsResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppAzureStorageAccountsResult(
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      name: map['name'] as String,
      properties: pulumi.Input.decodeMapValues<AzureStorageInfoValueResponse>(map['properties'], (value) => AzureStorageInfoValueResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}


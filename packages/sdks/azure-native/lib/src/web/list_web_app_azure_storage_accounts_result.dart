// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_storage_info_value_response.dart';

/// Result data returned by listWebAppAzureStorageAccounts.
class ListWebAppAzureStorageAccountsResult {
  /// Resource Id.
  final String? id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String? name;
  /// Azure storage accounts.
  final Map<String, AzureStorageInfoValueResponse>? properties;
  /// Resource type.
  final String? type;

  /// Creates a new [ListWebAppAzureStorageAccountsResult].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [properties] Azure storage accounts.
  /// [type] Resource type.
  const ListWebAppAzureStorageAccountsResult({
    this.id,
    this.kind,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'properties': ?(() { final guardedValue = properties; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<AzureStorageInfoValueResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory ListWebAppAzureStorageAccountsResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppAzureStorageAccountsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<AzureStorageInfoValueResponse>(guardedValue, (value) => AzureStorageInfoValueResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

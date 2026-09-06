// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_security_group_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getUserRuleCollection.
class GetUserRuleCollectionResult {
  /// Groups for configuration
  final List<NetworkManagerSecurityGroupItemResponse>? appliesToGroups;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A description of the user rule collection.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// The system metadata related to this resource.
  final SystemDataResponse? systemData;
  /// Resource type.
  final String? type;

  /// Creates a new [GetUserRuleCollectionResult].
  /// [appliesToGroups] Groups for configuration
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description of the user rule collection.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the resource.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  const GetUserRuleCollectionResult({
    this.appliesToGroups,
    this.azureApiVersion,
    this.description,
    this.etag,
    this.id,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': ?(() { final guardedValue = appliesToGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkManagerSecurityGroupItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetUserRuleCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetUserRuleCollectionResult(
      appliesToGroups: (() { final guardedValue = map['appliesToGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkManagerSecurityGroupItemResponse>(guardedValue, (value) => NetworkManagerSecurityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

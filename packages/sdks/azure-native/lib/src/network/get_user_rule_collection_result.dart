// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_security_group_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getUserRuleCollection.
class GetUserRuleCollectionResult {
  /// Groups for configuration
  final List<NetworkManagerSecurityGroupItemResponse> appliesToGroups;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description of the user rule collection.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

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
    required this.appliesToGroups,
    required this.azureApiVersion,
    this.description,
    required this.etag,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': pulumi.Input.encodeList<NetworkManagerSecurityGroupItemResponse, Map<String, dynamic>>(appliesToGroups, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': etag,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetUserRuleCollectionResult.fromMap(Map<String, dynamic> map) {
    return GetUserRuleCollectionResult(
      appliesToGroups: pulumi.Input.decodeList<NetworkManagerSecurityGroupItemResponse>(map['appliesToGroups']!, (value) => NetworkManagerSecurityGroupItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_medtech_service_identity.dart';

/// Result data returned by getMedtechService.
class GetMedtechServiceResult {
  /// The Device Mappings of the Med Tech Service.
  final String? deviceMappingJson;
  /// The Consumer Group of the Event Hub of the Healthcare Med Tech Service.
  final String? eventhubConsumerGroupName;
  /// The name of the Event Hub of the Healthcare Med Tech Service.
  final String? eventhubName;
  /// The namespace name of the Event Hub of the Healthcare Med Tech Service.
  final String? eventhubNamespaceName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The `identity` block as defined below.
  final List<GetMedtechServiceIdentity>? identities;
  final String? name;
  final String? workspaceId;

  /// Creates a new [GetMedtechServiceResult].
  /// [deviceMappingJson] The Device Mappings of the Med Tech Service.
  /// [eventhubConsumerGroupName] The Consumer Group of the Event Hub of the Healthcare Med Tech Service.
  /// [eventhubName] The name of the Event Hub of the Healthcare Med Tech Service.
  /// [eventhubNamespaceName] The namespace name of the Event Hub of the Healthcare Med Tech Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] The `identity` block as defined below.
  /// [name] Optional.
  /// [workspaceId] Optional.
  const GetMedtechServiceResult({
    this.deviceMappingJson,
    this.eventhubConsumerGroupName,
    this.eventhubName,
    this.eventhubNamespaceName,
    this.id,
    this.identities,
    this.name,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceMappingJson': ?deviceMappingJson,
      'eventhubConsumerGroupName': ?eventhubConsumerGroupName,
      'eventhubName': ?eventhubName,
      'eventhubNamespaceName': ?eventhubNamespaceName,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMedtechServiceIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetMedtechServiceResult.fromMap(Map<String, dynamic> map) {
    return GetMedtechServiceResult(
      deviceMappingJson: (() { final guardedValue = map['deviceMappingJson']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventhubConsumerGroupName: (() { final guardedValue = map['eventhubConsumerGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventhubName: (() { final guardedValue = map['eventhubName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventhubNamespaceName: (() { final guardedValue = map['eventhubNamespaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMedtechServiceIdentity>(guardedValue, (value) => GetMedtechServiceIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

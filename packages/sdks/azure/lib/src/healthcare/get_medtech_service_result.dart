// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_medtech_service_identity.dart';

/// Result data returned by getMedtechService.
class GetMedtechServiceResult {
  /// The Device Mappings of the Med Tech Service.
  final String deviceMappingJson;

  /// The Consumer Group of the Event Hub of the Healthcare Med Tech Service.
  final String eventhubConsumerGroupName;

  /// The name of the Event Hub of the Healthcare Med Tech Service.
  final String eventhubName;

  /// The namespace name of the Event Hub of the Healthcare Med Tech Service.
  final String eventhubNamespaceName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The `identity` block as defined below.
  final List<GetMedtechServiceIdentity> identities;
  final String name;
  final String workspaceId;

  /// Creates a new [GetMedtechServiceResult].
  /// [deviceMappingJson] The Device Mappings of the Med Tech Service.
  /// [eventhubConsumerGroupName] The Consumer Group of the Event Hub of the Healthcare Med Tech Service.
  /// [eventhubName] The name of the Event Hub of the Healthcare Med Tech Service.
  /// [eventhubNamespaceName] The namespace name of the Event Hub of the Healthcare Med Tech Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] The `identity` block as defined below.
  /// [name] Required.
  /// [workspaceId] Required.
  GetMedtechServiceResult({
    required this.deviceMappingJson,
    required this.eventhubConsumerGroupName,
    required this.eventhubName,
    required this.eventhubNamespaceName,
    required this.id,
    required this.identities,
    required this.name,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceMappingJson': deviceMappingJson,
      'eventhubConsumerGroupName': eventhubConsumerGroupName,
      'eventhubName': eventhubName,
      'eventhubNamespaceName': eventhubNamespaceName,
      'id': id,
      'identities':
          pulumi.Input.encodeList<
            GetMedtechServiceIdentity,
            Map<String, dynamic>
          >(identities, (value) => value.toMap()),
      'name': name,
      'workspaceId': workspaceId,
    };
  }

  factory GetMedtechServiceResult.fromMap(Map<String, dynamic> map) {
    return GetMedtechServiceResult(
      deviceMappingJson: map['deviceMappingJson'] as String,
      eventhubConsumerGroupName: map['eventhubConsumerGroupName'] as String,
      eventhubName: map['eventhubName'] as String,
      eventhubNamespaceName: map['eventhubNamespaceName'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetMedtechServiceIdentity>(
        map['identities']!,
        (value) => GetMedtechServiceIdentity.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      name: map['name'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

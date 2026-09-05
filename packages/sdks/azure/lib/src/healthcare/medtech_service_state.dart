// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'medtech_service_identity.dart';

/// Input properties used for looking up and filtering MedtechService resources.
class MedtechServiceState {
  /// Specifies the Device Mappings of the Med Tech Service.
  final pulumi.Input<String?>? deviceMappingJson;
  /// Specifies the Consumer Group of the Event Hub to connect to.
  final pulumi.Input<String?>? eventhubConsumerGroupName;
  /// Specifies the name of the Event Hub to connect to.
  final pulumi.Input<String?>? eventhubName;
  /// Specifies the namespace name of the Event Hub to connect to.
  final pulumi.Input<String?>? eventhubNamespaceName;
  /// An `identity` block as defined below.
  final pulumi.Input<MedtechServiceIdentity?>? identity;
  /// Specifies the Azure Region where the Healthcare Med Tech Service should be created. Changing this forces a new Healthcare Med Tech Service to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the Healthcare Med Tech Service. Changing this forces a new Healthcare Med Tech Service to be created.
  final pulumi.Input<String?>? name;
  /// A mapping of tags to assign to the Healthcare Med Tech Service.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies the id of the Healthcare Workspace where the Healthcare Med Tech Service should exist. Changing this forces a new Healthcare Med Tech Service to be created.
  final pulumi.Input<String?>? workspaceId;

  /// Creates a new [MedtechServiceState].
  /// [deviceMappingJson] Specifies the Device Mappings of the Med Tech Service.
  /// [eventhubConsumerGroupName] Specifies the Consumer Group of the Event Hub to connect to.
  /// [eventhubName] Specifies the name of the Event Hub to connect to.
  /// [eventhubNamespaceName] Specifies the namespace name of the Event Hub to connect to.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the Azure Region where the Healthcare Med Tech Service should be created. Changing this forces a new Healthcare Med Tech Service to be created.
  /// [name] Specifies the name of the Healthcare Med Tech Service. Changing this forces a new Healthcare Med Tech Service to be created.
  /// [tags] A mapping of tags to assign to the Healthcare Med Tech Service.
  /// [workspaceId] Specifies the id of the Healthcare Workspace where the Healthcare Med Tech Service should exist. Changing this forces a new Healthcare Med Tech Service to be created.
  const MedtechServiceState({
    this.deviceMappingJson,
    this.eventhubConsumerGroupName,
    this.eventhubName,
    this.eventhubNamespaceName,
    this.identity,
    this.location,
    this.name,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceMappingJson': ?deviceMappingJson,
      'eventhubConsumerGroupName': ?eventhubConsumerGroupName,
      'eventhubName': ?eventhubName,
      'eventhubNamespaceName': ?eventhubNamespaceName,
      'identity': ?pulumi.Input.mapOptionalInputValue<MedtechServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory MedtechServiceState.fromMap(Map<String, dynamic> map) {
    return MedtechServiceState(
      deviceMappingJson: (() { final guardedValue = map['deviceMappingJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventhubConsumerGroupName: (() { final guardedValue = map['eventhubConsumerGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventhubName: (() { final guardedValue = map['eventhubName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventhubNamespaceName: (() { final guardedValue = map['eventhubNamespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MedtechServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

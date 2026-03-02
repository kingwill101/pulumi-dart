// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'medtech_service_identity.dart';

/// {@template pulumi_healthcare_medtech_service_medtech_service_args_doc}
/// The set of arguments for MedtechService.
/// {@endtemplate}
/// {@macro pulumi_healthcare_medtech_service_medtech_service_args_doc}
class MedtechServiceArgs {
  /// Specifies the Device Mappings of the Med Tech Service.
  final pulumi.Input<String> deviceMappingJson;
  /// Specifies the Consumer Group of the Event Hub to connect to.
  final pulumi.Input<String> eventhubConsumerGroupName;
  /// Specifies the name of the Event Hub to connect to.
  final pulumi.Input<String> eventhubName;
  /// Specifies the namespace name of the Event Hub to connect to.
  final pulumi.Input<String> eventhubNamespaceName;
  /// An `identity` block as defined below.
  final pulumi.Input<MedtechServiceIdentity>? identity;
  /// Specifies the Azure Region where the Healthcare Med Tech Service should be created. Changing this forces a new Healthcare Med Tech Service to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Healthcare Med Tech Service. Changing this forces a new Healthcare Med Tech Service to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the Healthcare Med Tech Service.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the id of the Healthcare Workspace where the Healthcare Med Tech Service should exist. Changing this forces a new Healthcare Med Tech Service to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [MedtechServiceArgs].
  /// [deviceMappingJson] Specifies the Device Mappings of the Med Tech Service.
  /// [eventhubConsumerGroupName] Specifies the Consumer Group of the Event Hub to connect to.
  /// [eventhubName] Specifies the name of the Event Hub to connect to.
  /// [eventhubNamespaceName] Specifies the namespace name of the Event Hub to connect to.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the Azure Region where the Healthcare Med Tech Service should be created. Changing this forces a new Healthcare Med Tech Service to be created.
  /// [name] Specifies the name of the Healthcare Med Tech Service. Changing this forces a new Healthcare Med Tech Service to be created.
  /// [tags] A mapping of tags to assign to the Healthcare Med Tech Service.
  /// [workspaceId] Specifies the id of the Healthcare Workspace where the Healthcare Med Tech Service should exist. Changing this forces a new Healthcare Med Tech Service to be created.
  MedtechServiceArgs({
    required this.deviceMappingJson,
    required this.eventhubConsumerGroupName,
    required this.eventhubName,
    required this.eventhubNamespaceName,
    this.identity,
    this.location,
    this.name,
    this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceMappingJson': deviceMappingJson,
      'eventhubConsumerGroupName': eventhubConsumerGroupName,
      'eventhubName': eventhubName,
      'eventhubNamespaceName': eventhubNamespaceName,
      'identity': ?pulumi.Input.mapOptionalInputValue<MedtechServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'workspaceId': workspaceId,
    };
  }

  factory MedtechServiceArgs.fromMap(Map<String, dynamic> map) {
    return MedtechServiceArgs(
      deviceMappingJson: (map['deviceMappingJson'] as String).input(),
      eventhubConsumerGroupName: (map['eventhubConsumerGroupName'] as String).input(),
      eventhubName: (map['eventhubName'] as String).input(),
      eventhubNamespaceName: (map['eventhubNamespaceName'] as String).input(),
      identity: map['identity'] == null ? null : (MedtechServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}


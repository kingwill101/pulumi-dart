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
    required pulumi.Output<String> deviceMappingJson,
    required pulumi.Output<String> eventhubConsumerGroupName,
    required pulumi.Output<String> eventhubName,
    required pulumi.Output<String> eventhubNamespaceName,
    pulumi.Output<MedtechServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceId,
  }) :
      deviceMappingJson = pulumi.Input.asInput<String>(deviceMappingJson),
      eventhubConsumerGroupName = pulumi.Input.asInput<String>(eventhubConsumerGroupName),
      eventhubName = pulumi.Input.asInput<String>(eventhubName),
      eventhubNamespaceName = pulumi.Input.asInput<String>(eventhubNamespaceName),
      identity = pulumi.Input.asOptionalInput<MedtechServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

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
      deviceMappingJson: pulumi.Output.create<String>(map['deviceMappingJson'] as String),
      eventhubConsumerGroupName: pulumi.Output.create<String>(map['eventhubConsumerGroupName'] as String),
      eventhubName: pulumi.Output.create<String>(map['eventhubName'] as String),
      eventhubNamespaceName: pulumi.Output.create<String>(map['eventhubNamespaceName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<MedtechServiceIdentity>(MedtechServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}


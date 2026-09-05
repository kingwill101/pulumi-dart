// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_system_topic_identity.dart';

/// Result data returned by getSystemTopic.
class GetSystemTopicResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below, which contains the Managed Service Identity information for this Event Grid System Topic.
  final List<GetSystemTopicIdentity>? identities;
  final String? location;
  final String? metricArmResourceId;
  /// The Metric Resource ID of the Event Grid System Topic.
  final String? metricResourceId;
  final String? name;
  final String? resourceGroupName;
  final String? sourceArmResourceId;
  /// The ID of the Event Grid System Topic ARM Source.
  final String? sourceResourceId;
  /// A mapping of tags which are assigned to the Event Grid System Topic.
  final Map<String, String>? tags;
  /// The Topic Type of the Event Grid System Topic.
  final String? topicType;

  /// Creates a new [GetSystemTopicResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below, which contains the Managed Service Identity information for this Event Grid System Topic.
  /// [location] Optional.
  /// [metricArmResourceId] Optional.
  /// [metricResourceId] The Metric Resource ID of the Event Grid System Topic.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [sourceArmResourceId] Optional.
  /// [sourceResourceId] The ID of the Event Grid System Topic ARM Source.
  /// [tags] A mapping of tags which are assigned to the Event Grid System Topic.
  /// [topicType] The Topic Type of the Event Grid System Topic.
  const GetSystemTopicResult({
    this.id,
    this.identities,
    this.location,
    this.metricArmResourceId,
    this.metricResourceId,
    this.name,
    this.resourceGroupName,
    this.sourceArmResourceId,
    this.sourceResourceId,
    this.tags,
    this.topicType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSystemTopicIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'metricArmResourceId': ?metricArmResourceId,
      'metricResourceId': ?metricResourceId,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sourceArmResourceId': ?sourceArmResourceId,
      'sourceResourceId': ?sourceResourceId,
      'tags': ?tags,
      'topicType': ?topicType,
    };
  }

  factory GetSystemTopicResult.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSystemTopicIdentity>(guardedValue, (value) => GetSystemTopicIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricArmResourceId: (() { final guardedValue = map['metricArmResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricResourceId: (() { final guardedValue = map['metricResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceArmResourceId: (() { final guardedValue = map['sourceArmResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      topicType: (() { final guardedValue = map['topicType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

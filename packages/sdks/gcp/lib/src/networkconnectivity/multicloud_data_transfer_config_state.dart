// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicloud_data_transfer_config_service.dart';

/// Input properties used for looking up and filtering MulticloudDataTransferConfig resources.
class MulticloudDataTransferConfigState {
  /// Time when the MulticloudDataTransferConfig resource was created.
  final pulumi.Input<String>? createTime;
  /// A description of this resource.
  final pulumi.Input<String>? description;
  /// The number of Destination resources in use with the
  /// MulticloudDataTransferConfig resource.
  final pulumi.Input<int>? destinationsActiveCount;
  /// The number of Destination resources configured for the
  /// MulticloudDataTransferConfig resource.
  final pulumi.Input<int>? destinationsCount;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The etag is computed by the server, and might be sent with update and
  /// delete requests so that the client has an up-to-date value before
  /// proceeding.
  final pulumi.Input<String>? etag;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the multicloud data transfer config.
  final pulumi.Input<String>? location;
  /// The name of the MulticloudDataTransferConfig resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Maps services to their current or planned states. Service names are keys,
  /// and the associated values describe the state of the service.
  /// Structure is documented below.
  final pulumi.Input<List<MulticloudDataTransferConfigService>>? services;
  /// The Google-generated unique ID for the MulticloudDataTransferConfig
  /// resource. This value is unique across all MulticloudDataTransferConfig
  /// resources. If a resource is deleted and another with the same name is
  /// created, the new resource is assigned a different and unique ID.
  final pulumi.Input<String>? uid;
  /// Time when the MulticloudDataTransferConfig resource was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MulticloudDataTransferConfigState].
  /// [createTime] Time when the MulticloudDataTransferConfig resource was created.
  /// [description] A description of this resource.
  /// [destinationsActiveCount] The number of Destination resources in use with the
  /// [destinationsCount] The number of Destination resources configured for the
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] The etag is computed by the server, and might be sent with update and
  /// [labels] User-defined labels.
  /// [location] The location of the multicloud data transfer config.
  /// [name] The name of the MulticloudDataTransferConfig resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [services] Maps services to their current or planned states. Service names are keys,
  /// [uid] The Google-generated unique ID for the MulticloudDataTransferConfig
  /// [updateTime] Time when the MulticloudDataTransferConfig resource was updated.
  MulticloudDataTransferConfigState({
    this.createTime,
    this.description,
    this.destinationsActiveCount,
    this.destinationsCount,
    this.effectiveLabels,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.services,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'destinationsActiveCount': ?destinationsActiveCount,
      'destinationsCount': ?destinationsCount,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'services': ?pulumi.Input.mapOptionalInputValue<List<MulticloudDataTransferConfigService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<MulticloudDataTransferConfigService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory MulticloudDataTransferConfigState.fromMap(Map<String, dynamic> map) {
    return MulticloudDataTransferConfigState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationsActiveCount: (() { final guardedValue = map['destinationsActiveCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      destinationsCount: (() { final guardedValue = map['destinationsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MulticloudDataTransferConfigService>(guardedValue, (value) => MulticloudDataTransferConfigService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


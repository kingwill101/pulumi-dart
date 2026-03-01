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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<int>? destinationsActiveCount,
    pulumi.Output<int>? destinationsCount,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<MulticloudDataTransferConfigService>>? services,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationsActiveCount = pulumi.Input.asOptionalInput<int>(destinationsActiveCount),
      destinationsCount = pulumi.Input.asOptionalInput<int>(destinationsCount),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      services = pulumi.Input.asOptionalInput<List<MulticloudDataTransferConfigService>>(services),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationsActiveCount: map['destinationsActiveCount'] == null ? null : pulumi.Output.create<int>(map['destinationsActiveCount'] as int),
      destinationsCount: map['destinationsCount'] == null ? null : pulumi.Output.create<int>(map['destinationsCount'] as int),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      services: map['services'] == null ? null : pulumi.Output.create<List<MulticloudDataTransferConfigService>>(pulumi.Input.decodeList<MulticloudDataTransferConfigService>(map['services'], (value) => MulticloudDataTransferConfigService.fromMap((value as Map).cast<String, dynamic>()))),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicloud_data_transfer_config_service.dart';

/// {@template pulumi_networkconnectivity_multicloud_data_transfer_config_multicloud_data_transfer_config_args_doc}
/// The set of arguments for MulticloudDataTransferConfig.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_multicloud_data_transfer_config_multicloud_data_transfer_config_args_doc}
class MulticloudDataTransferConfigArgs {
  /// A description of this resource.
  final pulumi.Input<String>? description;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the multicloud data transfer config.
  final pulumi.Input<String> location;
  /// The name of the MulticloudDataTransferConfig resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Maps services to their current or planned states. Service names are keys,
  /// and the associated values describe the state of the service.
  /// Structure is documented below.
  final pulumi.Input<List<MulticloudDataTransferConfigService>>? services;

  /// Creates a new [MulticloudDataTransferConfigArgs].
  /// [description] A description of this resource.
  /// [labels] User-defined labels.
  /// [location] The location of the multicloud data transfer config.
  /// [name] The name of the MulticloudDataTransferConfig resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [services] Maps services to their current or planned states. Service names are keys,
  MulticloudDataTransferConfigArgs({
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'services': ?pulumi.Input.mapOptionalInputValue<List<MulticloudDataTransferConfigService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<MulticloudDataTransferConfigService, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MulticloudDataTransferConfigArgs.fromMap(Map<String, dynamic> map) {
    return MulticloudDataTransferConfigArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeList<MulticloudDataTransferConfigService>(map['services'], (value) => MulticloudDataTransferConfigService.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


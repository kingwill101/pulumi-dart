// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicloud_data_transfer_config_service.dart';

/// {@template pulumi_networkconnectivity_multicloud_data_transfer_config_multicloud_data_transfer_config_args_doc}
/// The set of arguments for MulticloudDataTransferConfig.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_multicloud_data_transfer_config_multicloud_data_transfer_config_args_doc}
class MulticloudDataTransferConfigArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A description of this resource.
  final pulumi.Input<String>? description;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of this resource.
  /// [labels] User-defined labels.
  /// [location] The location of the multicloud data transfer config.
  /// [name] The name of the MulticloudDataTransferConfig resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [services] Maps services to their current or planned states. Service names are keys,
  const MulticloudDataTransferConfigArgs({
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MulticloudDataTransferConfigService>(guardedValue, (value) => MulticloudDataTransferConfigService.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

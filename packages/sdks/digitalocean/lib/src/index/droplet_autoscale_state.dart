// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'droplet_autoscale_config.dart';
import 'droplet_autoscale_current_utilization.dart';
import 'droplet_autoscale_droplet_template.dart';

/// Input properties used for looking up and filtering DropletAutoscale resources.
class DropletAutoscaleState {
  /// The configuration parameters for Droplet Autoscale pool, the supported arguments are
  /// documented below.
  final pulumi.Input<DropletAutoscaleConfig>? config;
  /// Created at timestamp for the Droplet Autoscale pool.
  final pulumi.Input<String>? createdAt;
  /// The current average resource utilization of the Droplet Autoscale pool, this attribute further
  /// embeds `memory` and `cpu` attributes to respectively report utilization data.
  final pulumi.Input<List<DropletAutoscaleCurrentUtilization>>? currentUtilizations;
  /// The droplet template parameters for Droplet Autoscale pool, the supported arguments
  /// are documented below.
  final pulumi.Input<DropletAutoscaleDropletTemplate>? dropletTemplate;
  /// The name of the Droplet Autoscale pool.
  final pulumi.Input<String>? name;
  /// Droplet Autoscale pool health status; this reflects if the pool is currently healthy and ready to accept
  /// traffic, or in an error state and needs user intervention.
  final pulumi.Input<String>? status;
  /// Updated at timestamp for the Droplet Autoscale pool.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [DropletAutoscaleState].
  /// [config] The configuration parameters for Droplet Autoscale pool, the supported arguments are
  /// [createdAt] Created at timestamp for the Droplet Autoscale pool.
  /// [currentUtilizations] The current average resource utilization of the Droplet Autoscale pool, this attribute further
  /// [dropletTemplate] The droplet template parameters for Droplet Autoscale pool, the supported arguments
  /// [name] The name of the Droplet Autoscale pool.
  /// [status] Droplet Autoscale pool health status; this reflects if the pool is currently healthy and ready to accept
  /// [updatedAt] Updated at timestamp for the Droplet Autoscale pool.
  DropletAutoscaleState({
    pulumi.Output<DropletAutoscaleConfig>? config,
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<DropletAutoscaleCurrentUtilization>>? currentUtilizations,
    pulumi.Output<DropletAutoscaleDropletTemplate>? dropletTemplate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? status,
    pulumi.Output<String>? updatedAt,
  }) :
      config = pulumi.Input.asOptionalInput<DropletAutoscaleConfig>(config),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      currentUtilizations = pulumi.Input.asOptionalInput<List<DropletAutoscaleCurrentUtilization>>(currentUtilizations),
      dropletTemplate = pulumi.Input.asOptionalInput<DropletAutoscaleDropletTemplate>(dropletTemplate),
      name = pulumi.Input.asOptionalInput<String>(name),
      status = pulumi.Input.asOptionalInput<String>(status),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<DropletAutoscaleConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'currentUtilizations': ?pulumi.Input.mapOptionalInputValue<List<DropletAutoscaleCurrentUtilization>, List<Map<String, dynamic>>>(currentUtilizations, (value) => pulumi.Input.encodeList<DropletAutoscaleCurrentUtilization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dropletTemplate': ?pulumi.Input.mapOptionalInputValue<DropletAutoscaleDropletTemplate, Map<String, dynamic>>(dropletTemplate, (value) => value.toMap()),
      'name': ?name,
      'status': ?status,
      'updatedAt': ?updatedAt,
    };
  }

  factory DropletAutoscaleState.fromMap(Map<String, dynamic> map) {
    return DropletAutoscaleState(
      config: map['config'] == null ? null : pulumi.Output.create<DropletAutoscaleConfig>(DropletAutoscaleConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      currentUtilizations: map['currentUtilizations'] == null ? null : pulumi.Output.create<List<DropletAutoscaleCurrentUtilization>>(pulumi.Input.decodeList<DropletAutoscaleCurrentUtilization>(map['currentUtilizations'], (value) => DropletAutoscaleCurrentUtilization.fromMap((value as Map).cast<String, dynamic>()))),
      dropletTemplate: map['dropletTemplate'] == null ? null : pulumi.Output.create<DropletAutoscaleDropletTemplate>(DropletAutoscaleDropletTemplate.fromMap((map['dropletTemplate'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}


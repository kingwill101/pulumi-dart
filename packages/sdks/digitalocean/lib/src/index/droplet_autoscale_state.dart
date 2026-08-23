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
  const DropletAutoscaleState({
    this.config,
    this.createdAt,
    this.currentUtilizations,
    this.dropletTemplate,
    this.name,
    this.status,
    this.updatedAt,
  });

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
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DropletAutoscaleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentUtilizations: (() { final guardedValue = map['currentUtilizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DropletAutoscaleCurrentUtilization>(guardedValue, (value) => DropletAutoscaleCurrentUtilization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dropletTemplate: (() { final guardedValue = map['dropletTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DropletAutoscaleDropletTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

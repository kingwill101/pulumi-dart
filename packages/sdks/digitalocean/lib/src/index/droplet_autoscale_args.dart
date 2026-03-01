// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'droplet_autoscale_config.dart';
import 'droplet_autoscale_droplet_template.dart';

/// {@template pulumi_index_droplet_autoscale_droplet_autoscale_args_doc}
/// The set of arguments for DropletAutoscale.
/// {@endtemplate}
/// {@macro pulumi_index_droplet_autoscale_droplet_autoscale_args_doc}
class DropletAutoscaleArgs {
  /// The configuration parameters for Droplet Autoscale pool, the supported arguments are
  /// documented below.
  final pulumi.Input<DropletAutoscaleConfig> config;
  /// The droplet template parameters for Droplet Autoscale pool, the supported arguments
  /// are documented below.
  final pulumi.Input<DropletAutoscaleDropletTemplate> dropletTemplate;
  /// The name of the Droplet Autoscale pool.
  final pulumi.Input<String>? name;

  /// Creates a new [DropletAutoscaleArgs].
  /// [config] The configuration parameters for Droplet Autoscale pool, the supported arguments are
  /// [dropletTemplate] The droplet template parameters for Droplet Autoscale pool, the supported arguments
  /// [name] The name of the Droplet Autoscale pool.
  DropletAutoscaleArgs({
    required pulumi.Output<DropletAutoscaleConfig> config,
    required pulumi.Output<DropletAutoscaleDropletTemplate> dropletTemplate,
    pulumi.Output<String>? name,
  }) :
      config = pulumi.Input.asInput<DropletAutoscaleConfig>(config),
      dropletTemplate = pulumi.Input.asInput<DropletAutoscaleDropletTemplate>(dropletTemplate),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<DropletAutoscaleConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'dropletTemplate': pulumi.Input.mapInputValue<DropletAutoscaleDropletTemplate, Map<String, dynamic>>(dropletTemplate, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory DropletAutoscaleArgs.fromMap(Map<String, dynamic> map) {
    return DropletAutoscaleArgs(
      config: pulumi.Output.create<DropletAutoscaleConfig>(DropletAutoscaleConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      dropletTemplate: pulumi.Output.create<DropletAutoscaleDropletTemplate>(DropletAutoscaleDropletTemplate.fromMap((map['dropletTemplate'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


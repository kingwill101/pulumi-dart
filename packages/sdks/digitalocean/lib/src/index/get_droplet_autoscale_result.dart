// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_droplet_autoscale_config.dart';
import 'get_droplet_autoscale_current_utilization.dart';
import 'get_droplet_autoscale_droplet_template.dart';

/// Result data returned by getDropletAutoscale.
class GetDropletAutoscaleResult {
  final List<GetDropletAutoscaleConfig> configs;
  final String createdAt;
  final List<GetDropletAutoscaleCurrentUtilization> currentUtilizations;
  final List<GetDropletAutoscaleDropletTemplate> dropletTemplates;
  final String? id;
  final String? name;
  final String status;
  final String updatedAt;

  /// Creates a new [GetDropletAutoscaleResult].
  /// [configs] Required.
  /// [createdAt] Required.
  /// [currentUtilizations] Required.
  /// [dropletTemplates] Required.
  /// [id] Optional.
  /// [name] Optional.
  /// [status] Required.
  /// [updatedAt] Required.
  GetDropletAutoscaleResult({
    required this.configs,
    required this.createdAt,
    required this.currentUtilizations,
    required this.dropletTemplates,
    this.id,
    this.name,
    required this.status,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': pulumi.Input.encodeList<GetDropletAutoscaleConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'createdAt': createdAt,
      'currentUtilizations': pulumi.Input.encodeList<GetDropletAutoscaleCurrentUtilization, Map<String, dynamic>>(currentUtilizations, (value) => value.toMap()),
      'dropletTemplates': pulumi.Input.encodeList<GetDropletAutoscaleDropletTemplate, Map<String, dynamic>>(dropletTemplates, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'status': status,
      'updatedAt': updatedAt,
    };
  }

  factory GetDropletAutoscaleResult.fromMap(Map<String, dynamic> map) {
    return GetDropletAutoscaleResult(
      configs: pulumi.Input.decodeList<GetDropletAutoscaleConfig>(map['configs'], (value) => GetDropletAutoscaleConfig.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      currentUtilizations: pulumi.Input.decodeList<GetDropletAutoscaleCurrentUtilization>(map['currentUtilizations'], (value) => GetDropletAutoscaleCurrentUtilization.fromMap((value as Map).cast<String, dynamic>())),
      dropletTemplates: pulumi.Input.decodeList<GetDropletAutoscaleDropletTemplate>(map['dropletTemplates'], (value) => GetDropletAutoscaleDropletTemplate.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id']! as String,
      name: map['name'] == null ? null : map['name']! as String,
      status: map['status'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}


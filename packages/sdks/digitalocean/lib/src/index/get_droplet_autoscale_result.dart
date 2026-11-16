// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_droplet_autoscale_config.dart';
import 'get_droplet_autoscale_current_utilization.dart';
import 'get_droplet_autoscale_droplet_template.dart';

/// Result data returned by getDropletAutoscale.
class GetDropletAutoscaleResult {
  final List<GetDropletAutoscaleConfig>? configs;
  final String? createdAt;
  final List<GetDropletAutoscaleCurrentUtilization>? currentUtilizations;
  final List<GetDropletAutoscaleDropletTemplate>? dropletTemplates;
  final String? id;
  final String? name;
  final String? status;
  final String? updatedAt;

  /// Creates a new [GetDropletAutoscaleResult].
  /// [configs] Optional.
  /// [createdAt] Optional.
  /// [currentUtilizations] Optional.
  /// [dropletTemplates] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [status] Optional.
  /// [updatedAt] Optional.
  const GetDropletAutoscaleResult({
    this.configs,
    this.createdAt,
    this.currentUtilizations,
    this.dropletTemplates,
    this.id,
    this.name,
    this.status,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': ?(() { final guardedValue = configs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDropletAutoscaleConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'currentUtilizations': ?(() { final guardedValue = currentUtilizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDropletAutoscaleCurrentUtilization, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dropletTemplates': ?(() { final guardedValue = dropletTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDropletAutoscaleDropletTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'status': ?status,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetDropletAutoscaleResult.fromMap(Map<String, dynamic> map) {
    return GetDropletAutoscaleResult(
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDropletAutoscaleConfig>(guardedValue, (value) => GetDropletAutoscaleConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentUtilizations: (() { final guardedValue = map['currentUtilizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDropletAutoscaleCurrentUtilization>(guardedValue, (value) => GetDropletAutoscaleCurrentUtilization.fromMap((value as Map).cast<String, dynamic>())); })(),
      dropletTemplates: (() { final guardedValue = map['dropletTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDropletAutoscaleDropletTemplate>(guardedValue, (value) => GetDropletAutoscaleDropletTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

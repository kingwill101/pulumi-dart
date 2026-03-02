// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_instance_filter_group_label.dart';

class PatchDeploymentInstanceFilter {
  /// Target all VM instances in the project. If true, no other criteria is permitted.
  final pulumi.Input<bool>? all;
  /// Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances.
  /// Structure is documented below.
  final pulumi.Input<List<PatchDeploymentInstanceFilterGroupLabel>>? groupLabels;
  /// Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group
  /// VMs when targeting configs, for example prefix="prod-".
  final pulumi.Input<List<String>>? instanceNamePrefixes;
  /// Targets any of the VM instances specified. Instances are specified by their URI in the `form zones/{{zone}}/instances/{{instance_name}}`,
  /// `projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}`, or
  /// `https://www.googleapis.com/compute/v1/projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}`
  final pulumi.Input<List<String>>? instances;
  /// Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PatchDeploymentInstanceFilter].
  /// [all] Target all VM instances in the project. If true, no other criteria is permitted.
  /// [groupLabels] Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances.
  /// [instanceNamePrefixes] Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group
  /// [instances] Targets any of the VM instances specified. Instances are specified by their URI in the `form zones/{{zone}}/instances/{{instance_name}}`,
  /// [zones] Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  PatchDeploymentInstanceFilter({
    this.all,
    this.groupLabels,
    this.instanceNamePrefixes,
    this.instances,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'groupLabels': ?pulumi.Input.mapOptionalInputValue<List<PatchDeploymentInstanceFilterGroupLabel>, List<Map<String, dynamic>>>(groupLabels, (value) => pulumi.Input.encodeList<PatchDeploymentInstanceFilterGroupLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceNamePrefixes': ?instanceNamePrefixes,
      'instances': ?instances,
      'zones': ?zones,
    };
  }

  factory PatchDeploymentInstanceFilter.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentInstanceFilter(
      all: map['all'] == null ? null : (map['all'] as bool).input(),
      groupLabels: map['groupLabels'] == null ? null : (pulumi.Input.decodeList<PatchDeploymentInstanceFilterGroupLabel>(map['groupLabels'], (value) => PatchDeploymentInstanceFilterGroupLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceNamePrefixes: map['instanceNamePrefixes'] == null ? null : ((map['instanceNamePrefixes'] as List).cast<String>()).input(),
      instances: map['instances'] == null ? null : ((map['instances'] as List).cast<String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_instance_filter_group_label.dart';

/// A filter to target VM instances for patching. The targeted VMs must meet all criteria specified. So if both labels and zones are specified, the patch job targets only VMs with those labels and in those zones.
class PatchInstanceFilter {
  /// Target all VM instances in the project. If true, no other criteria is permitted.
  final pulumi.Input<bool>? all;
  /// Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances.
  final pulumi.Input<List<PatchInstanceFilterGroupLabel>>? groupLabels;
  /// Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group VMs when targeting configs, for example prefix="prod-".
  final pulumi.Input<List<String>>? instanceNamePrefixes;
  /// Targets any of the VM instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`, `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  final pulumi.Input<List<String>>? instances;
  /// Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PatchInstanceFilter].
  /// [all] Target all VM instances in the project. If true, no other criteria is permitted.
  /// [groupLabels] Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances.
  /// [instanceNamePrefixes] Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group VMs when targeting configs, for example prefix="prod-".
  /// [instances] Targets any of the VM instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`, `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  /// [zones] Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  const PatchInstanceFilter({
    this.all,
    this.groupLabels,
    this.instanceNamePrefixes,
    this.instances,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'groupLabels': ?pulumi.Input.mapOptionalInputValue<List<PatchInstanceFilterGroupLabel>, List<Map<String, dynamic>>>(groupLabels, (value) => pulumi.Input.encodeList<PatchInstanceFilterGroupLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceNamePrefixes': ?instanceNamePrefixes,
      'instances': ?instances,
      'zones': ?zones,
    };
  }

  factory PatchInstanceFilter.fromMap(Map<String, dynamic> map) {
    return PatchInstanceFilter(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupLabels: (() { final guardedValue = map['groupLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PatchInstanceFilterGroupLabel>(guardedValue, (value) => PatchInstanceFilterGroupLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceNamePrefixes: (() { final guardedValue = map['instanceNamePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_instance_filter_group_label_response_osconfig_v1beta.dart';

/// A filter to target VM instances for patching. The targeted VMs must meet all criteria specified. So if both labels and zones are specified, the patch job targets only VMs with those labels and in those zones.
class PatchInstanceFilterResponseOsconfigV1beta {
  /// Target all VM instances in the project. If true, no other criteria is permitted.
  final pulumi.Input<bool> all;
  /// Targets VM instances matching at least one of these label sets. This allows targeting of disparate groups, for example "env=prod or env=staging".
  final pulumi.Input<List<PatchInstanceFilterGroupLabelResponseOsconfigV1beta>> groupLabels;
  /// Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group VMs when targeting configs, for example prefix="prod-".
  final pulumi.Input<List<String>> instanceNamePrefixes;
  /// Targets any of the VM instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`, `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  final pulumi.Input<List<String>> instances;
  /// Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [PatchInstanceFilterResponseOsconfigV1beta].
  /// [all] Target all VM instances in the project. If true, no other criteria is permitted.
  /// [groupLabels] Targets VM instances matching at least one of these label sets. This allows targeting of disparate groups, for example "env=prod or env=staging".
  /// [instanceNamePrefixes] Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group VMs when targeting configs, for example prefix="prod-".
  /// [instances] Targets any of the VM instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`, `projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`, or `https://www.googleapis.com/compute/v1/projects/[PROJECT_ID]/zones/[ZONE]/instances/[INSTANCE_NAME]`
  /// [zones] Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone.
  const PatchInstanceFilterResponseOsconfigV1beta({
    required this.all,
    required this.groupLabels,
    required this.instanceNamePrefixes,
    required this.instances,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': all,
      'groupLabels': pulumi.Input.mapInputValue<List<PatchInstanceFilterGroupLabelResponseOsconfigV1beta>, List<Map<String, dynamic>>>(groupLabels, (value) => pulumi.Input.encodeList<PatchInstanceFilterGroupLabelResponseOsconfigV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceNamePrefixes': instanceNamePrefixes,
      'instances': instances,
      'zones': zones,
    };
  }

  factory PatchInstanceFilterResponseOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return PatchInstanceFilterResponseOsconfigV1beta(
      all: pulumi.Input.fromValue(map['all'] as bool),
      groupLabels: pulumi.Input.fromValue(pulumi.Input.decodeList<PatchInstanceFilterGroupLabelResponseOsconfigV1beta>(map['groupLabels']!, (value) => PatchInstanceFilterGroupLabelResponseOsconfigV1beta.fromMap((value as Map).cast<String, dynamic>()))),
      instanceNamePrefixes: pulumi.Input.fromValue((map['instanceNamePrefixes'] as List).cast<String>()),
      instances: pulumi.Input.fromValue((map['instances'] as List).cast<String>()),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_storage_target_conditions.dart';
import 'prevention_discovery_config_target_cloud_storage_target_filter.dart';
import 'prevention_discovery_config_target_cloud_storage_target_generation_cadence.dart';

class PreventionDiscoveryConfigTargetCloudStorageTarget {
  /// In addition to matching the filter, these conditions must be true before a profile is generated.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDiscoveryConfigTargetCloudStorageTargetConditions
  >?
  conditions;

  /// Disable profiling for buckets that match this filter.
  final pulumi.Input<Map<String, dynamic>>? disabled;

  /// The buckets the generation_cadence applies to. The first target with a matching filter will be the one to apply to a bucket.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudStorageTargetFilter>
  filter;

  /// How often and when to update profiles. New buckets that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadence
  >?
  generationCadence;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTarget].
  /// [conditions] In addition to matching the filter, these conditions must be true before a profile is generated.
  /// [disabled] Disable profiling for buckets that match this filter.
  /// [filter] The buckets the generation_cadence applies to. The first target with a matching filter will be the one to apply to a bucket.
  /// [generationCadence] How often and when to update profiles. New buckets that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  PreventionDiscoveryConfigTargetCloudStorageTarget({
    this.conditions,
    this.disabled,
    required this.filter,
    this.generationCadence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDiscoveryConfigTargetCloudStorageTargetConditions,
            Map<String, dynamic>
          >(conditions, (value) => value.toMap()),
      'disabled': ?disabled,
      'filter':
          pulumi.Input.mapInputValue<
            PreventionDiscoveryConfigTargetCloudStorageTargetFilter,
            Map<String, dynamic>
          >(filter, (value) => value.toMap()),
      'generationCadence':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadence,
            Map<String, dynamic>
          >(generationCadence, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetCloudStorageTarget(
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDiscoveryConfigTargetCloudStorageTargetConditions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      filter: pulumi.Input.fromValue(
        PreventionDiscoveryConfigTargetCloudStorageTargetFilter.fromMap(
          (map['filter']! as Map).cast<String, dynamic>(),
        ),
      ),
      generationCadence: (() {
        final guardedValue = map['generationCadence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDiscoveryConfigTargetCloudStorageTargetGenerationCadence.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

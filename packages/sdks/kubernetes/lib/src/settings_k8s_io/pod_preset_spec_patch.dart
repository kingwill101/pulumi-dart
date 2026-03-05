// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/env_from_source_patch.dart';
import '../core/env_var_patch.dart';
import '../core/volume_mount_patch.dart';
import '../core/volume_patch.dart';
import '../meta/label_selector_patch.dart';

/// PodPresetSpec is a description of a pod preset.
class PodPresetSpecPatch {
  /// Env defines the collection of EnvVar to inject into containers.
  final pulumi.Input<List<EnvVarPatch>>? env;
  /// EnvFrom defines the collection of EnvFromSource to inject into containers.
  final pulumi.Input<List<EnvFromSourcePatch>>? envFrom;
  /// Selector is a label query over a set of resources, in this case pods. Required.
  final pulumi.Input<LabelSelectorPatch>? selector;
  /// VolumeMounts defines the collection of VolumeMount to inject into containers.
  final pulumi.Input<List<VolumeMountPatch>>? volumeMounts;
  /// Volumes defines the collection of Volume to inject into the pod.
  final pulumi.Input<List<VolumePatch>>? volumes;

  /// Creates a new [PodPresetSpecPatch].
  /// [env] Env defines the collection of EnvVar to inject into containers.
  /// [envFrom] EnvFrom defines the collection of EnvFromSource to inject into containers.
  /// [selector] Selector is a label query over a set of resources, in this case pods. Required.
  /// [volumeMounts] VolumeMounts defines the collection of VolumeMount to inject into containers.
  /// [volumes] Volumes defines the collection of Volume to inject into the pod.
  PodPresetSpecPatch({
    this.env,
    this.envFrom,
    this.selector,
    this.volumeMounts,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'env': ?pulumi.Input.mapOptionalInputValue<List<EnvVarPatch>, List<Map<String, dynamic>>>(env, (value) => pulumi.Input.encodeList<EnvVarPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'envFrom': ?pulumi.Input.mapOptionalInputValue<List<EnvFromSourcePatch>, List<Map<String, dynamic>>>(envFrom, (value) => pulumi.Input.encodeList<EnvFromSourcePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selector': ?pulumi.Input.mapOptionalInputValue<LabelSelectorPatch, Map<String, dynamic>>(selector, (value) => value.toMap()),
      'volumeMounts': ?pulumi.Input.mapOptionalInputValue<List<VolumeMountPatch>, List<Map<String, dynamic>>>(volumeMounts, (value) => pulumi.Input.encodeList<VolumeMountPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<VolumePatch>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodPresetSpecPatch.fromMap(Map<String, dynamic> map) {
    return PodPresetSpecPatch(
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvVarPatch>(guardedValue, (value) => EnvVarPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      envFrom: (() { final guardedValue = map['envFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvFromSourcePatch>(guardedValue, (value) => EnvFromSourcePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelectorPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeMounts: (() { final guardedValue = map['volumeMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeMountPatch>(guardedValue, (value) => VolumeMountPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumePatch>(guardedValue, (value) => VolumePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


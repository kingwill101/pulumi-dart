// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../core/env_from_source.dart';
import '../core/env_var.dart';
import '../core/volume.dart';
import '../core/volume_mount.dart';
import '../meta/label_selector.dart';

/// PodPresetSpec is a description of a pod preset.
class PodPresetSpec {
  /// Env defines the collection of EnvVar to inject into containers.
  final pulumi.Input<List<EnvVar>>? env;

  /// EnvFrom defines the collection of EnvFromSource to inject into containers.
  final pulumi.Input<List<EnvFromSource>>? envFrom;

  /// Selector is a label query over a set of resources, in this case pods. Required.
  final pulumi.Input<LabelSelector>? selector;

  /// VolumeMounts defines the collection of VolumeMount to inject into containers.
  final pulumi.Input<List<VolumeMount>>? volumeMounts;

  /// Volumes defines the collection of Volume to inject into the pod.
  final pulumi.Input<List<Volume>>? volumes;

  /// Creates a new [PodPresetSpec].
  /// [env] Env defines the collection of EnvVar to inject into containers.
  /// [envFrom] EnvFrom defines the collection of EnvFromSource to inject into containers.
  /// [selector] Selector is a label query over a set of resources, in this case pods. Required.
  /// [volumeMounts] VolumeMounts defines the collection of VolumeMount to inject into containers.
  /// [volumes] Volumes defines the collection of Volume to inject into the pod.
  PodPresetSpec({
    this.env,
    this.envFrom,
    this.selector,
    this.volumeMounts,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'env':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnvVar>,
            List<Map<String, dynamic>>
          >(
            env,
            (value) => pulumi.Input.encodeList<EnvVar, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'envFrom':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnvFromSource>,
            List<Map<String, dynamic>>
          >(
            envFrom,
            (value) =>
                pulumi.Input.encodeList<EnvFromSource, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'selector':
          ?pulumi.Input.mapOptionalInputValue<
            LabelSelector,
            Map<String, dynamic>
          >(selector, (value) => value.toMap()),
      'volumeMounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<VolumeMount>,
            List<Map<String, dynamic>>
          >(
            volumeMounts,
            (value) =>
                pulumi.Input.encodeList<VolumeMount, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'volumes':
          ?pulumi.Input.mapOptionalInputValue<
            List<Volume>,
            List<Map<String, dynamic>>
          >(
            volumes,
            (value) => pulumi.Input.encodeList<Volume, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory PodPresetSpec.fromMap(Map<String, dynamic> map) {
    return PodPresetSpec(
      env: (() {
        final guardedValue = map['env'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EnvVar>(
            guardedValue,
            (value) => EnvVar.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      envFrom: (() {
        final guardedValue = map['envFrom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EnvFromSource>(
            guardedValue,
            (value) =>
                EnvFromSource.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      selector: (() {
        final guardedValue = map['selector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      volumeMounts: (() {
        final guardedValue = map['volumeMounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VolumeMount>(
            guardedValue,
            (value) =>
                VolumeMount.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      volumes: (() {
        final guardedValue = map['volumes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Volume>(
            guardedValue,
            (value) => Volume.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}

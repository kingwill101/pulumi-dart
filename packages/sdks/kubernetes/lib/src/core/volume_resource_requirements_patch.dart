// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeResourceRequirements describes the storage resource requirements for a volume.
class VolumeResourceRequirementsPatch {
  /// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final pulumi.Input<Map<String, String>>? limits;

  /// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  final pulumi.Input<Map<String, String>>? requests;

  /// Creates a new [VolumeResourceRequirementsPatch].
  /// [limits] Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  /// [requests] Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  VolumeResourceRequirementsPatch({this.limits, this.requests});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'limits': ?limits, 'requests': ?requests};
  }

  factory VolumeResourceRequirementsPatch.fromMap(Map<String, dynamic> map) {
    return VolumeResourceRequirementsPatch(
      limits: (() {
        final guardedValue = map['limits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      requests: (() {
        final guardedValue = map['requests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}

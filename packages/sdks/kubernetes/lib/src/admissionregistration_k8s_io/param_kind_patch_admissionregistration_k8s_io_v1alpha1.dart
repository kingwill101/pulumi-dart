// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ParamKind is a tuple of Group Kind and Version.
class ParamKindPatchAdmissionregistrationK8sIoV1alpha1 {
  /// APIVersion is the API group version the resources belong to. In format of "group/version". Required.
  final pulumi.Input<String>? apiVersion;
  /// Kind is the API kind the resources belong to. Required.
  final pulumi.Input<String>? kind;

  /// Creates a new [ParamKindPatchAdmissionregistrationK8sIoV1alpha1].
  /// [apiVersion] APIVersion is the API group version the resources belong to. In format of "group/version". Required.
  /// [kind] Kind is the API kind the resources belong to. Required.
  const ParamKindPatchAdmissionregistrationK8sIoV1alpha1({
    this.apiVersion,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
    };
  }

  factory ParamKindPatchAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ParamKindPatchAdmissionregistrationK8sIoV1alpha1(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


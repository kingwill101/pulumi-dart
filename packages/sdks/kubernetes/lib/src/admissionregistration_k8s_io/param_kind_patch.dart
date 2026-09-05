// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ParamKind is a tuple of Group Kind and Version.
class ParamKindPatch {
  /// apiVersion is the API group version the resources belong to. In format of "group/version". Required.
  final pulumi.Input<String?>? apiVersion;
  /// kind is the API kind the resources belong to. Required.
  final pulumi.Input<String?>? kind;

  /// Creates a new [ParamKindPatch].
  /// [apiVersion] apiVersion is the API group version the resources belong to. In format of "group/version". Required.
  /// [kind] kind is the API kind the resources belong to. Required.
  const ParamKindPatch({
    this.apiVersion,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
    };
  }

  factory ParamKindPatch.fromMap(Map<String, dynamic> map) {
    return ParamKindPatch(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is not supported or used by Cloud Run.
class OwnerReference {
  /// This is not supported or used by Cloud Run.
  final pulumi.Input<String>? apiVersion;
  /// This is not supported or used by Cloud Run.
  final pulumi.Input<bool>? blockOwnerDeletion;
  /// This is not supported or used by Cloud Run.
  final pulumi.Input<bool>? controller;
  /// This is not supported or used by Cloud Run.
  final pulumi.Input<String>? kind;
  /// This is not supported or used by Cloud Run.
  final pulumi.Input<String>? name;
  /// This is not supported or used by Cloud Run.
  final pulumi.Input<String>? uid;

  /// Creates a new [OwnerReference].
  /// [apiVersion] This is not supported or used by Cloud Run.
  /// [blockOwnerDeletion] This is not supported or used by Cloud Run.
  /// [controller] This is not supported or used by Cloud Run.
  /// [kind] This is not supported or used by Cloud Run.
  /// [name] This is not supported or used by Cloud Run.
  /// [uid] This is not supported or used by Cloud Run.
  OwnerReference({
    this.apiVersion,
    this.blockOwnerDeletion,
    this.controller,
    this.kind,
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'blockOwnerDeletion': ?blockOwnerDeletion,
      'controller': ?controller,
      'kind': ?kind,
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory OwnerReference.fromMap(Map<String, dynamic> map) {
    return OwnerReference(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blockOwnerDeletion: (() { final guardedValue = map['blockOwnerDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      controller: (() { final guardedValue = map['controller']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


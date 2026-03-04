// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is not supported or used by Cloud Run.
class OwnerReferenceResponse {
  /// This is not supported or used by Cloud Run.
  final pulumi.Input<String> apiVersion;

  /// This is not supported or used by Cloud Run.
  final pulumi.Input<bool> blockOwnerDeletion;

  /// This is not supported or used by Cloud Run.
  final pulumi.Input<bool> controller;

  /// This is not supported or used by Cloud Run.
  final pulumi.Input<String> kind;

  /// This is not supported or used by Cloud Run.
  final pulumi.Input<String> name;

  /// This is not supported or used by Cloud Run.
  final pulumi.Input<String> uid;

  /// Creates a new [OwnerReferenceResponse].
  /// [apiVersion] This is not supported or used by Cloud Run.
  /// [blockOwnerDeletion] This is not supported or used by Cloud Run.
  /// [controller] This is not supported or used by Cloud Run.
  /// [kind] This is not supported or used by Cloud Run.
  /// [name] This is not supported or used by Cloud Run.
  /// [uid] This is not supported or used by Cloud Run.
  OwnerReferenceResponse({
    required this.apiVersion,
    required this.blockOwnerDeletion,
    required this.controller,
    required this.kind,
    required this.name,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'blockOwnerDeletion': blockOwnerDeletion,
      'controller': controller,
      'kind': kind,
      'name': name,
      'uid': uid,
    };
  }

  factory OwnerReferenceResponse.fromMap(Map<String, dynamic> map) {
    return OwnerReferenceResponse(
      apiVersion: pulumi.Input.fromValue(map['apiVersion'] as String),
      blockOwnerDeletion: pulumi.Input.fromValue(
        map['blockOwnerDeletion'] as bool,
      ),
      controller: pulumi.Input.fromValue(map['controller'] as bool),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}

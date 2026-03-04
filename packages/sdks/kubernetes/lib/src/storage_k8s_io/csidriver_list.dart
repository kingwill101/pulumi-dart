// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'csidriver.dart';

/// CSIDriverList is a collection of CSIDriver objects.
class CSIDriverList {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// items is the list of CSIDriver
  final pulumi.Input<List<CSIDriver>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;

  /// Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [CSIDriverList].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] items is the list of CSIDriver
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  CSIDriverList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items':
          pulumi
              .Input.mapInputValue<List<CSIDriver>, List<Map<String, dynamic>>>(
            items,
            (value) => pulumi.Input.encodeList<CSIDriver, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'kind': ?kind,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(
            metadata,
            (value) => value.toMap(),
          ),
    };
  }

  factory CSIDriverList.fromMap(Map<String, dynamic> map) {
    return CSIDriverList(
      apiVersion: (() {
        final guardedValue = map['apiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      items: pulumi.Input.fromValue(
        pulumi.Input.decodeList<CSIDriver>(
          map['items']!,
          (value) => CSIDriver.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'device_class.dart';

/// DeviceClassList is a collection of classes.
class DeviceClassList {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Items is the list of resource classes.
  final pulumi.Input<List<DeviceClass>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;

  /// Standard list metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [DeviceClassList].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] Items is the list of resource classes.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard list metadata
  DeviceClassList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items':
          pulumi.Input.mapInputValue<
            List<DeviceClass>,
            List<Map<String, dynamic>>
          >(
            items,
            (value) =>
                pulumi.Input.encodeList<DeviceClass, Map<String, dynamic>>(
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

  factory DeviceClassList.fromMap(Map<String, dynamic> map) {
    return DeviceClassList(
      apiVersion: (() {
        final guardedValue = map['apiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      items: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DeviceClass>(
          map['items']!,
          (value) =>
              DeviceClass.fromMap((value as Map).cast<String, dynamic>()),
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

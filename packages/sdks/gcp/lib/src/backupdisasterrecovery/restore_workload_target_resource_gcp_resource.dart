// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadTargetResourceGcpResource {
  /// Output only. Name of the Google Cloud resource.
  final pulumi.Input<String>? gcpResourcename;

  /// Required. The location for the backup vault.
  final pulumi.Input<String>? location;

  /// Output only. Type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [RestoreWorkloadTargetResourceGcpResource].
  /// [gcpResourcename] Output only. Name of the Google Cloud resource.
  /// [location] Required. The location for the backup vault.
  /// [type] Output only. Type of the resource.
  RestoreWorkloadTargetResourceGcpResource({
    this.gcpResourcename,
    this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpResourcename': ?gcpResourcename,
      'location': ?location,
      'type': ?type,
    };
  }

  factory RestoreWorkloadTargetResourceGcpResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadTargetResourceGcpResource(
      gcpResourcename: (() {
        final guardedValue = map['gcpResourcename'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The blob service properties for Last access time based tracking policy.
class LastAccessTimeTrackingPolicy {
  /// An array of predefined supported blob types. Only blockBlob is the supported value. This field is currently read only
  final pulumi.Input<List<String>>? blobType;

  /// When set to true last access time based tracking is enabled.
  final pulumi.Input<bool> enable;

  /// Name of the policy. The valid value is AccessTimeTracking. This field is currently read only
  final pulumi.Input<String>? name;

  /// The field specifies blob object tracking granularity in days, typically how often the blob object should be tracked.This field is currently read only with value as 1
  final pulumi.Input<int>? trackingGranularityInDays;

  /// Creates a new [LastAccessTimeTrackingPolicy].
  /// [blobType] An array of predefined supported blob types. Only blockBlob is the supported value. This field is currently read only
  /// [enable] When set to true last access time based tracking is enabled.
  /// [name] Name of the policy. The valid value is AccessTimeTracking. This field is currently read only
  /// [trackingGranularityInDays] The field specifies blob object tracking granularity in days, typically how often the blob object should be tracked.This field is currently read only with value as 1
  LastAccessTimeTrackingPolicy({
    this.blobType,
    required this.enable,
    this.name,
    this.trackingGranularityInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobType': ?blobType,
      'enable': enable,
      'name': ?name,
      'trackingGranularityInDays': ?trackingGranularityInDays,
    };
  }

  factory LastAccessTimeTrackingPolicy.fromMap(Map<String, dynamic> map) {
    return LastAccessTimeTrackingPolicy(
      blobType: (() {
        final guardedValue = map['blobType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trackingGranularityInDays: (() {
        final guardedValue = map['trackingGranularityInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}

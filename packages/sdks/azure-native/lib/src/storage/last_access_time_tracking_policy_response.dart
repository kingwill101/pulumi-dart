// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The blob service properties for Last access time based tracking policy.
class LastAccessTimeTrackingPolicyResponse {
  /// An array of predefined supported blob types. Only blockBlob is the supported value. This field is currently read only
  final pulumi.Input<List<String>>? blobType;
  /// When set to true last access time based tracking is enabled.
  final pulumi.Input<bool> enable;
  /// Name of the policy. The valid value is AccessTimeTracking. This field is currently read only
  final pulumi.Input<String>? name;
  /// The field specifies blob object tracking granularity in days, typically how often the blob object should be tracked.This field is currently read only with value as 1
  final pulumi.Input<int>? trackingGranularityInDays;

  /// Creates a new [LastAccessTimeTrackingPolicyResponse].
  /// [blobType] An array of predefined supported blob types. Only blockBlob is the supported value. This field is currently read only
  /// [enable] When set to true last access time based tracking is enabled.
  /// [name] Name of the policy. The valid value is AccessTimeTracking. This field is currently read only
  /// [trackingGranularityInDays] The field specifies blob object tracking granularity in days, typically how often the blob object should be tracked.This field is currently read only with value as 1
  LastAccessTimeTrackingPolicyResponse({
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

  factory LastAccessTimeTrackingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return LastAccessTimeTrackingPolicyResponse(
      blobType: map['blobType'] == null ? null : ((map['blobType'] as List).cast<String>()).input(),
      enable: (map['enable'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      trackingGranularityInDays: map['trackingGranularityInDays'] == null ? null : (map['trackingGranularityInDays'] as int).input(),
    );
  }
}


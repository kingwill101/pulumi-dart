// ignore_for_file: unused_element, unnecessary_cast


/// The blob service properties for Last access time based tracking policy.
class LastAccessTimeTrackingPolicy {
  /// An array of predefined supported blob types. Only blockBlob is the supported value. This field is currently read only
  final List<String>? blobType;
  /// When set to true last access time based tracking is enabled.
  final bool enable;
  /// Name of the policy. The valid value is AccessTimeTracking. This field is currently read only
  final String? name;
  /// The field specifies blob object tracking granularity in days, typically how often the blob object should be tracked.This field is currently read only with value as 1
  final int? trackingGranularityInDays;

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
      blobType: map['blobType'] == null ? null : (map['blobType'] as List).cast<String>(),
      enable: map['enable'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      trackingGranularityInDays: map['trackingGranularityInDays'] == null ? null : map['trackingGranularityInDays'] as int,
    );
  }
}


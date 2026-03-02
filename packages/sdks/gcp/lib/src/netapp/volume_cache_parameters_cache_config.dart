// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeCacheParametersCacheConfig {
  /// Optional. Flag indicating whether a CIFS change notification is enabled for the FlexCache volume.
  final pulumi.Input<bool>? cifsChangeNotifyEnabled;

  /// Creates a new [VolumeCacheParametersCacheConfig].
  /// [cifsChangeNotifyEnabled] Optional. Flag indicating whether a CIFS change notification is enabled for the FlexCache volume.
  VolumeCacheParametersCacheConfig({
    this.cifsChangeNotifyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cifsChangeNotifyEnabled': ?cifsChangeNotifyEnabled,
    };
  }

  factory VolumeCacheParametersCacheConfig.fromMap(Map<String, dynamic> map) {
    return VolumeCacheParametersCacheConfig(
      cifsChangeNotifyEnabled: map['cifsChangeNotifyEnabled'] == null ? null : (map['cifsChangeNotifyEnabled'] as bool).input(),
    );
  }
}


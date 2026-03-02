// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a pre-shared key used to setup MACsec in static connectivity association key (CAK) mode.
class InterconnectMacsecPreSharedKeyComputeV1 {
  /// A name for this pre-shared key. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> name;
  /// A RFC3339 timestamp on or after which the key is valid. startTime can be in the future. If the keychain has a single key, startTime can be omitted. If the keychain has multiple keys, startTime is mandatory for each key. The start times of keys must be in increasing order. The start times of two consecutive keys must be at least 6 hours apart.
  final pulumi.Input<String>? startTime;

  /// Creates a new [InterconnectMacsecPreSharedKeyComputeV1].
  /// [name] A name for this pre-shared key. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [startTime] A RFC3339 timestamp on or after which the key is valid. startTime can be in the future. If the keychain has a single key, startTime can be omitted. If the keychain has multiple keys, startTime is mandatory for each key. The start times of keys must be in increasing order. The start times of two consecutive keys must be at least 6 hours apart.
  InterconnectMacsecPreSharedKeyComputeV1({
    required this.name,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'startTime': ?startTime,
    };
  }

  factory InterconnectMacsecPreSharedKeyComputeV1.fromMap(Map<String, dynamic> map) {
    return InterconnectMacsecPreSharedKeyComputeV1(
      name: (map['name'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}


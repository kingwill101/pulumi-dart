// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterconnectMacsecPreSharedKey {
  /// (Optional, Deprecated)
  /// If set to true, the Interconnect connection is configured with a should-secure
  /// MACsec security policy, that allows the Google router to fallback to cleartext
  /// traffic if the MKA session cannot be established. By default, the Interconnect
  /// connection is configured with a must-secure security policy that drops all traffic
  /// if the MKA session cannot be established with your router.
  ///
  /// &gt; **Warning:** `failOpen` is deprecated and will be removed in a future major release. Use other `failOpen` instead.
  final pulumi.Input<bool>? failOpen;
  /// A name for this pre-shared key. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the first character
  /// must be a lowercase letter, and all following characters must be a dash, lowercase
  /// letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> name;
  /// A RFC3339 timestamp on or after which the key is valid. startTime can be in the
  /// future. If the keychain has a single key, startTime can be omitted. If the keychain
  /// has multiple keys, startTime is mandatory for each key. The start times of keys must
  /// be in increasing order. The start times of two consecutive keys must be at least 6
  /// hours apart.
  final pulumi.Input<String>? startTime;

  /// Creates a new [InterconnectMacsecPreSharedKey].
  /// [failOpen] (Optional, Deprecated)
  /// [name] A name for this pre-shared key. The name must be 1-63 characters long, and
  /// [startTime] A RFC3339 timestamp on or after which the key is valid. startTime can be in the
  const InterconnectMacsecPreSharedKey({
    this.failOpen,
    required this.name,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failOpen': ?failOpen,
      'name': name,
      'startTime': ?startTime,
    };
  }

  factory InterconnectMacsecPreSharedKey.fromMap(Map<String, dynamic> map) {
    return InterconnectMacsecPreSharedKey(
      failOpen: (() { final guardedValue = map['failOpen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork {
  /// The time when this access control entry expires in RFC 3339 format.
  final pulumi.Input<String>? expireTime;
  /// A label to identify this entry.
  final pulumi.Input<String>? label;
  /// Input only. The time-to-leave of this access control entry.
  final pulumi.Input<String>? ttl;
  /// The allowlisted value for the access control list.
  final pulumi.Input<String> value;

  /// Creates a new [ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork].
  /// [expireTime] The time when this access control entry expires in RFC 3339 format.
  /// [label] A label to identify this entry.
  /// [ttl] Input only. The time-to-leave of this access control entry.
  /// [value] The allowlisted value for the access control list.
  ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork({
    this.expireTime,
    this.label,
    this.ttl,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireTime': ?expireTime,
      'label': ?label,
      'ttl': ?ttl,
      'value': value,
    };
  }

  factory ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileCloudsqlSettingsIpConfigAuthorizedNetwork(
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}


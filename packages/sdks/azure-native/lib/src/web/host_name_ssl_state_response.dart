// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSL-enabled hostname.
class HostNameSslStateResponse {
  /// Indicates whether the hostname is a standard or repository hostname.
  final pulumi.Input<String>? hostType;
  /// Hostname.
  final pulumi.Input<String>? name;
  /// SSL type.
  final pulumi.Input<String>? sslState;
  /// SSL certificate thumbprint.
  final pulumi.Input<String>? thumbprint;
  /// Set to <code>true</code> to update existing hostname.
  final pulumi.Input<bool>? toUpdate;
  /// Virtual IP address assigned to the hostname if IP based SSL is enabled.
  final pulumi.Input<String>? virtualIP;

  /// Creates a new [HostNameSslStateResponse].
  /// [hostType] Indicates whether the hostname is a standard or repository hostname.
  /// [name] Hostname.
  /// [sslState] SSL type.
  /// [thumbprint] SSL certificate thumbprint.
  /// [toUpdate] Set to <code>true</code> to update existing hostname.
  /// [virtualIP] Virtual IP address assigned to the hostname if IP based SSL is enabled.
  HostNameSslStateResponse({
    this.hostType,
    this.name,
    this.sslState,
    this.thumbprint,
    this.toUpdate,
    this.virtualIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostType': ?hostType,
      'name': ?name,
      'sslState': ?sslState,
      'thumbprint': ?thumbprint,
      'toUpdate': ?toUpdate,
      'virtualIP': ?virtualIP,
    };
  }

  factory HostNameSslStateResponse.fromMap(Map<String, dynamic> map) {
    return HostNameSslStateResponse(
      hostType: map['hostType'] == null ? null : (map['hostType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sslState: map['sslState'] == null ? null : (map['sslState'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
      toUpdate: map['toUpdate'] == null ? null : (map['toUpdate'] as bool).input(),
      virtualIP: map['virtualIP'] == null ? null : (map['virtualIP'] as String).input(),
    );
  }
}


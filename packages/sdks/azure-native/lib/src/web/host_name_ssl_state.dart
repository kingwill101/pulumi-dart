// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_type.dart';
import 'ssl_state.dart';

/// SSL-enabled hostname.
class HostNameSslState {
  /// Indicates whether the hostname is a standard or repository hostname.
  final pulumi.Input<HostType>? hostType;
  /// Hostname.
  final pulumi.Input<String>? name;
  /// SSL type.
  final pulumi.Input<SslState>? sslState;
  /// SSL certificate thumbprint.
  final pulumi.Input<String>? thumbprint;
  /// Set to <code>true</code> to update existing hostname.
  final pulumi.Input<bool>? toUpdate;
  /// Virtual IP address assigned to the hostname if IP based SSL is enabled.
  final pulumi.Input<String>? virtualIP;

  /// Creates a new [HostNameSslState].
  /// [hostType] Indicates whether the hostname is a standard or repository hostname.
  /// [name] Hostname.
  /// [sslState] SSL type.
  /// [thumbprint] SSL certificate thumbprint.
  /// [toUpdate] Set to <code>true</code> to update existing hostname.
  /// [virtualIP] Virtual IP address assigned to the hostname if IP based SSL is enabled.
  HostNameSslState({
    this.hostType,
    this.name,
    this.sslState,
    this.thumbprint,
    this.toUpdate,
    this.virtualIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostType': ?pulumi.Input.mapOptionalInputValue<HostType, String>(hostType, (value) => value.value),
      'name': ?name,
      'sslState': ?pulumi.Input.mapOptionalInputValue<SslState, String>(sslState, (value) => value.value),
      'thumbprint': ?thumbprint,
      'toUpdate': ?toUpdate,
      'virtualIP': ?virtualIP,
    };
  }

  factory HostNameSslState.fromMap(Map<String, dynamic> map) {
    return HostNameSslState(
      hostType: map['hostType'] == null ? null : (HostType.fromValue(map['hostType'] as String)).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sslState: map['sslState'] == null ? null : (SslState.fromValue(map['sslState'] as String)).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
      toUpdate: map['toUpdate'] == null ? null : (map['toUpdate'] as bool).input(),
      virtualIP: map['virtualIP'] == null ? null : (map['virtualIP'] as String).input(),
    );
  }
}


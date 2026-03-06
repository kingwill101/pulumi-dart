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
  /// Set to &lt;code&gt;true&lt;/code&gt; to update existing hostname.
  final pulumi.Input<bool>? toUpdate;
  /// Virtual IP address assigned to the hostname if IP based SSL is enabled.
  final pulumi.Input<String>? virtualIP;

  /// Creates a new [HostNameSslState].
  /// [hostType] Indicates whether the hostname is a standard or repository hostname.
  /// [name] Hostname.
  /// [sslState] SSL type.
  /// [thumbprint] SSL certificate thumbprint.
  /// [toUpdate] Set to &lt;code&gt;true&lt;/code&gt; to update existing hostname.
  /// [virtualIP] Virtual IP address assigned to the hostname if IP based SSL is enabled.
  const HostNameSslState({
    this.hostType,
    this.name,
    this.sslState,
    this.thumbprint,
    this.toUpdate,
    this.virtualIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostType': ?pulumi.Input.mapOptionalInputValue<HostType, String>(hostType, (value) => value.wireValue),
      'name': ?name,
      'sslState': ?pulumi.Input.mapOptionalInputValue<SslState, String>(sslState, (value) => value.wireValue),
      'thumbprint': ?thumbprint,
      'toUpdate': ?toUpdate,
      'virtualIP': ?virtualIP,
    };
  }

  factory HostNameSslState.fromMap(Map<String, dynamic> map) {
    return HostNameSslState(
      hostType: (() { final guardedValue = map['hostType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostType.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslState: (() { final guardedValue = map['sslState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslState.fromValue(guardedValue as String)); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toUpdate: (() { final guardedValue = map['toUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualIP: (() { final guardedValue = map['virtualIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


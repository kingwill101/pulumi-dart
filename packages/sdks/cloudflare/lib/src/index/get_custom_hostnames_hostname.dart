// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomHostnamesHostname {
  /// Filters hostnames by a substring match on the hostname value. This parameter cannot be used with the 'id', 'hostname', 'hostname.exact', or 'hostname.startsWith' parameters.
  final pulumi.Input<String?>? contain;
  /// Fully qualified domain name to match against. This parameter cannot be used with the 'id', 'hostname', 'hostname.contain', or 'hostname.startsWith' parameters.
  final pulumi.Input<String?>? exact;
  /// Filters hostnames by a prefix match on the hostname value. This parameter cannot be used with the 'id', 'hostname', 'hostname.exact', or 'hostname.contain' parameters.
  final pulumi.Input<String?>? startsWith;

  /// Creates a new [GetCustomHostnamesHostname].
  /// [contain] Filters hostnames by a substring match on the hostname value. This parameter cannot be used with the 'id', 'hostname', 'hostname.exact', or 'hostname.startsWith' parameters.
  /// [exact] Fully qualified domain name to match against. This parameter cannot be used with the 'id', 'hostname', 'hostname.contain', or 'hostname.startsWith' parameters.
  /// [startsWith] Filters hostnames by a prefix match on the hostname value. This parameter cannot be used with the 'id', 'hostname', 'hostname.exact', or 'hostname.contain' parameters.
  const GetCustomHostnamesHostname({
    this.contain,
    this.exact,
    this.startsWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contain': ?contain,
      'exact': ?exact,
      'startsWith': ?startsWith,
    };
  }

  factory GetCustomHostnamesHostname.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnamesHostname(
      contain: (() { final guardedValue = map['contain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startsWith: (() { final guardedValue = map['startsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

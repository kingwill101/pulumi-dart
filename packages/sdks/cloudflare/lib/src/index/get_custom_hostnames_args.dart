// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_hostnames_hostname.dart';

/// {@template pulumi_index_get_custom_hostnames_get_custom_hostnames_args_doc}
/// Arguments for getCustomHostnames.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_hostnames_get_custom_hostnames_args_doc}
class GetCustomHostnamesArgs {
  /// Filter by the certificate authority that issued the SSL certificate.
  /// Available values: "google", "lets*encrypt", "ssl*com".
  final pulumi.Input<String?>? certificateAuthority;
  /// Filter by custom origin server name.
  final pulumi.Input<String?>? customOriginServer;
  /// Direction to order hostnames.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  final pulumi.Input<GetCustomHostnamesHostname?>? hostname;
  /// Filter by the hostname's activation status.
  /// Available values: "active", "pending", "active*redeploying", "moved", "pending*deletion", "deleted", "pending*blocked", "pending*migration", "pending*provisioned", "test*pending", "test*active", "test*active*apex", "test*blocked", "testFailed", "provisioned", "blocked".
  final pulumi.Input<String?>? hostnameStatus;
  /// Hostname ID to match against. This ID was generated and returned during the initial customHostname creation. This parameter cannot be used with the 'hostname', 'hostname.exact', 'hostname.contain', or 'hostname.startsWith' parameters.
  final pulumi.Input<String?>? id;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Field to order hostnames by.
  /// Available values: "ssl", "sslStatus".
  final pulumi.Input<String?>? order;
  /// Whether to filter hostnames based on if they have SSL enabled.
  /// Available values: 0, 1.
  final pulumi.Input<int?>? ssl;
  /// Filter by SSL certificate status.
  /// Available values: "initializing", "pending*validation", "deleted", "pending*issuance", "pending*deployment", "pending*deletion", "pending*expiration", "expired", "active", "initializing*timed*out", "validation*timed*out", "issuance*timed*out", "deployment*timed*out", "deletion*timed*out", "pending*cleanup", "staging*deployment", "staging*active", "deactivating", "inactive", "backup*issued", "holding*deployment".
  final pulumi.Input<String?>? sslStatus;
  /// Filter by whether the custom hostname is a wildcard hostname.
  final pulumi.Input<bool?>? wildcard;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomHostnamesArgs].
  /// [certificateAuthority] Filter by the certificate authority that issued the SSL certificate.
  /// [customOriginServer] Filter by custom origin server name.
  /// [direction] Direction to order hostnames.
  /// [hostname] Optional.
  /// [hostnameStatus] Filter by the hostname's activation status.
  /// [id] Hostname ID to match against. This ID was generated and returned during the initial customHostname creation. This parameter cannot be used with the 'hostname', 'hostname.exact', 'hostname.contain', or 'hostname.startsWith' parameters.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order hostnames by.
  /// [ssl] Whether to filter hostnames based on if they have SSL enabled.
  /// [sslStatus] Filter by SSL certificate status.
  /// [wildcard] Filter by whether the custom hostname is a wildcard hostname.
  /// [zoneId] Identifier.
  const GetCustomHostnamesArgs({
    this.certificateAuthority,
    this.customOriginServer,
    this.direction,
    this.hostname,
    this.hostnameStatus,
    this.id,
    this.maxItems,
    this.order,
    this.ssl,
    this.sslStatus,
    this.wildcard,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?certificateAuthority,
      'customOriginServer': ?customOriginServer,
      'direction': ?direction,
      'hostname': ?pulumi.Input.mapOptionalInputValue<GetCustomHostnamesHostname, Map<String, dynamic>>(hostname, (value) => value.toMap()),
      'hostnameStatus': ?hostnameStatus,
      'id': ?id,
      'maxItems': ?maxItems,
      'order': ?order,
      'ssl': ?ssl,
      'sslStatus': ?sslStatus,
      'wildcard': ?wildcard,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomHostnamesArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnamesArgs(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customOriginServer: (() { final guardedValue = map['customOriginServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetCustomHostnamesHostname.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostnameStatus: (() { final guardedValue = map['hostnameStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sslStatus: (() { final guardedValue = map['sslStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wildcard: (() { final guardedValue = map['wildcard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

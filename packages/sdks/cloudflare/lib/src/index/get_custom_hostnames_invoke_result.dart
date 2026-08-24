// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_hostnames_hostname.dart';
import 'get_custom_hostnames_result.dart';

/// Result data returned by getCustomHostnames.
class GetCustomHostnamesInvokeResult {
  /// Filter by the certificate authority that issued the SSL certificate.
  /// Available values: "google", "lets*encrypt", "ssl*com".
  final String? certificateAuthority;
  /// Filter by custom origin server name.
  final String? customOriginServer;
  /// Direction to order hostnames.
  /// Available values: "asc", "desc".
  final String? direction;
  final GetCustomHostnamesHostname? hostname;
  /// Filter by the hostname's activation status.
  /// Available values: "active", "pending", "active*redeploying", "moved", "pending*deletion", "deleted", "pending*blocked", "pending*migration", "pending*provisioned", "test*pending", "test*active", "test*active*apex", "test*blocked", "testFailed", "provisioned", "blocked".
  final String? hostnameStatus;
  /// Hostname ID to match against. This ID was generated and returned during the initial customHostname creation. This parameter cannot be used with the 'hostname', 'hostname.exact', 'hostname.contain', or 'hostname.startsWith' parameters.
  final String? id;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Field to order hostnames by.
  /// Available values: "ssl", "sslStatus".
  final String? order;
  /// The items returned by the data source
  final List<GetCustomHostnamesResult>? results;
  /// Whether to filter hostnames based on if they have SSL enabled.
  /// Available values: 0, 1.
  final int? ssl;
  /// Filter by SSL certificate status.
  /// Available values: "initializing", "pending*validation", "deleted", "pending*issuance", "pending*deployment", "pending*deletion", "pending*expiration", "expired", "active", "initializing*timed*out", "validation*timed*out", "issuance*timed*out", "deployment*timed*out", "deletion*timed*out", "pending*cleanup", "staging*deployment", "staging*active", "deactivating", "inactive", "backup*issued", "holding*deployment".
  final String? sslStatus;
  /// Filter by whether the custom hostname is a wildcard hostname.
  final bool? wildcard;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCustomHostnamesInvokeResult].
  /// [certificateAuthority] Filter by the certificate authority that issued the SSL certificate.
  /// [customOriginServer] Filter by custom origin server name.
  /// [direction] Direction to order hostnames.
  /// [hostname] Optional.
  /// [hostnameStatus] Filter by the hostname's activation status.
  /// [id] Hostname ID to match against. This ID was generated and returned during the initial customHostname creation. This parameter cannot be used with the 'hostname', 'hostname.exact', 'hostname.contain', or 'hostname.startsWith' parameters.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order hostnames by.
  /// [results] The items returned by the data source
  /// [ssl] Whether to filter hostnames based on if they have SSL enabled.
  /// [sslStatus] Filter by SSL certificate status.
  /// [wildcard] Filter by whether the custom hostname is a wildcard hostname.
  /// [zoneId] Identifier.
  const GetCustomHostnamesInvokeResult({
    this.certificateAuthority,
    this.customOriginServer,
    this.direction,
    this.hostname,
    this.hostnameStatus,
    this.id,
    this.maxItems,
    this.order,
    this.results,
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
      'hostname': ?hostname?.toMap(),
      'hostnameStatus': ?hostnameStatus,
      'id': ?id,
      'maxItems': ?maxItems,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomHostnamesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ssl': ?ssl,
      'sslStatus': ?sslStatus,
      'wildcard': ?wildcard,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomHostnamesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnamesInvokeResult(
      certificateAuthority: (() { final guardedValue = map['certificateAuthority']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customOriginServer: (() { final guardedValue = map['customOriginServer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return GetCustomHostnamesHostname.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hostnameStatus: (() { final guardedValue = map['hostnameStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomHostnamesResult>(guardedValue, (value) => GetCustomHostnamesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      sslStatus: (() { final guardedValue = map['sslStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      wildcard: (() { final guardedValue = map['wildcard']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

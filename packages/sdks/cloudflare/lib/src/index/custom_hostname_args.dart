// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_hostname_ssl.dart';

/// {@template pulumi_index_custom_hostname_custom_hostname_args_doc}
/// The set of arguments for CustomHostname.
/// {@endtemplate}
/// {@macro pulumi_index_custom_hostname_custom_hostname_args_doc}
class CustomHostnameArgs {
  /// Unique key/value metadata for this hostname. These are per-hostname (customer) settings.
  final pulumi.Input<Map<String, String>?>? customMetadata;
  /// a valid hostname that’s been added to your DNS zone as an A, AAAA, or CNAME record.
  final pulumi.Input<String?>? customOriginServer;
  /// A hostname that will be sent to your custom origin server as SNI for TLS handshake. This can be a valid subdomain of the zone or custom origin server name or the string ':request*host*header:' which will cause the host header in the request to be used as SNI. Not configurable with default/fallback origin server.
  final pulumi.Input<String?>? customOriginSni;
  /// The custom hostname that will point to your hostname via CNAME.
  final pulumi.Input<String> hostname;
  /// SSL properties used when creating the custom hostname.
  final pulumi.Input<CustomHostnameSsl?>? ssl;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [CustomHostnameArgs].
  /// [customMetadata] Unique key/value metadata for this hostname. These are per-hostname (customer) settings.
  /// [customOriginServer] a valid hostname that’s been added to your DNS zone as an A, AAAA, or CNAME record.
  /// [customOriginSni] A hostname that will be sent to your custom origin server as SNI for TLS handshake. This can be a valid subdomain of the zone or custom origin server name or the string ':request*host*header:' which will cause the host header in the request to be used as SNI. Not configurable with default/fallback origin server.
  /// [hostname] The custom hostname that will point to your hostname via CNAME.
  /// [ssl] SSL properties used when creating the custom hostname.
  /// [zoneId] Identifier.
  const CustomHostnameArgs({
    this.customMetadata,
    this.customOriginServer,
    this.customOriginSni,
    required this.hostname,
    this.ssl,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customMetadata': ?customMetadata,
      'customOriginServer': ?customOriginServer,
      'customOriginSni': ?customOriginSni,
      'hostname': hostname,
      'ssl': ?pulumi.Input.mapOptionalInputValue<CustomHostnameSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory CustomHostnameArgs.fromMap(Map<String, dynamic> map) {
    return CustomHostnameArgs(
      customMetadata: (() { final guardedValue = map['customMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      customOriginServer: (() { final guardedValue = map['customOriginServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customOriginSni: (() { final guardedValue = map['customOriginSni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomHostnameSsl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

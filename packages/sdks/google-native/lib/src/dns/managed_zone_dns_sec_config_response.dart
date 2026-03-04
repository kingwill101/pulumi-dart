// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_key_spec_response.dart';

class ManagedZoneDnsSecConfigResponse {
  /// Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  final pulumi.Input<List<DnsKeySpecResponse>> defaultKeySpecs;
  final pulumi.Input<String> kind;

  /// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  final pulumi.Input<String> nonExistence;

  /// Specifies whether DNSSEC is enabled, and what mode it is in.
  final pulumi.Input<String> state;

  /// Creates a new [ManagedZoneDnsSecConfigResponse].
  /// [defaultKeySpecs] Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.
  /// [kind] Required.
  /// [nonExistence] Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
  /// [state] Specifies whether DNSSEC is enabled, and what mode it is in.
  ManagedZoneDnsSecConfigResponse({
    required this.defaultKeySpecs,
    required this.kind,
    required this.nonExistence,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKeySpecs':
          pulumi.Input.mapInputValue<
            List<DnsKeySpecResponse>,
            List<Map<String, dynamic>>
          >(
            defaultKeySpecs,
            (value) =>
                pulumi.Input.encodeList<
                  DnsKeySpecResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'kind': kind,
      'nonExistence': nonExistence,
      'state': state,
    };
  }

  factory ManagedZoneDnsSecConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZoneDnsSecConfigResponse(
      defaultKeySpecs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DnsKeySpecResponse>(
          map['defaultKeySpecs']!,
          (value) => DnsKeySpecResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      nonExistence: pulumi.Input.fromValue(map['nonExistence'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

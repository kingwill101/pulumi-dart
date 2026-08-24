// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_application_scim_config_mapping_operations.dart';

class ZeroTrustAccessApplicationScimConfigMapping {
  /// Whether or not this mapping is enabled.
  final pulumi.Input<bool?>? enabled;
  /// A [SCIM filter expression](https://datatracker.ietf.org/doc/html/rfc7644#section-3.4.2.2) that matches resources that should be provisioned to this application.
  final pulumi.Input<String?>? filter;
  /// Whether or not this mapping applies to creates, updates, or deletes.
  final pulumi.Input<ZeroTrustAccessApplicationScimConfigMappingOperations?>? operations;
  /// Which SCIM resource type this mapping applies to.
  final pulumi.Input<String> schema;
  /// The level of adherence to outbound resource schemas when provisioning to this mapping. ‘Strict’ removes unknown values, while ‘passthrough’ passes unknown values to the target.
  /// Available values: "strict", "passthrough".
  final pulumi.Input<String?>? strictness;
  /// A [JSONata](https://jsonata.org/) expression that transforms the resource before provisioning it in the application.
  final pulumi.Input<String?>? transformJsonata;

  /// Creates a new [ZeroTrustAccessApplicationScimConfigMapping].
  /// [enabled] Whether or not this mapping is enabled.
  /// [filter] A [SCIM filter expression](https://datatracker.ietf.org/doc/html/rfc7644#section-3.4.2.2) that matches resources that should be provisioned to this application.
  /// [operations] Whether or not this mapping applies to creates, updates, or deletes.
  /// [schema] Which SCIM resource type this mapping applies to.
  /// [strictness] The level of adherence to outbound resource schemas when provisioning to this mapping. ‘Strict’ removes unknown values, while ‘passthrough’ passes unknown values to the target.
  /// [transformJsonata] A [JSONata](https://jsonata.org/) expression that transforms the resource before provisioning it in the application.
  const ZeroTrustAccessApplicationScimConfigMapping({
    this.enabled,
    this.filter,
    this.operations,
    required this.schema,
    this.strictness,
    this.transformJsonata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'filter': ?filter,
      'operations': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationScimConfigMappingOperations, Map<String, dynamic>>(operations, (value) => value.toMap()),
      'schema': schema,
      'strictness': ?strictness,
      'transformJsonata': ?transformJsonata,
    };
  }

  factory ZeroTrustAccessApplicationScimConfigMapping.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationScimConfigMapping(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationScimConfigMappingOperations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schema: pulumi.Input.fromValue(map['schema'] as String),
      strictness: (() { final guardedValue = map['strictness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transformJsonata: (() { final guardedValue = map['transformJsonata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

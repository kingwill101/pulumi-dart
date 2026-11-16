// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2ConsumerPolicyEnableRule {
  /// List of service catalog names to be enabled in the format of catalogs/&lt;catalog_name&gt;, for example catalogs/default-cloud-services.
  final pulumi.Input<List<String>?>? catalogs;
  /// List of service names to be enabled in the format of services/&lt;service_name&gt;
  final pulumi.Input<List<String>?>? services;

  /// Creates a new [V2ConsumerPolicyEnableRule].
  /// [catalogs] List of service catalog names to be enabled in the format of catalogs/&lt;catalog_name&gt;, for example catalogs/default-cloud-services.
  /// [services] List of service names to be enabled in the format of services/&lt;service_name&gt;
  const V2ConsumerPolicyEnableRule({
    this.catalogs,
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogs': ?catalogs,
      'services': ?services,
    };
  }

  factory V2ConsumerPolicyEnableRule.fromMap(Map<String, dynamic> map) {
    return V2ConsumerPolicyEnableRule(
      catalogs: (() { final guardedValue = map['catalogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_response_appengine_v1alpha.dart';
import 'ssl_settings_response_appengine_v1alpha.dart';

/// Result data returned by getDomainMapping.
class GetDomainMappingAppengineV1alphaResult {
  /// Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  final String? name;
  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  final List<ResourceRecordResponseAppengineV1alpha>? resourceRecords;
  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final SslSettingsResponseAppengineV1alpha? sslSettings;

  /// Creates a new [GetDomainMappingAppengineV1alphaResult].
  /// [name] Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  /// [resourceRecords] The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  /// [sslSettings] SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  const GetDomainMappingAppengineV1alphaResult({
    this.name,
    this.resourceRecords,
    this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceRecords': ?(() { final guardedValue = resourceRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceRecordResponseAppengineV1alpha, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sslSettings': ?sslSettings?.toMap(),
    };
  }

  factory GetDomainMappingAppengineV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingAppengineV1alphaResult(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceRecords: (() { final guardedValue = map['resourceRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordResponseAppengineV1alpha>(guardedValue, (value) => ResourceRecordResponseAppengineV1alpha.fromMap((value as Map).cast<String, dynamic>())); })(),
      sslSettings: (() { final guardedValue = map['sslSettings']; if (guardedValue == null) return null; return SslSettingsResponseAppengineV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

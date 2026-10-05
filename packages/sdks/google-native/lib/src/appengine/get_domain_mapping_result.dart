// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_response.dart';
import 'ssl_settings_response.dart';

/// Result data returned by getDomainMapping.
class GetDomainMappingResult {
  /// Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  final String? name;
  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  final List<ResourceRecordResponse>? resourceRecords;
  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final SslSettingsResponse? sslSettings;

  /// Creates a new [GetDomainMappingResult].
  /// [name] Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.
  /// [resourceRecords] The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.
  /// [sslSettings] SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  const GetDomainMappingResult({
    this.name,
    this.resourceRecords,
    this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceRecords': ?(() { final guardedValue = resourceRecords; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceRecordResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sslSettings': ?sslSettings?.toMap(),
    };
  }

  factory GetDomainMappingResult.fromMap(Map<String, dynamic> map) {
    return GetDomainMappingResult(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceRecords: (() { final guardedValue = map['resourceRecords']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceRecordResponse>(guardedValue, (value) => ResourceRecordResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sslSettings: (() { final guardedValue = map['sslSettings']; if (guardedValue == null) return null; return SslSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'sku_response.dart';

/// Result data returned by getInstancePool.
class GetInstancePoolResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Dns Zone that the managed instance pool is in.
  final String? dnsZone;
  /// Resource ID.
  final String? id;
  /// The license type. Possible values are 'LicenseIncluded' (price for SQL license is included) and 'BasePrice' (without SQL license price).
  final String? licenseType;
  /// Resource location.
  final String? location;
  /// Specifies maintenance configuration id to apply to this managed instance.
  final String? maintenanceConfigurationId;
  /// Resource name.
  final String? name;
  /// The name and tier of the SKU.
  final SkuResponse? sku;
  /// Resource ID of the subnet to place this instance pool in.
  final String? subnetId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// Count of vCores belonging to this instance pool.
  final int? vCores;

  /// Creates a new [GetInstancePoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dnsZone] The Dns Zone that the managed instance pool is in.
  /// [id] Resource ID.
  /// [licenseType] The license type. Possible values are 'LicenseIncluded' (price for SQL license is included) and 'BasePrice' (without SQL license price).
  /// [location] Resource location.
  /// [maintenanceConfigurationId] Specifies maintenance configuration id to apply to this managed instance.
  /// [name] Resource name.
  /// [sku] The name and tier of the SKU.
  /// [subnetId] Resource ID of the subnet to place this instance pool in.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [vCores] Count of vCores belonging to this instance pool.
  const GetInstancePoolResult({
    this.azureApiVersion,
    this.dnsZone,
    this.id,
    this.licenseType,
    this.location,
    this.maintenanceConfigurationId,
    this.name,
    this.sku,
    this.subnetId,
    this.tags,
    this.type,
    this.vCores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dnsZone': ?dnsZone,
      'id': ?id,
      'licenseType': ?licenseType,
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'name': ?name,
      'sku': ?sku?.toMap(),
      'subnetId': ?subnetId,
      'tags': ?tags,
      'type': ?type,
      'vCores': ?vCores,
    };
  }

  factory GetInstancePoolResult.fromMap(Map<String, dynamic> map) {
    return GetInstancePoolResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsZone: (() { final guardedValue = map['dnsZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceConfigurationId: (() { final guardedValue = map['maintenanceConfigurationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vCores: (() { final guardedValue = map['vCores']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}

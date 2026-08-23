// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PrivateDnsZoneConfig resource.
class PrivateDnsZoneConfig {
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The resource id of the private dns zone.
  final pulumi.Input<String>? privateDnsZoneId;

  /// Creates a new [PrivateDnsZoneConfig].
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateDnsZoneId] The resource id of the private dns zone.
  const PrivateDnsZoneConfig({
    this.name,
    this.privateDnsZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'privateDnsZoneId': ?privateDnsZoneId,
    };
  }

  factory PrivateDnsZoneConfig.fromMap(Map<String, dynamic> map) {
    return PrivateDnsZoneConfig(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsZoneId: (() { final guardedValue = map['privateDnsZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

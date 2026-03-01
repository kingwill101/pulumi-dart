// ignore_for_file: unused_element, unnecessary_cast


/// PrivateDnsZoneConfig resource.
class PrivateDnsZoneConfig {
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The resource id of the private dns zone.
  final String? privateDnsZoneId;

  /// Creates a new [PrivateDnsZoneConfig].
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateDnsZoneId] The resource id of the private dns zone.
  PrivateDnsZoneConfig({
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
      name: map['name'] == null ? null : map['name'] as String,
      privateDnsZoneId: map['privateDnsZoneId'] == null ? null : map['privateDnsZoneId'] as String,
    );
  }
}


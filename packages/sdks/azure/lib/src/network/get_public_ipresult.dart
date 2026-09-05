// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPublicIP.
class GetPublicIPResult {
  /// The allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  final String? allocationMethod;
  /// The DDoS protection mode of the public IP.
  final String? ddosProtectionMode;
  /// The ID of DDoS protection plan associated with the public IP.
  final String? ddosProtectionPlanId;
  /// The label for the Domain Name.
  final String? domainNameLabel;
  /// Fully qualified domain name of the A DNS record associated with the public IP. This is the concatenation of the domainNameLabel and the regionalized DNS zone.
  final String? fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Specifies the timeout for the TCP idle connection.
  final int? idleTimeoutInMinutes;
  /// The IP address value that was allocated.
  final String? ipAddress;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String>? ipTags;
  /// The IP version being used, for example `IPv4` or `IPv6`.
  final String? ipVersion;
  /// The region that this public ip exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The fully qualified domain name that resolves to this public IP address.
  final String? reverseFqdn;
  /// The SKU of the Public IP.
  final String? sku;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String>? tags;
  /// A list of Availability Zones in which this Public IP is located.
  final List<String>? zones;

  /// Creates a new [GetPublicIPResult].
  /// [allocationMethod] The allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  /// [ddosProtectionMode] The DDoS protection mode of the public IP.
  /// [ddosProtectionPlanId] The ID of DDoS protection plan associated with the public IP.
  /// [domainNameLabel] The label for the Domain Name.
  /// [fqdn] Fully qualified domain name of the A DNS record associated with the public IP. This is the concatenation of the domainNameLabel and the regionalized DNS zone.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleTimeoutInMinutes] Specifies the timeout for the TCP idle connection.
  /// [ipAddress] The IP address value that was allocated.
  /// [ipTags] A mapping of tags to assigned to the resource.
  /// [ipVersion] The IP version being used, for example `IPv4` or `IPv6`.
  /// [location] The region that this public ip exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [reverseFqdn] The fully qualified domain name that resolves to this public IP address.
  /// [sku] The SKU of the Public IP.
  /// [tags] A mapping of tags to assigned to the resource.
  /// [zones] A list of Availability Zones in which this Public IP is located.
  const GetPublicIPResult({
    this.allocationMethod,
    this.ddosProtectionMode,
    this.ddosProtectionPlanId,
    this.domainNameLabel,
    this.fqdn,
    this.id,
    this.idleTimeoutInMinutes,
    this.ipAddress,
    this.ipTags,
    this.ipVersion,
    this.location,
    this.name,
    this.resourceGroupName,
    this.reverseFqdn,
    this.sku,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMethod': ?allocationMethod,
      'ddosProtectionMode': ?ddosProtectionMode,
      'ddosProtectionPlanId': ?ddosProtectionPlanId,
      'domainNameLabel': ?domainNameLabel,
      'fqdn': ?fqdn,
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipAddress': ?ipAddress,
      'ipTags': ?ipTags,
      'ipVersion': ?ipVersion,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'reverseFqdn': ?reverseFqdn,
      'sku': ?sku,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory GetPublicIPResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIPResult(
      allocationMethod: (() { final guardedValue = map['allocationMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ddosProtectionMode: (() { final guardedValue = map['ddosProtectionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ddosProtectionPlanId: (() { final guardedValue = map['ddosProtectionPlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainNameLabel: (() { final guardedValue = map['domainNameLabel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleTimeoutInMinutes: (() { final guardedValue = map['idleTimeoutInMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipTags: (() { final guardedValue = map['ipTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reverseFqdn: (() { final guardedValue = map['reverseFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

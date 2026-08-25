// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAddress.
class GetAddressResult {
  /// The IP of the created resource.
  final String? address;
  final String? addressType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? network;
  final String? networkTier;
  final int? prefixLength;
  final String? project;
  final String? purpose;
  final String? region;
  /// The URI of the created resource.
  final String? selfLink;
  /// Indicates if the address is used. Possible values are: RESERVED or IN_USE.
  final String? status;
  final String? subnetwork;
  final String? users;

  /// Creates a new [GetAddressResult].
  /// [address] The IP of the created resource.
  /// [addressType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [network] Optional.
  /// [networkTier] Optional.
  /// [prefixLength] Optional.
  /// [project] Optional.
  /// [purpose] Optional.
  /// [region] Optional.
  /// [selfLink] The URI of the created resource.
  /// [status] Indicates if the address is used. Possible values are: RESERVED or IN_USE.
  /// [subnetwork] Optional.
  /// [users] Optional.
  const GetAddressResult({
    this.address,
    this.addressType,
    this.id,
    this.name,
    this.network,
    this.networkTier,
    this.prefixLength,
    this.project,
    this.purpose,
    this.region,
    this.selfLink,
    this.status,
    this.subnetwork,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'addressType': ?addressType,
      'id': ?id,
      'name': ?name,
      'network': ?network,
      'networkTier': ?networkTier,
      'prefixLength': ?prefixLength,
      'project': ?project,
      'purpose': ?purpose,
      'region': ?region,
      'selfLink': ?selfLink,
      'status': ?status,
      'subnetwork': ?subnetwork,
      'users': ?users,
    };
  }

  factory GetAddressResult.fromMap(Map<String, dynamic> map) {
    return GetAddressResult(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addressType: (() { final guardedValue = map['addressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkTier: (() { final guardedValue = map['networkTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefixLength: (() { final guardedValue = map['prefixLength']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purpose: (() { final guardedValue = map['purpose']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

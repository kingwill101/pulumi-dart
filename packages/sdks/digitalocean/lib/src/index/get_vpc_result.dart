// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVpc.
class GetVpcResult {
  /// The date and time of when the VPC was created.
  final String? createdAt;
  /// A boolean indicating whether or not the VPC is the default one for the region.
  final bool? default_;
  /// A free-form text field describing the VPC.
  final String? description;
  /// The unique identifier for the VPC.
  final String? id;
  /// The range of IP addresses for the VPC in CIDR notation.
  final String? ipRange;
  /// The name of the VPC.
  final String? name;
  /// The DigitalOcean region slug for the VPC's location.
  final String? region;
  /// The uniform resource name (URN) for the VPC.
  final String? urn;

  /// Creates a new [GetVpcResult].
  /// [createdAt] The date and time of when the VPC was created.
  /// [default_] A boolean indicating whether or not the VPC is the default one for the region.
  /// [description] A free-form text field describing the VPC.
  /// [id] The unique identifier for the VPC.
  /// [ipRange] The range of IP addresses for the VPC in CIDR notation.
  /// [name] The name of the VPC.
  /// [region] The DigitalOcean region slug for the VPC's location.
  /// [urn] The uniform resource name (URN) for the VPC.
  const GetVpcResult({
    this.createdAt,
    this.default_,
    this.description,
    this.id,
    this.ipRange,
    this.name,
    this.region,
    this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'default': ?default_,
      'description': ?description,
      'id': ?id,
      'ipRange': ?ipRange,
      'name': ?name,
      'region': ?region,
      'urn': ?urn,
    };
  }

  factory GetVpcResult.fromMap(Map<String, dynamic> map) {
    return GetVpcResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipRange: (() { final guardedValue = map['ipRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      urn: (() { final guardedValue = map['urn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

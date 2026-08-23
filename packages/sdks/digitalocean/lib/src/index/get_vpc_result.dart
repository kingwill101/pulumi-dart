// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVpc.
class GetVpcResult {
  /// The date and time of when the VPC was created.
  final String createdAt;
  /// A boolean indicating whether or not the VPC is the default one for the region.
  final bool default_;
  /// A free-form text field describing the VPC.
  final String description;
  /// The unique identifier for the VPC.
  final String id;
  /// The range of IP addresses for the VPC in CIDR notation.
  final String ipRange;
  /// The name of the VPC.
  final String name;
  /// The DigitalOcean region slug for the VPC's location.
  final String region;
  /// The uniform resource name (URN) for the VPC.
  final String urn;

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
    required this.createdAt,
    required this.default_,
    required this.description,
    required this.id,
    required this.ipRange,
    required this.name,
    required this.region,
    required this.urn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'default': default_,
      'description': description,
      'id': id,
      'ipRange': ipRange,
      'name': name,
      'region': region,
      'urn': urn,
    };
  }

  factory GetVpcResult.fromMap(Map<String, dynamic> map) {
    return GetVpcResult(
      createdAt: map['createdAt'] as String,
      default_: map['default'] as bool,
      description: map['description'] as String,
      id: map['id'] as String,
      ipRange: map['ipRange'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      urn: map['urn'] as String,
    );
  }
}

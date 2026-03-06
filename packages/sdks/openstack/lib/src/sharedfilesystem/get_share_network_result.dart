// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getShareNetwork.
class GetShareNetworkResult {
  /// See Argument Reference above.
  final String cidr;
  /// See Argument Reference above.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final int ipVersion;
  /// See Argument Reference above.
  final String name;
  /// See Argument Reference above.
  final String networkType;
  /// See Argument Reference above.
  final String neutronNetId;
  /// See Argument Reference above.
  final String neutronSubnetId;
  /// The owner of the Share Network.
  final String projectId;
  /// See Argument Reference above.
  final String region;
  /// See Argument Reference above.
  final String? securityServiceId;
  /// The list of security service IDs associated with
  /// the share network.
  final List<String> securityServiceIds;
  /// See Argument Reference above.
  final int segmentationId;

  /// Creates a new [GetShareNetworkResult].
  /// [cidr] See Argument Reference above.
  /// [description] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipVersion] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [networkType] See Argument Reference above.
  /// [neutronNetId] See Argument Reference above.
  /// [neutronSubnetId] See Argument Reference above.
  /// [projectId] The owner of the Share Network.
  /// [region] See Argument Reference above.
  /// [securityServiceId] See Argument Reference above.
  /// [securityServiceIds] The list of security service IDs associated with
  /// [segmentationId] See Argument Reference above.
  const GetShareNetworkResult({
    required this.cidr,
    required this.description,
    required this.id,
    required this.ipVersion,
    required this.name,
    required this.networkType,
    required this.neutronNetId,
    required this.neutronSubnetId,
    required this.projectId,
    required this.region,
    this.securityServiceId,
    required this.securityServiceIds,
    required this.segmentationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'description': description,
      'id': id,
      'ipVersion': ipVersion,
      'name': name,
      'networkType': networkType,
      'neutronNetId': neutronNetId,
      'neutronSubnetId': neutronSubnetId,
      'projectId': projectId,
      'region': region,
      'securityServiceId': ?securityServiceId,
      'securityServiceIds': securityServiceIds,
      'segmentationId': segmentationId,
    };
  }

  factory GetShareNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetShareNetworkResult(
      cidr: map['cidr'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      ipVersion: map['ipVersion'] as int,
      name: map['name'] as String,
      networkType: map['networkType'] as String,
      neutronNetId: map['neutronNetId'] as String,
      neutronSubnetId: map['neutronSubnetId'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      securityServiceId: (() { final guardedValue = map['securityServiceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityServiceIds: (map['securityServiceIds'] as List).cast<String>(),
      segmentationId: map['segmentationId'] as int,
    );
  }
}


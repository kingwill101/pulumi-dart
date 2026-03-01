// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSegmentV2.
class GetSegmentV2Result {
  /// The date and time when the network segment was created.
  final String createdAt;
  /// See Argument Reference above.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final String name;
  /// See Argument Reference above.
  final String networkId;
  /// See Argument Reference above.
  final String networkType;
  /// See Argument Reference above.
  final String physicalNetwork;
  final String region;
  /// See Argument Reference above.
  final int revisionNumber;
  /// See Argument Reference above.
  final String segmentId;
  /// See Argument Reference above.
  final int segmentationId;
  /// The date and time when the network segment was last updated.
  final String updatedAt;

  /// Creates a new [GetSegmentV2Result].
  /// [createdAt] The date and time when the network segment was created.
  /// [description] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] See Argument Reference above.
  /// [networkId] See Argument Reference above.
  /// [networkType] See Argument Reference above.
  /// [physicalNetwork] See Argument Reference above.
  /// [region] Required.
  /// [revisionNumber] See Argument Reference above.
  /// [segmentId] See Argument Reference above.
  /// [segmentationId] See Argument Reference above.
  /// [updatedAt] The date and time when the network segment was last updated.
  GetSegmentV2Result({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.name,
    required this.networkId,
    required this.networkType,
    required this.physicalNetwork,
    required this.region,
    required this.revisionNumber,
    required this.segmentId,
    required this.segmentationId,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'name': name,
      'networkId': networkId,
      'networkType': networkType,
      'physicalNetwork': physicalNetwork,
      'region': region,
      'revisionNumber': revisionNumber,
      'segmentId': segmentId,
      'segmentationId': segmentationId,
      'updatedAt': updatedAt,
    };
  }

  factory GetSegmentV2Result.fromMap(Map<String, dynamic> map) {
    return GetSegmentV2Result(
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      networkId: map['networkId'] as String,
      networkType: map['networkType'] as String,
      physicalNetwork: map['physicalNetwork'] as String,
      region: map['region'] as String,
      revisionNumber: map['revisionNumber'] as int,
      segmentId: map['segmentId'] as String,
      segmentationId: map['segmentationId'] as int,
      updatedAt: map['updatedAt'] as String,
    );
  }
}


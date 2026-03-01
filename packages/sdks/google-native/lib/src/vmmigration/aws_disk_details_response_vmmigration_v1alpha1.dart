// ignore_for_file: unused_element, unnecessary_cast


/// The details of an AWS instance disk.
class AwsDiskDetailsResponseVmmigrationV1alpha1 {
  /// The ordinal number of the disk.
  final int diskNumber;
  /// Size in GB.
  final String sizeGb;
  /// AWS volume ID.
  final String volumeId;

  /// Creates a new [AwsDiskDetailsResponseVmmigrationV1alpha1].
  /// [diskNumber] The ordinal number of the disk.
  /// [sizeGb] Size in GB.
  /// [volumeId] AWS volume ID.
  AwsDiskDetailsResponseVmmigrationV1alpha1({
    required this.diskNumber,
    required this.sizeGb,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskNumber': diskNumber,
      'sizeGb': sizeGb,
      'volumeId': volumeId,
    };
  }

  factory AwsDiskDetailsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AwsDiskDetailsResponseVmmigrationV1alpha1(
      diskNumber: map['diskNumber'] as int,
      sizeGb: map['sizeGb'] as String,
      volumeId: map['volumeId'] as String,
    );
  }
}


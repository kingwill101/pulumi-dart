// ignore_for_file: unused_element, unnecessary_cast


/// Onprem disk details data.
class DiskDetailsResponse {
  /// The hard disk max size in MB.
  final double? maxSizeMB;
  /// The VHD Id.
  final String? vhdId;
  /// The VHD name.
  final String? vhdName;
  /// The type of the volume.
  final String? vhdType;

  /// Creates a new [DiskDetailsResponse].
  /// [maxSizeMB] The hard disk max size in MB.
  /// [vhdId] The VHD Id.
  /// [vhdName] The VHD name.
  /// [vhdType] The type of the volume.
  DiskDetailsResponse({
    this.maxSizeMB,
    this.vhdId,
    this.vhdName,
    this.vhdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxSizeMB': ?maxSizeMB,
      'vhdId': ?vhdId,
      'vhdName': ?vhdName,
      'vhdType': ?vhdType,
    };
  }

  factory DiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DiskDetailsResponse(
      maxSizeMB: map['maxSizeMB'] == null ? null : map['maxSizeMB'] as double,
      vhdId: map['vhdId'] == null ? null : map['vhdId'] as String,
      vhdName: map['vhdName'] == null ? null : map['vhdName'] as String,
      vhdType: map['vhdType'] == null ? null : map['vhdType'] as String,
    );
  }
}


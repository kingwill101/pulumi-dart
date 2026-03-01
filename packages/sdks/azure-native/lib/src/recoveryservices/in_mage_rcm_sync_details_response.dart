// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcm disk level sync details.
class InMageRcmSyncDetailsResponse {
  /// The bytes transferred in last 15 minutes from source VM to azure.
  final double last15MinutesTransferredBytes;
  /// The time of the last data transfer from source VM to azure.
  final String lastDataTransferTimeUtc;
  /// The last refresh time.
  final String lastRefreshTime;
  /// The total processed bytes. This includes bytes that are transferred from source VM to azure and matched bytes.
  final double processedBytes;
  /// The progress health.
  final String progressHealth;
  /// Progress in percentage. Progress percentage is calculated based on processed bytes.
  final int progressPercentage;
  /// The start time.
  final String startTime;
  /// The transferred bytes from source VM to azure for the disk.
  final double transferredBytes;

  /// Creates a new [InMageRcmSyncDetailsResponse].
  /// [last15MinutesTransferredBytes] The bytes transferred in last 15 minutes from source VM to azure.
  /// [lastDataTransferTimeUtc] The time of the last data transfer from source VM to azure.
  /// [lastRefreshTime] The last refresh time.
  /// [processedBytes] The total processed bytes. This includes bytes that are transferred from source VM to azure and matched bytes.
  /// [progressHealth] The progress health.
  /// [progressPercentage] Progress in percentage. Progress percentage is calculated based on processed bytes.
  /// [startTime] The start time.
  /// [transferredBytes] The transferred bytes from source VM to azure for the disk.
  InMageRcmSyncDetailsResponse({
    required this.last15MinutesTransferredBytes,
    required this.lastDataTransferTimeUtc,
    required this.lastRefreshTime,
    required this.processedBytes,
    required this.progressHealth,
    required this.progressPercentage,
    required this.startTime,
    required this.transferredBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'last15MinutesTransferredBytes': last15MinutesTransferredBytes,
      'lastDataTransferTimeUtc': lastDataTransferTimeUtc,
      'lastRefreshTime': lastRefreshTime,
      'processedBytes': processedBytes,
      'progressHealth': progressHealth,
      'progressPercentage': progressPercentage,
      'startTime': startTime,
      'transferredBytes': transferredBytes,
    };
  }

  factory InMageRcmSyncDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmSyncDetailsResponse(
      last15MinutesTransferredBytes: map['last15MinutesTransferredBytes'] as double,
      lastDataTransferTimeUtc: map['lastDataTransferTimeUtc'] as String,
      lastRefreshTime: map['lastRefreshTime'] as String,
      processedBytes: map['processedBytes'] as double,
      progressHealth: map['progressHealth'] as String,
      progressPercentage: map['progressPercentage'] as int,
      startTime: map['startTime'] as String,
      transferredBytes: map['transferredBytes'] as double,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageRcm disk level sync details.
class InMageRcmSyncDetailsResponse {
  /// The bytes transferred in last 15 minutes from source VM to azure.
  final pulumi.Input<double> last15MinutesTransferredBytes;
  /// The time of the last data transfer from source VM to azure.
  final pulumi.Input<String> lastDataTransferTimeUtc;
  /// The last refresh time.
  final pulumi.Input<String> lastRefreshTime;
  /// The total processed bytes. This includes bytes that are transferred from source VM to azure and matched bytes.
  final pulumi.Input<double> processedBytes;
  /// The progress health.
  final pulumi.Input<String> progressHealth;
  /// Progress in percentage. Progress percentage is calculated based on processed bytes.
  final pulumi.Input<int> progressPercentage;
  /// The start time.
  final pulumi.Input<String> startTime;
  /// The transferred bytes from source VM to azure for the disk.
  final pulumi.Input<double> transferredBytes;

  /// Creates a new [InMageRcmSyncDetailsResponse].
  /// [last15MinutesTransferredBytes] The bytes transferred in last 15 minutes from source VM to azure.
  /// [lastDataTransferTimeUtc] The time of the last data transfer from source VM to azure.
  /// [lastRefreshTime] The last refresh time.
  /// [processedBytes] The total processed bytes. This includes bytes that are transferred from source VM to azure and matched bytes.
  /// [progressHealth] The progress health.
  /// [progressPercentage] Progress in percentage. Progress percentage is calculated based on processed bytes.
  /// [startTime] The start time.
  /// [transferredBytes] The transferred bytes from source VM to azure for the disk.
  const InMageRcmSyncDetailsResponse({
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
      last15MinutesTransferredBytes: pulumi.Input.fromValue(map['last15MinutesTransferredBytes'] as double),
      lastDataTransferTimeUtc: pulumi.Input.fromValue(map['lastDataTransferTimeUtc'] as String),
      lastRefreshTime: pulumi.Input.fromValue(map['lastRefreshTime'] as String),
      processedBytes: pulumi.Input.fromValue(map['processedBytes'] as double),
      progressHealth: pulumi.Input.fromValue(map['progressHealth'] as String),
      progressPercentage: pulumi.Input.fromValue(map['progressPercentage'] as int),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      transferredBytes: pulumi.Input.fromValue(map['transferredBytes'] as double),
    );
  }
}

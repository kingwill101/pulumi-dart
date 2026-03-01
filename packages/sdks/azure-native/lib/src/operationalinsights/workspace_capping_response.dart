// ignore_for_file: unused_element, unnecessary_cast


/// The daily volume cap for ingestion.
class WorkspaceCappingResponse {
  /// The workspace daily quota for ingestion.
  final double? dailyQuotaGb;
  /// The status of data ingestion for this workspace.
  final String dataIngestionStatus;
  /// The time when the quota will be rest.
  final String quotaNextResetTime;

  /// Creates a new [WorkspaceCappingResponse].
  /// [dailyQuotaGb] The workspace daily quota for ingestion.
  /// [dataIngestionStatus] The status of data ingestion for this workspace.
  /// [quotaNextResetTime] The time when the quota will be rest.
  WorkspaceCappingResponse({
    this.dailyQuotaGb,
    required this.dataIngestionStatus,
    required this.quotaNextResetTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyQuotaGb': ?dailyQuotaGb,
      'dataIngestionStatus': dataIngestionStatus,
      'quotaNextResetTime': quotaNextResetTime,
    };
  }

  factory WorkspaceCappingResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceCappingResponse(
      dailyQuotaGb: map['dailyQuotaGb'] == null ? null : map['dailyQuotaGb'] as double,
      dataIngestionStatus: map['dataIngestionStatus'] as String,
      quotaNextResetTime: map['quotaNextResetTime'] as String,
    );
  }
}


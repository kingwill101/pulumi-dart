// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The daily volume cap for ingestion.
class WorkspaceCappingResponse {
  /// The workspace daily quota for ingestion.
  final pulumi.Input<double>? dailyQuotaGb;

  /// The status of data ingestion for this workspace.
  final pulumi.Input<String> dataIngestionStatus;

  /// The time when the quota will be rest.
  final pulumi.Input<String> quotaNextResetTime;

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
      dailyQuotaGb: (() {
        final guardedValue = map['dailyQuotaGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      dataIngestionStatus: pulumi.Input.fromValue(
        map['dataIngestionStatus'] as String,
      ),
      quotaNextResetTime: pulumi.Input.fromValue(
        map['quotaNextResetTime'] as String,
      ),
    );
  }
}

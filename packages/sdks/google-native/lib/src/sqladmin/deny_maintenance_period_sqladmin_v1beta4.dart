// ignore_for_file: unused_element, unnecessary_cast


/// Deny Maintenance Periods. This specifies a date range during when all CSA rollout will be denied.
class DenyMaintenancePeriodSqladminV1beta4 {
  /// "deny maintenance period" end date. If the year of the end date is empty, the year of the start date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final String? endDate;
  /// "deny maintenance period" start date. If the year of the start date is empty, the year of the end date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  final String? startDate;
  /// Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  final String? time;

  /// Creates a new [DenyMaintenancePeriodSqladminV1beta4].
  /// [endDate] "deny maintenance period" end date. If the year of the end date is empty, the year of the start date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  /// [startDate] "deny maintenance period" start date. If the year of the start date is empty, the year of the end date also must be empty. In this case, it means the deny maintenance period recurs every year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  /// [time] Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  DenyMaintenancePeriodSqladminV1beta4({
    this.endDate,
    this.startDate,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'startDate': ?startDate,
      'time': ?time,
    };
  }

  factory DenyMaintenancePeriodSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return DenyMaintenancePeriodSqladminV1beta4(
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      startDate: map['startDate'] == null ? null : map['startDate'] as String,
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}


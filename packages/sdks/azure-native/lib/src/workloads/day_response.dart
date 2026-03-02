// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Day of the week.
class DayResponse {
  /// Date of the month
  final pulumi.Input<int>? date;
  /// Whether Date is last date of month
  final pulumi.Input<bool>? isLast;

  /// Creates a new [DayResponse].
  /// [date] Date of the month
  /// [isLast] Whether Date is last date of month
  DayResponse({
    this.date,
    this.isLast,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': ?date,
      'isLast': ?isLast,
    };
  }

  factory DayResponse.fromMap(Map<String, dynamic> map) {
    return DayResponse(
      date: map['date'] == null ? null : (map['date']! as int).input(),
      isLast: map['isLast'] == null ? null : (map['isLast']! as bool).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Day of the week.
class Day {
  /// Date of the month
  final pulumi.Input<int>? date;
  /// Whether Date is last date of month
  final pulumi.Input<bool>? isLast;

  /// Creates a new [Day].
  /// [date] Date of the month
  /// [isLast] Whether Date is last date of month
  Day({
    this.date,
    this.isLast,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': ?date,
      'isLast': ?isLast,
    };
  }

  factory Day.fromMap(Map<String, dynamic> map) {
    return Day(
      date: map['date'] == null ? null : (map['date']! as int).input(),
      isLast: map['isLast'] == null ? null : (map['isLast']! as bool).input(),
    );
  }
}


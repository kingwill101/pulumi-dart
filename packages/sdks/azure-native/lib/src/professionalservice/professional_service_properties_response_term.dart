// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The current Term object.
class ProfessionalServicePropertiesResponseTerm {
  /// The end date of the current term
  final pulumi.Input<String>? endDate;
  /// The start date of the current term
  final pulumi.Input<String>? startDate;
  /// The unit term eg P1M,P1Y,P2Y,P3Y meaning month,1year,2year,3year respectively
  final pulumi.Input<String>? termUnit;

  /// Creates a new [ProfessionalServicePropertiesResponseTerm].
  /// [endDate] The end date of the current term
  /// [startDate] The start date of the current term
  /// [termUnit] The unit term eg P1M,P1Y,P2Y,P3Y meaning month,1year,2year,3year respectively
  ProfessionalServicePropertiesResponseTerm({
    this.endDate,
    this.startDate,
    this.termUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'startDate': ?startDate,
      'termUnit': ?termUnit,
    };
  }

  factory ProfessionalServicePropertiesResponseTerm.fromMap(Map<String, dynamic> map) {
    return ProfessionalServicePropertiesResponseTerm(
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termUnit: (() { final guardedValue = map['termUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


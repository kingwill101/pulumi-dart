// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The current Term object.
class SaasPropertiesResponseTerm {
  /// The end date of the current term
  final pulumi.Input<String>? endDate;
  /// The start date of the current term
  final pulumi.Input<String>? startDate;
  /// The unit indicating Monthly / Yearly
  final pulumi.Input<String>? termUnit;

  /// Creates a new [SaasPropertiesResponseTerm].
  /// [endDate] The end date of the current term
  /// [startDate] The start date of the current term
  /// [termUnit] The unit indicating Monthly / Yearly
  SaasPropertiesResponseTerm({
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

  factory SaasPropertiesResponseTerm.fromMap(Map<String, dynamic> map) {
    return SaasPropertiesResponseTerm(
      endDate: map['endDate'] == null ? null : (map['endDate'] as String).input(),
      startDate: map['startDate'] == null ? null : (map['startDate'] as String).input(),
      termUnit: map['termUnit'] == null ? null : (map['termUnit'] as String).input(),
    );
  }
}


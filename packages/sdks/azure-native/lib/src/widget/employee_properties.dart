// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Employee properties
class EmployeeProperties {
  /// Age of employee
  final pulumi.Input<int>? age;
  /// City of employee
  final pulumi.Input<String>? city;
  /// Profile of employee
  final pulumi.Input<String>? profile;

  /// Creates a new [EmployeeProperties].
  /// [age] Age of employee
  /// [city] City of employee
  /// [profile] Profile of employee
  EmployeeProperties({
    this.age,
    this.city,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': ?age,
      'city': ?city,
      'profile': ?profile,
    };
  }

  factory EmployeeProperties.fromMap(Map<String, dynamic> map) {
    return EmployeeProperties(
      age: map['age'] == null ? null : (map['age'] as int).input(),
      city: map['city'] == null ? null : (map['city'] as String).input(),
      profile: map['profile'] == null ? null : (map['profile'] as String).input(),
    );
  }
}


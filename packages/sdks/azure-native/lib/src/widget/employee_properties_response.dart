// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Employee properties
class EmployeePropertiesResponse {
  /// Age of employee
  final pulumi.Input<int>? age;
  /// City of employee
  final pulumi.Input<String>? city;
  /// Profile of employee
  final pulumi.Input<String>? profile;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [EmployeePropertiesResponse].
  /// [age] Age of employee
  /// [city] City of employee
  /// [profile] Profile of employee
  /// [provisioningState] The status of the last operation.
  const EmployeePropertiesResponse({
    this.age,
    this.city,
    this.profile,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': ?age,
      'city': ?city,
      'profile': ?profile,
      'provisioningState': provisioningState,
    };
  }

  factory EmployeePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EmployeePropertiesResponse(
      age: (() { final guardedValue = map['age']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}


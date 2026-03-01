// ignore_for_file: unused_element, unnecessary_cast


/// Employee properties
class EmployeeProperties {
  /// Age of employee
  final int? age;
  /// City of employee
  final String? city;
  /// Profile of employee
  final String? profile;

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
      age: map['age'] == null ? null : map['age'] as int,
      city: map['city'] == null ? null : map['city'] as String,
      profile: map['profile'] == null ? null : map['profile'] as String,
    );
  }
}


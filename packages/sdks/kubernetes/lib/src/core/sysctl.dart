// ignore_for_file: unused_element, unnecessary_cast


/// Sysctl defines a kernel parameter to be set
class Sysctl {
  /// Name of a property to set
  final String name;
  /// Value of a property to set
  final String value;

  /// Creates a new [Sysctl].
  /// [name] Name of a property to set
  /// [value] Value of a property to set
  Sysctl({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory Sysctl.fromMap(Map<String, dynamic> map) {
    return Sysctl(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}


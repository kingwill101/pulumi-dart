// ignore_for_file: unused_element, unnecessary_cast


/// Details about DevOps capability.
class DevOpsCapabilityResponse {
  /// Gets the name of the DevOps capability.
  final String name;
  /// Gets the value of the DevOps capability.
  final String value;

  /// Creates a new [DevOpsCapabilityResponse].
  /// [name] Gets the name of the DevOps capability.
  /// [value] Gets the value of the DevOps capability.
  DevOpsCapabilityResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DevOpsCapabilityResponse.fromMap(Map<String, dynamic> map) {
    return DevOpsCapabilityResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}


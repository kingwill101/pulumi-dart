// ignore_for_file: unused_element, unnecessary_cast


class InstanceMetadata {
  /// The base64-encoded user-defined data exposed to this instance through the Linode Metadata service. Refer to the base64encode(...) function for information on encoding content for this field.
  final String? userData;

  /// Creates a new [InstanceMetadata].
  /// [userData] The base64-encoded user-defined data exposed to this instance through the Linode Metadata service. Refer to the base64encode(...) function for information on encoding content for this field.
  InstanceMetadata({
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userData': ?userData,
    };
  }

  factory InstanceMetadata.fromMap(Map<String, dynamic> map) {
    return InstanceMetadata(
      userData: map['userData'] == null ? null : map['userData'] as String,
    );
  }
}


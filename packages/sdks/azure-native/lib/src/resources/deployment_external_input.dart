// ignore_for_file: unused_element, unnecessary_cast


/// Deployment external input for parameterization.
class DeploymentExternalInput {
  /// External input value.
  final dynamic value;

  /// Creates a new [DeploymentExternalInput].
  /// [value] External input value.
  DeploymentExternalInput({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory DeploymentExternalInput.fromMap(Map<String, dynamic> map) {
    return DeploymentExternalInput(
      value: map['value'],
    );
  }
}


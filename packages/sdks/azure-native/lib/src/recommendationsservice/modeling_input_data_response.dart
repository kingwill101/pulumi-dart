// ignore_for_file: unused_element, unnecessary_cast


/// The configuration to raw CDM data to be used as Modeling resource input.
class ModelingInputDataResponse {
  /// Connection string to raw input data.
  final String? connectionString;

  /// Creates a new [ModelingInputDataResponse].
  /// [connectionString] Connection string to raw input data.
  ModelingInputDataResponse({
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
    };
  }

  factory ModelingInputDataResponse.fromMap(Map<String, dynamic> map) {
    return ModelingInputDataResponse(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
    );
  }
}


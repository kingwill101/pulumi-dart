// ignore_for_file: unused_element, unnecessary_cast


/// The configuration to raw CDM data to be used as Modeling resource input.
class ModelingInputData {
  /// Connection string to raw input data.
  final String? connectionString;

  /// Creates a new [ModelingInputData].
  /// [connectionString] Connection string to raw input data.
  ModelingInputData({
    this.connectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
    };
  }

  factory ModelingInputData.fromMap(Map<String, dynamic> map) {
    return ModelingInputData(
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
    );
  }
}


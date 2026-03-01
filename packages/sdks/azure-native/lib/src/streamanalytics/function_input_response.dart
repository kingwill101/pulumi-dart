// ignore_for_file: unused_element, unnecessary_cast


/// Describes one input parameter of a function.
class FunctionInputResponse {
  /// The (Azure Stream Analytics supported) data type of the function input parameter. A list of valid Azure Stream Analytics data types are described at https://msdn.microsoft.com/en-us/library/azure/dn835065.aspx
  final String? dataType;
  /// A flag indicating if the parameter is a configuration parameter. True if this input parameter is expected to be a constant. Default is false.
  final bool? isConfigurationParameter;

  /// Creates a new [FunctionInputResponse].
  /// [dataType] The (Azure Stream Analytics supported) data type of the function input parameter. A list of valid Azure Stream Analytics data types are described at https://msdn.microsoft.com/en-us/library/azure/dn835065.aspx
  /// [isConfigurationParameter] A flag indicating if the parameter is a configuration parameter. True if this input parameter is expected to be a constant. Default is false.
  FunctionInputResponse({
    this.dataType,
    this.isConfigurationParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'isConfigurationParameter': ?isConfigurationParameter,
    };
  }

  factory FunctionInputResponse.fromMap(Map<String, dynamic> map) {
    return FunctionInputResponse(
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      isConfigurationParameter: map['isConfigurationParameter'] == null ? null : map['isConfigurationParameter'] as bool,
    );
  }
}


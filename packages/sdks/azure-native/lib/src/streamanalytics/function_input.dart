// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes one input parameter of a function.
class FunctionInput {
  /// The (Azure Stream Analytics supported) data type of the function input parameter. A list of valid Azure Stream Analytics data types are described at https://msdn.microsoft.com/en-us/library/azure/dn835065.aspx
  final pulumi.Input<String>? dataType;

  /// A flag indicating if the parameter is a configuration parameter. True if this input parameter is expected to be a constant. Default is false.
  final pulumi.Input<bool>? isConfigurationParameter;

  /// Creates a new [FunctionInput].
  /// [dataType] The (Azure Stream Analytics supported) data type of the function input parameter. A list of valid Azure Stream Analytics data types are described at https://msdn.microsoft.com/en-us/library/azure/dn835065.aspx
  /// [isConfigurationParameter] A flag indicating if the parameter is a configuration parameter. True if this input parameter is expected to be a constant. Default is false.
  FunctionInput({this.dataType, this.isConfigurationParameter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'isConfigurationParameter': ?isConfigurationParameter,
    };
  }

  factory FunctionInput.fromMap(Map<String, dynamic> map) {
    return FunctionInput(
      dataType: (() {
        final guardedValue = map['dataType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isConfigurationParameter: (() {
        final guardedValue = map['isConfigurationParameter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

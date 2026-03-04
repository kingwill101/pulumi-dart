// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the output of a function.
class FunctionOutput {
  /// The (Azure Stream Analytics supported) data type of the function output. A list of valid Azure Stream Analytics data types are described at https://msdn.microsoft.com/en-us/library/azure/dn835065.aspx
  final pulumi.Input<String>? dataType;

  /// Creates a new [FunctionOutput].
  /// [dataType] The (Azure Stream Analytics supported) data type of the function output. A list of valid Azure Stream Analytics data types are described at https://msdn.microsoft.com/en-us/library/azure/dn835065.aspx
  FunctionOutput({this.dataType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dataType': ?dataType};
  }

  factory FunctionOutput.fromMap(Map<String, dynamic> map) {
    return FunctionOutput(
      dataType: (() {
        final guardedValue = map['dataType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

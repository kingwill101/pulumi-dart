// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_operation_provision_input_variable.dart';

class UnitOperationProvision {
  /// Set of input variables. Maximum 100. (optional)
  /// Structure is documented below.
  final pulumi.Input<List<UnitOperationProvisionInputVariable>>? inputVariables;
  /// Reference to the Release object to use for the Unit. (optional).
  final pulumi.Input<String>? release;

  /// Creates a new [UnitOperationProvision].
  /// [inputVariables] Set of input variables. Maximum 100. (optional)
  /// [release] Reference to the Release object to use for the Unit. (optional).
  UnitOperationProvision({
    this.inputVariables,
    this.release,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputVariables': ?pulumi.Input.mapOptionalInputValue<List<UnitOperationProvisionInputVariable>, List<Map<String, dynamic>>>(inputVariables, (value) => pulumi.Input.encodeList<UnitOperationProvisionInputVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'release': ?release,
    };
  }

  factory UnitOperationProvision.fromMap(Map<String, dynamic> map) {
    return UnitOperationProvision(
      inputVariables: (() { final guardedValue = map['inputVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UnitOperationProvisionInputVariable>(guardedValue, (value) => UnitOperationProvisionInputVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      release: (() { final guardedValue = map['release']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


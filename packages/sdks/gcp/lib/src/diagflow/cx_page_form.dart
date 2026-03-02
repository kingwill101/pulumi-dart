// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_form_parameter.dart';

class CxPageForm {
  /// Parameters to collect from the user.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageFormParameter>>? parameters;

  /// Creates a new [CxPageForm].
  /// [parameters] Parameters to collect from the user.
  CxPageForm({
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<CxPageFormParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<CxPageFormParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CxPageForm.fromMap(Map<String, dynamic> map) {
    return CxPageForm(
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<CxPageFormParameter>(map['parameters']!, (value) => CxPageFormParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


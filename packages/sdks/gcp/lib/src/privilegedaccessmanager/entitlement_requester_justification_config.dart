// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntitlementRequesterJustificationConfig {
  /// The justification is not mandatory but can be provided in any of the supported formats.
  final pulumi.Input<Map<String, dynamic>>? notMandatory;
  /// The requester has to provide a justification in the form of free flowing text.
  final pulumi.Input<Map<String, dynamic>>? unstructured;

  /// Creates a new [EntitlementRequesterJustificationConfig].
  /// [notMandatory] The justification is not mandatory but can be provided in any of the supported formats.
  /// [unstructured] The requester has to provide a justification in the form of free flowing text.
  const EntitlementRequesterJustificationConfig({
    this.notMandatory,
    this.unstructured,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notMandatory': ?notMandatory,
      'unstructured': ?unstructured,
    };
  }

  factory EntitlementRequesterJustificationConfig.fromMap(Map<String, dynamic> map) {
    return EntitlementRequesterJustificationConfig(
      notMandatory: (() { final guardedValue = map['notMandatory']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      unstructured: (() { final guardedValue = map['unstructured']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEntitlementRequesterJustificationConfig {
  /// The justification is not mandatory but can be provided in any of the supported formats.
  final pulumi.Input<List<Map<String, dynamic>>> notMandatories;

  /// The requester has to provide a justification in the form of free flowing text.
  final pulumi.Input<List<Map<String, dynamic>>> unstructureds;

  /// Creates a new [GetEntitlementRequesterJustificationConfig].
  /// [notMandatories] The justification is not mandatory but can be provided in any of the supported formats.
  /// [unstructureds] The requester has to provide a justification in the form of free flowing text.
  GetEntitlementRequesterJustificationConfig({
    required this.notMandatories,
    required this.unstructureds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notMandatories': notMandatories,
      'unstructureds': unstructureds,
    };
  }

  factory GetEntitlementRequesterJustificationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEntitlementRequesterJustificationConfig(
      notMandatories: pulumi.Input.fromValue(
        (map['notMandatories'] as List).cast<Map<String, dynamic>>(),
      ),
      unstructureds: pulumi.Input.fromValue(
        (map['unstructureds'] as List).cast<Map<String, dynamic>>(),
      ),
    );
  }
}

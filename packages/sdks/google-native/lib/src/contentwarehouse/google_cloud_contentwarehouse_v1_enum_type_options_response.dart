// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configurations for an enum/categorical property.
class GoogleCloudContentwarehouseV1EnumTypeOptionsResponse {
  /// List of possible enum values.
  final pulumi.Input<List<String>> possibleValues;
  /// Make sure the Enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  final pulumi.Input<bool> validationCheckDisabled;

  /// Creates a new [GoogleCloudContentwarehouseV1EnumTypeOptionsResponse].
  /// [possibleValues] List of possible enum values.
  /// [validationCheckDisabled] Make sure the Enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  GoogleCloudContentwarehouseV1EnumTypeOptionsResponse({
    required this.possibleValues,
    required this.validationCheckDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'possibleValues': possibleValues,
      'validationCheckDisabled': validationCheckDisabled,
    };
  }

  factory GoogleCloudContentwarehouseV1EnumTypeOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1EnumTypeOptionsResponse(
      possibleValues: ((map['possibleValues'] as List).cast<String>()).input(),
      validationCheckDisabled: (map['validationCheckDisabled'] as bool).input(),
    );
  }
}


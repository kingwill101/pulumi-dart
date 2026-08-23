// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_template_file_validator_response.dart';

/// Configuration options and list of validations to be performed on the resulting image.
class ImageTemplatePropertiesResponseValidate {
  /// If validation fails and this field is set to false, output image(s) will not be distributed. This is the default behavior. If validation fails and this field is set to true, output image(s) will still be distributed. Please use this option with caution as it may result in bad images being distributed for use. In either case (true or false), the end to end image run will be reported as having failed in case of a validation failure. [Note: This field has no effect if validation succeeds.]
  final pulumi.Input<bool>? continueDistributeOnFailure;
  /// List of validations to be performed.
  final pulumi.Input<List<ImageTemplateFileValidatorResponse>>? inVMValidations;
  /// If this field is set to true, the image specified in the 'source' section will directly be validated. No separate build will be run to generate and then validate a customized image.
  final pulumi.Input<bool>? sourceValidationOnly;

  /// Creates a new [ImageTemplatePropertiesResponseValidate].
  /// [continueDistributeOnFailure] If validation fails and this field is set to false, output image(s) will not be distributed. This is the default behavior. If validation fails and this field is set to true, output image(s) will still be distributed. Please use this option with caution as it may result in bad images being distributed for use. In either case (true or false), the end to end image run will be reported as having failed in case of a validation failure. [Note: This field has no effect if validation succeeds.]
  /// [inVMValidations] List of validations to be performed.
  /// [sourceValidationOnly] If this field is set to true, the image specified in the 'source' section will directly be validated. No separate build will be run to generate and then validate a customized image.
  const ImageTemplatePropertiesResponseValidate({
    this.continueDistributeOnFailure,
    this.inVMValidations,
    this.sourceValidationOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueDistributeOnFailure': ?continueDistributeOnFailure,
      'inVMValidations': ?pulumi.Input.mapOptionalInputValue<List<ImageTemplateFileValidatorResponse>, List<Map<String, dynamic>>>(inVMValidations, (value) => pulumi.Input.encodeList<ImageTemplateFileValidatorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceValidationOnly': ?sourceValidationOnly,
    };
  }

  factory ImageTemplatePropertiesResponseValidate.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesResponseValidate(
      continueDistributeOnFailure: (() { final guardedValue = map['continueDistributeOnFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inVMValidations: (() { final guardedValue = map['inVMValidations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageTemplateFileValidatorResponse>(guardedValue, (value) => ImageTemplateFileValidatorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceValidationOnly: (() { final guardedValue = map['sourceValidationOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

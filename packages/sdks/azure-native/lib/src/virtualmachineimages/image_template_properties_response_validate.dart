// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_template_file_validator_response.dart';

/// Configuration options and list of validations to be performed on the resulting image.
class ImageTemplatePropertiesResponseValidate {
  /// If validation fails and this field is set to false, output image(s) will not be distributed. This is the default behavior. If validation fails and this field is set to true, output image(s) will still be distributed. Please use this option with caution as it may result in bad images being distributed for use. In either case (true or false), the end to end image run will be reported as having failed in case of a validation failure. [Note: This field has no effect if validation succeeds.]
  final bool? continueDistributeOnFailure;
  /// List of validations to be performed.
  final List<ImageTemplateFileValidatorResponse>? inVMValidations;
  /// If this field is set to true, the image specified in the 'source' section will directly be validated. No separate build will be run to generate and then validate a customized image.
  final bool? sourceValidationOnly;

  /// Creates a new [ImageTemplatePropertiesResponseValidate].
  /// [continueDistributeOnFailure] If validation fails and this field is set to false, output image(s) will not be distributed. This is the default behavior. If validation fails and this field is set to true, output image(s) will still be distributed. Please use this option with caution as it may result in bad images being distributed for use. In either case (true or false), the end to end image run will be reported as having failed in case of a validation failure. [Note: This field has no effect if validation succeeds.]
  /// [inVMValidations] List of validations to be performed.
  /// [sourceValidationOnly] If this field is set to true, the image specified in the 'source' section will directly be validated. No separate build will be run to generate and then validate a customized image.
  ImageTemplatePropertiesResponseValidate({
    this.continueDistributeOnFailure,
    this.inVMValidations,
    this.sourceValidationOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueDistributeOnFailure': ?continueDistributeOnFailure,
      'inVMValidations': ?inVMValidations == null ? null : pulumi.Input.encodeList<ImageTemplateFileValidatorResponse, Map<String, dynamic>>(inVMValidations!, (value) => value.toMap()),
      'sourceValidationOnly': ?sourceValidationOnly,
    };
  }

  factory ImageTemplatePropertiesResponseValidate.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesResponseValidate(
      continueDistributeOnFailure: map['continueDistributeOnFailure'] == null ? null : map['continueDistributeOnFailure'] as bool,
      inVMValidations: map['inVMValidations'] == null ? null : pulumi.Input.decodeList<ImageTemplateFileValidatorResponse>(map['inVMValidations'], (value) => ImageTemplateFileValidatorResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceValidationOnly: map['sourceValidationOnly'] == null ? null : map['sourceValidationOnly'] as bool,
    );
  }
}


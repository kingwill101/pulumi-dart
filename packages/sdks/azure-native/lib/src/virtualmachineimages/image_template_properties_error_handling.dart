// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error handling options upon a build failure
class ImageTemplatePropertiesErrorHandling {
  /// If there is a customizer error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a customizer error and this field is set to 'abort', the build VM will be preserved.
  final pulumi.Input<dynamic>? onCustomizerError;
  /// If there is a validation error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a validation error and this field is set to 'abort', the build VM will be preserved.
  final pulumi.Input<dynamic>? onValidationError;

  /// Creates a new [ImageTemplatePropertiesErrorHandling].
  /// [onCustomizerError] If there is a customizer error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a customizer error and this field is set to 'abort', the build VM will be preserved.
  /// [onValidationError] If there is a validation error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a validation error and this field is set to 'abort', the build VM will be preserved.
  ImageTemplatePropertiesErrorHandling({
    pulumi.Input<dynamic>? onCustomizerError,
    pulumi.Input<dynamic>? onValidationError,
  }) : onCustomizerError = onCustomizerError ?? pulumi.Input.fromValue('cleanup'), onValidationError = onValidationError ?? pulumi.Input.fromValue('cleanup');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onCustomizerError': ?onCustomizerError,
      'onValidationError': ?onValidationError,
    };
  }

  factory ImageTemplatePropertiesErrorHandling.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesErrorHandling(
      onCustomizerError: (() { final guardedValue = map['onCustomizerError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      onValidationError: (() { final guardedValue = map['onValidationError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

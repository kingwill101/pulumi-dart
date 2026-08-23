// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error handling options upon a build failure
class ImageTemplatePropertiesResponseErrorHandling {
  /// If there is a customizer error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a customizer error and this field is set to 'abort', the build VM will be preserved.
  final pulumi.Input<String>? onCustomizerError;
  /// If there is a validation error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a validation error and this field is set to 'abort', the build VM will be preserved.
  final pulumi.Input<String>? onValidationError;

  /// Creates a new [ImageTemplatePropertiesResponseErrorHandling].
  /// [onCustomizerError] If there is a customizer error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a customizer error and this field is set to 'abort', the build VM will be preserved.
  /// [onValidationError] If there is a validation error and this field is set to 'cleanup', the build VM and associated network resources will be cleaned up. This is the default behavior. If there is a validation error and this field is set to 'abort', the build VM will be preserved.
  const ImageTemplatePropertiesResponseErrorHandling({
    this.onCustomizerError,
    this.onValidationError,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onCustomizerError': ?onCustomizerError,
      'onValidationError': ?onValidationError,
    };
  }

  factory ImageTemplatePropertiesResponseErrorHandling.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesResponseErrorHandling(
      onCustomizerError: (() { final guardedValue = map['onCustomizerError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onValidationError: (() { final guardedValue = map['onValidationError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

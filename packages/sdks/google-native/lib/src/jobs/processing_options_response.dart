// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input only. Options for job processing.
class ProcessingOptionsResponse {
  /// Optional. If set to `true`, the service does not attempt to resolve a more precise address for the job.
  final pulumi.Input<bool> disableStreetAddressResolution;
  /// Optional. Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation is not disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  final pulumi.Input<String> htmlSanitization;

  /// Creates a new [ProcessingOptionsResponse].
  /// [disableStreetAddressResolution] Optional. If set to `true`, the service does not attempt to resolve a more precise address for the job.
  /// [htmlSanitization] Optional. Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation is not disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  const ProcessingOptionsResponse({
    required this.disableStreetAddressResolution,
    required this.htmlSanitization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableStreetAddressResolution': disableStreetAddressResolution,
      'htmlSanitization': htmlSanitization,
    };
  }

  factory ProcessingOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ProcessingOptionsResponse(
      disableStreetAddressResolution: pulumi.Input.fromValue(map['disableStreetAddressResolution'] as bool),
      htmlSanitization: pulumi.Input.fromValue(map['htmlSanitization'] as String),
    );
  }
}


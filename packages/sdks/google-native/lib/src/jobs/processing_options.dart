// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'processing_options_html_sanitization.dart';

/// Input only. Options for job processing.
class ProcessingOptions {
  /// Optional. If set to `true`, the service does not attempt to resolve a more precise address for the job.
  final pulumi.Input<bool>? disableStreetAddressResolution;
  /// Optional. Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation is not disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  final pulumi.Input<ProcessingOptionsHtmlSanitization>? htmlSanitization;

  /// Creates a new [ProcessingOptions].
  /// [disableStreetAddressResolution] Optional. If set to `true`, the service does not attempt to resolve a more precise address for the job.
  /// [htmlSanitization] Optional. Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation is not disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  ProcessingOptions({
    this.disableStreetAddressResolution,
    this.htmlSanitization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableStreetAddressResolution': ?disableStreetAddressResolution,
      'htmlSanitization': ?pulumi.Input.mapOptionalInputValue<ProcessingOptionsHtmlSanitization, String>(htmlSanitization, (value) => value.value),
    };
  }

  factory ProcessingOptions.fromMap(Map<String, dynamic> map) {
    return ProcessingOptions(
      disableStreetAddressResolution: map['disableStreetAddressResolution'] == null ? null : (map['disableStreetAddressResolution'] as bool).input(),
      htmlSanitization: map['htmlSanitization'] == null ? null : (ProcessingOptionsHtmlSanitization.fromValue(map['htmlSanitization'] as String)).input(),
    );
  }
}


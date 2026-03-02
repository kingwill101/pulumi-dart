// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'processing_options_html_sanitization_jobs_v4.dart';

/// Options for job processing.
class ProcessingOptionsJobsV4 {
  /// If set to `true`, the service does not attempt to resolve a more precise address for the job.
  final pulumi.Input<bool>? disableStreetAddressResolution;
  /// Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation isn't disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  final pulumi.Input<ProcessingOptionsHtmlSanitizationJobsV4>? htmlSanitization;

  /// Creates a new [ProcessingOptionsJobsV4].
  /// [disableStreetAddressResolution] If set to `true`, the service does not attempt to resolve a more precise address for the job.
  /// [htmlSanitization] Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation isn't disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  ProcessingOptionsJobsV4({
    this.disableStreetAddressResolution,
    this.htmlSanitization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableStreetAddressResolution': ?disableStreetAddressResolution,
      'htmlSanitization': ?pulumi.Input.mapOptionalInputValue<ProcessingOptionsHtmlSanitizationJobsV4, String>(htmlSanitization, (value) => value.value),
    };
  }

  factory ProcessingOptionsJobsV4.fromMap(Map<String, dynamic> map) {
    return ProcessingOptionsJobsV4(
      disableStreetAddressResolution: map['disableStreetAddressResolution'] == null ? null : (map['disableStreetAddressResolution']! as bool).input(),
      htmlSanitization: map['htmlSanitization'] == null ? null : (ProcessingOptionsHtmlSanitizationJobsV4.fromValue(map['htmlSanitization']! as String)).input(),
    );
  }
}


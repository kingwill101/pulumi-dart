// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for job processing.
class ProcessingOptionsResponseJobsV4 {
  /// If set to `true`, the service does not attempt to resolve a more precise address for the job.
  final pulumi.Input<bool> disableStreetAddressResolution;
  /// Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation isn't disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  final pulumi.Input<String> htmlSanitization;

  /// Creates a new [ProcessingOptionsResponseJobsV4].
  /// [disableStreetAddressResolution] If set to `true`, the service does not attempt to resolve a more precise address for the job.
  /// [htmlSanitization] Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation isn't disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  ProcessingOptionsResponseJobsV4({
    required this.disableStreetAddressResolution,
    required this.htmlSanitization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableStreetAddressResolution': disableStreetAddressResolution,
      'htmlSanitization': htmlSanitization,
    };
  }

  factory ProcessingOptionsResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return ProcessingOptionsResponseJobsV4(
      disableStreetAddressResolution: pulumi.Input.fromValue(map['disableStreetAddressResolution'] as bool),
      htmlSanitization: pulumi.Input.fromValue(map['htmlSanitization'] as String),
    );
  }
}


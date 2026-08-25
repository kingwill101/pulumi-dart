// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateConfigMuxStreamSegmentSettings {
  /// Duration of the segments in seconds. The default is `6.0s`.
  final pulumi.Input<String?>? segmentDuration;

  /// Creates a new [JobTemplateConfigMuxStreamSegmentSettings].
  /// [segmentDuration] Duration of the segments in seconds. The default is `6.0s`.
  const JobTemplateConfigMuxStreamSegmentSettings({
    this.segmentDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'segmentDuration': ?segmentDuration,
    };
  }

  factory JobTemplateConfigMuxStreamSegmentSettings.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigMuxStreamSegmentSettings(
      segmentDuration: (() { final guardedValue = map['segmentDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

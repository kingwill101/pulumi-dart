// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_config_elementary_stream_video_stream_h264.dart';

class JobTemplateConfigElementaryStreamVideoStream {
  /// H264 codec settings
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nested_config_elementary_streams_video_stream_h264"&gt;&lt;/a&gt;The `h264` block supports:
  final pulumi.Input<JobTemplateConfigElementaryStreamVideoStreamH264>? h264;

  /// Creates a new [JobTemplateConfigElementaryStreamVideoStream].
  /// [h264] H264 codec settings
  JobTemplateConfigElementaryStreamVideoStream({
    this.h264,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'h264': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfigElementaryStreamVideoStreamH264, Map<String, dynamic>>(h264, (value) => value.toMap()),
    };
  }

  factory JobTemplateConfigElementaryStreamVideoStream.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigElementaryStreamVideoStream(
      h264: (() { final guardedValue = map['h264']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobTemplateConfigElementaryStreamVideoStreamH264.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


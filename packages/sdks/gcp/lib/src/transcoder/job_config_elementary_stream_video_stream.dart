// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_elementary_stream_video_stream_h264.dart';

class JobConfigElementaryStreamVideoStream {
  /// H264 codec settings
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_config_elementary_streams_video_stream_h264"></a>The `h264` block supports:
  final pulumi.Input<JobConfigElementaryStreamVideoStreamH264>? h264;

  /// Creates a new [JobConfigElementaryStreamVideoStream].
  /// [h264] H264 codec settings
  JobConfigElementaryStreamVideoStream({
    this.h264,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'h264': ?pulumi.Input.mapOptionalInputValue<JobConfigElementaryStreamVideoStreamH264, Map<String, dynamic>>(h264, (value) => value.toMap()),
    };
  }

  factory JobConfigElementaryStreamVideoStream.fromMap(Map<String, dynamic> map) {
    return JobConfigElementaryStreamVideoStream(
      h264: map['h264'] == null ? null : (JobConfigElementaryStreamVideoStreamH264.fromMap((map['h264']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


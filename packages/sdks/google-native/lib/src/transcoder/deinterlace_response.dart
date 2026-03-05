// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bwdif_config_response.dart';
import 'yadif_config_response.dart';

/// Deinterlace configuration for input video.
class DeinterlaceResponse {
  /// Specifies the Bob Weaver Deinterlacing Filter Configuration.
  final pulumi.Input<BwdifConfigResponse> bwdif;
  /// Specifies the Yet Another Deinterlacing Filter Configuration.
  final pulumi.Input<YadifConfigResponse> yadif;

  /// Creates a new [DeinterlaceResponse].
  /// [bwdif] Specifies the Bob Weaver Deinterlacing Filter Configuration.
  /// [yadif] Specifies the Yet Another Deinterlacing Filter Configuration.
  DeinterlaceResponse({
    required this.bwdif,
    required this.yadif,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bwdif': pulumi.Input.mapInputValue<BwdifConfigResponse, Map<String, dynamic>>(bwdif, (value) => value.toMap()),
      'yadif': pulumi.Input.mapInputValue<YadifConfigResponse, Map<String, dynamic>>(yadif, (value) => value.toMap()),
    };
  }

  factory DeinterlaceResponse.fromMap(Map<String, dynamic> map) {
    return DeinterlaceResponse(
      bwdif: pulumi.Input.fromValue(BwdifConfigResponse.fromMap((map['bwdif']! as Map).cast<String, dynamic>())),
      yadif: pulumi.Input.fromValue(YadifConfigResponse.fromMap((map['yadif']! as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blue_green_info_response.dart';

/// UpdateInfo contains resource (instance groups, etc), status and other intermediate information relevant to a node pool upgrade.
class UpdateInfoResponse {
  /// Information of a blue-green upgrade.
  final pulumi.Input<BlueGreenInfoResponse> blueGreenInfo;

  /// Creates a new [UpdateInfoResponse].
  /// [blueGreenInfo] Information of a blue-green upgrade.
  const UpdateInfoResponse({
    required this.blueGreenInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreenInfo': pulumi.Input.mapInputValue<BlueGreenInfoResponse, Map<String, dynamic>>(blueGreenInfo, (value) => value.toMap()),
    };
  }

  factory UpdateInfoResponse.fromMap(Map<String, dynamic> map) {
    return UpdateInfoResponse(
      blueGreenInfo: pulumi.Input.fromValue(BlueGreenInfoResponse.fromMap((map['blueGreenInfo']! as Map).cast<String, dynamic>())),
    );
  }
}


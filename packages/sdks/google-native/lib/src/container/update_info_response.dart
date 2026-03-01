// ignore_for_file: unused_element, unnecessary_cast

import 'blue_green_info_response.dart';

/// UpdateInfo contains resource (instance groups, etc), status and other intermediate information relevant to a node pool upgrade.
class UpdateInfoResponse {
  /// Information of a blue-green upgrade.
  final BlueGreenInfoResponse blueGreenInfo;

  /// Creates a new [UpdateInfoResponse].
  /// [blueGreenInfo] Information of a blue-green upgrade.
  UpdateInfoResponse({
    required this.blueGreenInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreenInfo': blueGreenInfo.toMap(),
    };
  }

  factory UpdateInfoResponse.fromMap(Map<String, dynamic> map) {
    return UpdateInfoResponse(
      blueGreenInfo: BlueGreenInfoResponse.fromMap((map['blueGreenInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


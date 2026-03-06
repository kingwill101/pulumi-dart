// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blue_green_info_response_container_v1beta1.dart';

/// UpdateInfo contains resource (instance groups, etc), status and other intermediate information relevant to a node pool upgrade.
class UpdateInfoResponseContainerV1beta1 {
  /// Information of a blue-green upgrade.
  final pulumi.Input<BlueGreenInfoResponseContainerV1beta1> blueGreenInfo;

  /// Creates a new [UpdateInfoResponseContainerV1beta1].
  /// [blueGreenInfo] Information of a blue-green upgrade.
  const UpdateInfoResponseContainerV1beta1({
    required this.blueGreenInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreenInfo': pulumi.Input.mapInputValue<BlueGreenInfoResponseContainerV1beta1, Map<String, dynamic>>(blueGreenInfo, (value) => value.toMap()),
    };
  }

  factory UpdateInfoResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return UpdateInfoResponseContainerV1beta1(
      blueGreenInfo: pulumi.Input.fromValue(BlueGreenInfoResponseContainerV1beta1.fromMap((map['blueGreenInfo']! as Map).cast<String, dynamic>())),
    );
  }
}

